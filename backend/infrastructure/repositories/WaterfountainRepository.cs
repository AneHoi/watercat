using System.Data.SqlTypes;
using Dapper;
using infrastructure.Models;
using Npgsql;

namespace infrastructure;

public class WaterfountainRepository
{
    
    private readonly NpgsqlDataSource _dataSource;
    public WaterfountainRepository(NpgsqlDataSource dataSource)
    {
        _dataSource = dataSource;
    }


    public WaterFountainstate getCurrentWaterFountainstate()
    {
        try
        {
            string query = @"
            SELECT ison
            FROM currentstate
            WHERE deviceid = 1
            ";
            
            // Execute the query using Dapper and retrieve the user information
            using (var connection = _dataSource.OpenConnection())
            {
                var state = connection.QueryFirstOrDefault<WaterFountainstate>(query);
                return state;
            }
            
        }
        catch (Exception ex)
        {
            // Handle exceptions, maybe log them
            throw new SqlTypeException("Failed to retrieve the water fountains state", ex);
        }
    }
}