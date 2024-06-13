/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

/**
 *
 * @author Lenovo
 */
import java.sql.*;
import java.sql.SQLException;
import java.util.*;
import com.model.Car;

public class CarDAO {
    Connection connection = null;
    private String jdbcURL = "jdbc:mysql://localhost:3306/carshop";
    private String jdbcUsername = "root";
    private String jdbcPassword = "admin";
    
    private static final String INSERT_CARS_SQL = "INSERT INTO carpricelist(brand, model, cylinder, price) VALUES (?, ?, ?, ?);";
    private static final String SELECT_CAR_BY_ID = "select car_id, brand, model, cylinder, price from carpricelist where car_id=?";
    private static final String SELECT_ALL_CARS = "select * from carpricelist";
    private static final String DELETE_CARS_SQL = "delete from carpricelist where car_id = ?;";
    private static final String UPDATE_CARS_SQL = "update carpricelist set brand = ?,model= ?, cylinder= ?, price= ? where car_id = ?;";
    
    public CarDAO(){}
    
        protected Connection getConnection(){
            Connection connection = null;
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
                System.out.println("Database connected!");
            }catch(SQLException e){
                e.printStackTrace();
            }catch(ClassNotFoundException e){
                e.printStackTrace();
            }
            return connection;
        }
        
    public void insertCar(Car car) throws SQLException{
        System.out.println(INSERT_CARS_SQL);
        try(Connection connection = getConnection(); PreparedStatement preparedStatement = 
                connection.prepareStatement(INSERT_CARS_SQL)){
            preparedStatement.setString(1, car.getBrand());
            preparedStatement.setString(2, car.getModel());
            preparedStatement.setInt(3, car.getCylinder());
            preparedStatement.setDouble(4, car.getPrice());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }catch(SQLException e){
            printSQLException(e);
                }
    }
    
    public Car selectCar(int id){
        Car car = null;
        // Step 1: Establishing a Connection
        try(Connection connection = getConnection();
            // Step 2: Create a statement using connection 
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CAR_BY_ID);){
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            
            while(rs.next()){
                String brand = rs.getString("brand");
                String model = rs.getString("model");
                int cylinder = rs.getInt("cylinder");
                double price = rs.getDouble("price");
                car = new Car(id, brand, model, cylinder, price);
            }
        }catch (SQLException e){
                printSQLException(e);
                }
        return car;
    }
        
    public List < Car > selectAllCars(){
        List <Car> cars = new ArrayList <>();
        try (Connection connection = getConnection();
              
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CARS);){
             System.out.println(preparedStatement);
             ResultSet rs = preparedStatement.executeQuery();
             
             while(rs.next()){
                 int id = rs.getInt("car_id");
                 String brand = rs.getString("brand");
                 String model = rs.getString("model");
                 int cylinder = rs.getInt("cylinder");
                 double price = rs.getDouble("price");
                 cars.add(new Car(id, brand, model, cylinder, price));
             }
        }catch(SQLException e){
            printSQLException(e);
        }
        return cars;      
    }
    
    public boolean deleteCar(int id) throws SQLException{
        boolean rowDeleted;
        try(Connection connection = getConnection(); PreparedStatement statement = 
                connection.prepareStatement(DELETE_CARS_SQL);){
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
    public boolean updateCar(Car car) throws SQLException{
        boolean rowUpdated;
        try(Connection connection = getConnection(); PreparedStatement statement = 
                connection.prepareStatement(UPDATE_CARS_SQL);){
            statement.setString(1, car.getBrand());
            statement.setString(2, car.getModel());
            statement.setInt(3, car.getCylinder());
            statement.setDouble(4, car.getPrice());
            statement.setInt(5, car.getCar_id());
            
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    
    private void printSQLException(SQLException ex){
        for(Throwable e: ex){
            if(e instanceof SQLException){
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while(t != null){
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
    
}
