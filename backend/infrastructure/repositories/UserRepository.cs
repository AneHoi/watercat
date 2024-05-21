using System.Data.SqlTypes;
using Dapper;
using infrastructure.Models;
using Npgsql;

namespace infrastructure;

//TODO fix to postgress
public class UserRepository
{
    private readonly NpgsqlDataSource _dataSource;

    public UserRepository(NpgsqlDataSource dataSource)
    {
        _dataSource = dataSource;
    }
    public void TestDatabaseConnection()
    {
        var connectionString = Utilities.ProperlyFormattedConnectionString;
        try
        {
            using (var connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();
                Console.WriteLine("Connection to database succeeded!");
                var query = "SELECT * FROM users";
                var result = connection.ExecuteScalar(query);
                Console.WriteLine("Test query executed successfully: " + result);

                Console.WriteLine("Test query executed successfully: " + result);
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Database connection failed: {ex.Message}\n{ex.StackTrace}");
        }
    }

    public IEnumerable<Emailform>GetUsers()
    {
        try
        {
            // Define the query using joins to fetch all information related to the user
            string query = @"
            SELECT *
            FROM Users 
            ";

            using (var connection = _dataSource.OpenConnection())
            {
                var user = connection.Query<Emailform>(query);
                return user;
            }
            
            // Execute the query using Dapper and retrieve the user information
            
        }
        catch (Exception ex)
        {
            // Handle exceptions, maybe log them
            throw new SqlTypeException("Failed to retrieve users", ex);
        }
    }


    public EndUser Create(UserRegisterDto dto)
    {
        try
        {
            using var connection = _dataSource.OpenConnection();
            // create user in User-tabel
            string insertUserQuery = "INSERT INTO Users (Email) VALUES (@Email);" +
                                     "SELECT id FROM Users WHERE email = @Email;";
            int userId = connection.ExecuteScalar<int>(insertUserQuery, new { Email = dto.Email });

            // Opret brugeroplysninger i UserInformation-tabellen
            string insertUserInfoQuery =
                "INSERT INTO UserInformation (UserId, FirstName, LastName) VALUES (@UserId, @FirstName, @LastName);";
            connection.Execute(insertUserInfoQuery,
                new { UserId = userId, FirstName = dto.FirstName, LastName = dto.LastName });

            // Opret kontaktoplysninger i ContactInformation-tabellen
            string insertContactInfoQuery =
                "INSERT INTO ContactInformation (UserId, CountryCode, Number) VALUES (@UserId, @CountryCode, @Number);";
            connection.Execute(insertContactInfoQuery,
                new { UserId = userId, CountryCode = dto.CountryCode, Number = dto.Phone });

            // Returns EndUser-object
            return new EndUser
            {
                Id = userId,
                Email = dto.Email
            };
        }
        catch (Exception ex)
        {
            throw new SqlTypeException("Could not create user in db.", ex);
        }
    }

    public EndUser GetUserByEmail(string requestEmail)
    {
        try
        {
            // Define the query using joins to fetch all information related to the user
            string query = @"
            SELECT Email
            FROM Users 
            WHERE Email = @Email";

            using (var connection = _dataSource.OpenConnection())
            {
                var user = connection.QueryFirstOrDefault<Emailform>(query, new { Email = requestEmail });
                return null;
            }
            
            // Execute the query using Dapper and retrieve the user information
            
        }
        catch (Exception ex)
        {
            // Handle exceptions, maybe log them
            throw new SqlTypeException("Failed to retrieve user by email", ex);
        }
    }

    public bool DoesUserExists(string dtoEmail)
    {
        using var connection = _dataSource.OpenConnection();

        try
        {
            connection.Open();
            string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email";

            int count = connection.ExecuteScalar<int>(query, new { Email = dtoEmail });

            // returns true if user exists
            return count > 0;
        }
        catch (Exception ex)
        {
            throw new SqlTypeException("failed to search for User", ex);
        }
    }

    public EndUser GetUserById(int userId)
    {
        using var connection = _dataSource.OpenConnection();
        try
        {
            connection.Open();
            // Definér forespørgslen ved hjælp af joins til at hente alle oplysninger relateret til brugeren
            string query = @"
        SELECT u.Id, u.Email, ui.FirstName, ui.LastName, ci.CountryCode, ci.Number
        FROM Users u
        LEFT JOIN UserInformation ui ON u.Id = ui.UserId
        LEFT JOIN ContactInformation ci ON u.Id = ci.UserId
        WHERE u.Id = @UserId";

            // Udfør forespørgslen ved hjælp af Dapper og hent brugeroplysningerne
            var user = connection.QueryFirstOrDefault<EndUser>(query, new { UserId = userId });

            return user;
        }
        catch (Exception ex)
        {
            // Håndter undtagelser, måske log dem
            throw new SqlTypeException("Fejl ved hentning af bruger efter id", ex);
        }
    }

    public UserNameInformationDto changeUserName(int id, string firstName, string lastName)
    {
        using var connection = _dataSource.OpenConnection();

        try
        {
            connection.Open();
            string query = @"
                UPDATE UserInformation 
                SET FirstName = @firstName, LastName = @lastname 
                WHERE UserId = @id;
                SELECT FirstName, LastName
                FROM UserInformation
                WHERE UserId = @id;
            ";
            UserNameInformationDto updatedUserName = connection.QueryFirst<UserNameInformationDto>(query, new
            {
                firstName = firstName, lastName = lastName, id = id
            });

            return updatedUserName;
        }
        catch (Exception e)
        {
            throw new SqlTypeException("Failed to update the name of the user", e);
        }
    }

    public string changePhoneNumber(int userId, string phoneNumber)
    {
        using var connection = _dataSource.OpenConnection();

        try
        {
            connection.Open();
            string query = @"
                UPDATE ContactInformation 
                SET Number = @number 
                WHERE UserId = @userId;
                SELECT Number
                FROM ContactInformation
                WHERE UserId = @userId;
            ";
            string updatedNumber = connection.QueryFirst<string>(query, new
            {
                number = phoneNumber, userId = userId
            });

            return updatedNumber;
        }
        catch (Exception e)
        {
            throw new SqlTypeException("Failed to update the name of the user", e);
        }
    }

    public string changeEmail(int userId, string oldEmail, string newEmail)
    {
        using var connection = _dataSource.OpenConnection();

        try
        {
            connection.Open();
            string query = @"
                UPDATE Users 
                SET Email = @newEmail 
                WHERE Id = @userId AND Email =@oldEmail;
                SELECT Email
                FROM Users
                WHERE Id = @userId;
            ";
            string updatedEmail = connection.QueryFirst<string>(query, new
            {
                newEmail = newEmail, userId = userId, oldEmail = oldEmail,
            });

            return updatedEmail;
        }
        catch (Exception e)
        {
            throw new SqlTypeException("Failed to update the email", e);
        }
    }
}

public class Emailform
{
    public string email { get; set; }
}