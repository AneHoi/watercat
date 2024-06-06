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


    public void setWaterFountainState(WaterFountainstate waterFountainstate)
    {
        try
        {
            string query = @"
                INSERT INTO historystatetable (deviceid, temperatur, ison, timestamp)
                VALUES (@deviceId, @temp, @ison, @timestamp);
                ";
            
            // Execute the query using Dapper and retrieve the user information
            using (var connection = _dataSource.OpenConnection())
            {
                connection.Execute(query, new {deviceId = waterFountainstate.deviceId, temp=waterFountainstate.temperatur, ison = waterFountainstate.ison, timestamp = waterFountainstate.TimeStamp});
            }
            
        }
        catch (Exception ex)
        {
            // Handle exceptions, maybe log them
            throw new SqlTypeException("Failed to save the water fountain state", ex);
        }
    }
    public WaterFountainstate getCurrentWaterFountainstate()
    {
        try
        {
            string query = @"
            SELECT *
            FROM historystatetable
            WHERE deviceid = 1
            ORDER BY timestamp DESC;
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