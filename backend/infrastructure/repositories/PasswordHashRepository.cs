using System.Data.SqlTypes;
using Dapper;
using infrastructure.Models;
using Npgsql;

namespace infrastructure;

//TODO fix to postgress
public class PasswordHashRepository
{
    
    private readonly NpgsqlDataSource _dataSource;

    public PasswordHashRepository(NpgsqlDataSource dataSource)
    {
        _dataSource = dataSource;
    }

    //TODO from an old project 
    public PasswordHash GetByEmail(string email)
    {
        const string sql = $@"
            SELECT 
                user_id as {nameof(PasswordHash.Id)},
                hash as {nameof(PasswordHash.Hash)},
                salt as {nameof(PasswordHash.Salt)},
                algorithm as {nameof(PasswordHash.Algorithm)}
            FROM watercat.password_hash
            JOIN watercat.users ON watercat.password_hash.user_id = users.id
            WHERE email = @email;
        ";
        using var connection = _dataSource.OpenConnection();
        return connection.QuerySingle<PasswordHash>(sql, new { email });
    }
    
    public bool Create(PasswordHash password)
    {
        
        using var connection = new MySqlConnection(_connectionString);
        try
        {
            connection.Open();

            string insertQuery = "INSERT INTO PasswordHash (UserId, Hash, Salt, Algorithm) VALUES (@UserId, @Hash, @Salt, @Algorithm)";
            
            connection.Execute(insertQuery, new { UserId = password.Id, Hash = password.Hash, Salt = password.Salt, Algorithm = password.Algorithm });

            return true;
        }
        catch (Exception ex)
        {
            throw new SqlTypeException("Failed to save PasswordHash", ex);
        }
    }
    
    public PasswordHash GetPasswordHashById(int userId)
    {
        using var connection = new MySqlConnection(_connectionString);
        try
        {
            connection.Open();
            // Define the query using joins to fetch all information related to the user
            string query = @"
            SELECT *
            FROM PasswordHash
            WHERE UserId = @UserId";

            // Execute the query using Dapper and retrieve the user information
            var pwHash = connection.QueryFirstOrDefault<PasswordHash>(query, new { UserId = userId });
            
            return pwHash;
        }
        catch (Exception ex)
        {
            // Handle exceptions, maybe log them
            throw new SqlTypeException("Failed to retrieve password hash by email", ex);
        }
    }
    
    // Method to test the database connection
    //todo should be deleted when other ways of testing is done
    public bool TestConnection()
    {
        using var connection = new MySqlConnection(_connectionString);
        try
        {
            connection.Open();
            
            return true; // Connection successful
        }
        catch (Exception e)
        {
         
            return false; // Connection failed
        }
    }

    public bool ReplacePassword(int userId, PasswordHash userPasswordInfo)
    {
        using (var connection = new MySqlConnection(_connectionString))
        {
            try
            {
                connection.Open();
                // Define the SQL query to update the password hash information
                string query = @"
            UPDATE PasswordHash
            SET Hash = @Hash, Salt = @Salt, Algorithm = @Algorithm
            WHERE UserId = @UserId";

                // Execute the query using Dapper to update the password information
                int rowsAffected = connection.Execute(query, new
                {
                    Hash = userPasswordInfo.Hash,
                    Salt = userPasswordInfo.Salt,
                    Algorithm = userPasswordInfo.Algorithm,
                    UserId = userId
                });

                // Return true if at least one row was affected, indicating successful update
                return rowsAffected > 0;
            }
            catch (Exception ex)
            {
                // Handle exceptions, maybe log them
                throw new SqlTypeException("Failed to replace password", ex);
            }
        }
    }
}