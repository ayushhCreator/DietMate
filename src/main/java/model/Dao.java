package model;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.User;
import model.User2;

public class Dao {
	private String driver="com.mysql.cj.jdbc.Driver";
	private String dbName="dietdb";
	private String url="jdbc:mysql://localhost:3306/"+dbName;
	private String dbname="root";
	private String dbpass="67890";
	//private String tbname="user";
	//private String tbname2="dietplan";
	Connection getConnect() throws ClassNotFoundException, SQLException {
		Class.forName(driver);
		return DriverManager.getConnection(url,dbname,dbpass);
}
	public int save(User u) throws ClassNotFoundException, SQLException {
		String sql="insert into user (name, email, pass, role) values(?,?,?,?)";
        Connection con=getConnect();
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, u.getName());
		ps.setString(2, u.getEmail());
		ps.setString(3, u.getPass());
		ps.setString(4, u.getRole());
		int a= ps.executeUpdate();
		con.close();
		return a;
	}
	public boolean checkemail(String email) throws SQLException, ClassNotFoundException {
		String sql="select * from user where email=?";
        Connection con=getConnect();
		PreparedStatement ps=con.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE, 
                ResultSet.CONCUR_UPDATABLE);
		ps.setString(1, email);
		ResultSet  rs= ps.executeQuery();
		
		if(rs.absolute(1))
		return true;
		
		con.close();
		return false;
	}
	
	//login credential
	public User log(String email, String pass) throws SQLException, ClassNotFoundException {
	    User user = null; // Initialize user object
	    String sql = "SELECT * FROM user WHERE email=? AND pass=?"; // SQL query
	    Connection con = getConnect(); // Get database connection
	    
	    // Use try-with-resources to ensure proper resource management
	    try (PreparedStatement ps = con.prepareStatement(sql)) {
	        ps.setString(1, email);
	        ps.setString(2, pass);
	        
	        try (ResultSet rs = ps.executeQuery()) {
	            // If a user is found, retrieve their role and create a User object
	            if (rs.next()) {
	                String role = rs.getString("role");
	                user = new User(email, pass, role); // Construct user with email, password, and role
	            }
	        }
	    } finally {
	        // Close the connection if it isn't null
	        if (con != null) {
	            con.close();
	        }
	    }
	    return user; // Return the User object (null if credentials are incorrect)
	}

	
	
	public void addPlan(User2 u2) throws ClassNotFoundException, SQLException{
		 String sql = "insert into dietplan (planname, protein, carbs, meal, fats) values (?, ?, ?, ?, ?)";
		 Connection con = getConnect();
		 PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, u2.getPlanname());
	        ps.setInt(2, u2.getProtein());
	        ps.setInt(3, u2.getCarbs());
	        ps.setInt(4, u2.getMeal());
	        ps.setInt(5, u2.getFats());
	        ps.executeUpdate();
	        ps.close();
	}
	
	//Show Diet Plan
	public ArrayList<User2> getAllList() throws ClassNotFoundException, SQLException {
	    String sql = "SELECT * FROM dietplan";
	    try (Connection con = getConnect();
	         PreparedStatement ps = con.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {
	        
	        ArrayList<User2> u = new ArrayList<>();
	        while (rs.next()) {
	            User2 o = new User2();
	            o.setId(rs.getInt(1));
	            o.setPlanname(rs.getString(2));
	            o.setProtein(rs.getInt(3));
	            o.setCarbs(rs.getInt(4));
	            o.setMeal(rs.getInt(5));
	            o.setFats(rs.getInt(6));
	            u.add(o);
	        }
	        return u;
	    }
	}

	
	//delete Diet Plan
	public int delete(int id) throws ClassNotFoundException, SQLException {
		int status=0;
		String sql="delete from dietplan where id=?";
		 Connection con=getConnect();
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,id);
			int a= ps.executeUpdate();
			con.close();
		return status;
	}
	
	//Update Dietplan
	public int update(User2 u) throws SQLException, ClassNotFoundException {
	    int status = 0;
	    String sql = "UPDATE dietplan SET planname = ?, protein = ?, carbs = ?, meal = ?, fats = ? WHERE id = ?";
	    Connection con = getConnect();
	    PreparedStatement preparedStatement = con.prepareStatement(sql);
	    preparedStatement.setString(1, u.getPlanname());
	    preparedStatement.setInt(2, u.getProtein());
	    preparedStatement.setInt(3, u.getCarbs());
	    preparedStatement.setInt(4, u.getMeal());
	    preparedStatement.setInt(5, u.getFats());
	    preparedStatement.setInt(6, u.getId());

	    status = preparedStatement.executeUpdate();

	    con.close();
	    return status;
	}

	//show All Users
	public ArrayList<User> getAllList2() throws ClassNotFoundException, SQLException {
	    String sql = "SELECT * FROM user";
	    try (Connection con = getConnect();
	         PreparedStatement ps = con.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {
	        
	        ArrayList<User> userList = new ArrayList<>();
	        while (rs.next()) {
	            User user = new User();
	            user.setId(rs.getInt(1));
	            user.setName(rs.getString(2));
	            user.setEmail(rs.getString(3));
	            user.setPass(rs.getString(4));
	            user.setRole(rs.getString(5));
	            userList.add(user);
	        }
	        
	        return userList;
	    }
	}
	
	//Show all Diet Plans
	public ArrayList<User2> getAllList3() throws ClassNotFoundException, SQLException {
	    String sql = "SELECT * FROM dietplan";
	    try (Connection con = getConnect();
	         PreparedStatement ps = con.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {
	        
	        ArrayList<User2> u = new ArrayList<>();
	        while (rs.next()) {
	            User2 o = new User2();
	            o.setId(rs.getInt(1));
	            o.setPlanname(rs.getString(2));
	            o.setProtein(rs.getInt(3));
	            o.setCarbs(rs.getInt(4));
	            o.setMeal(rs.getInt(5));
	            o.setFats(rs.getInt(6));
	            u.add(o);
	        }
	        return u;
	    }

}
	//delete user
	public int deleteuser(int id) throws ClassNotFoundException, SQLException {
		int status=0;
		String sql="delete from user where id=?";
		 Connection con=getConnect();
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,id);
			int a= ps.executeUpdate();
			con.close();
		return status;

}
	
	//get Dietplan
	public User2 getplan(int Id) throws ClassNotFoundException, SQLException{
		String sql="select * from dietplan where id=?";
		Connection con=getConnect();
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, Id);
		ResultSet rs = ps.executeQuery();
		int id=rs.getInt("id");
		String planname=rs.getString("planname");
		int protein=rs.getInt("protein");
		int carbs=rs.getInt("carbs");
		int meal=rs.getInt("meal");
		int fats=rs.getInt("fats");
		User2 u=new User2(id, planname, protein, carbs, meal, fats);
		
		return null;
		
	}
}