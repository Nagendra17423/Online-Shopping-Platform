package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Beans.Product;

public class Dbconn {
	
	String name="postgres";
	String password="NAGENDRA1@1999";
	String url="jdbc:postgresql://localhost:5432/ecommerce";
	String  driver="org.postgresql.Driver";
	Connection conn=null;
	
	private void dbconnect() throws ClassNotFoundException, SQLException {
		Class.forName(driver);
		 conn= DriverManager.getConnection(url,name,password);
		 if(conn==null)
			 System.out.println("null");
		 else
			 System.out.println("sucessfully connected ");
	}
	

	public void addtodb(Product p) throws ClassNotFoundException, SQLException {
		dbconnect();
		System.out.println("inside dbconn  for addtodb");
		String q="insert into products(category,price,product_name,path) values(?,?,?,?)";
		PreparedStatement pstmt=conn.prepareStatement(q);
		pstmt.setString(1, p.getCategory());
		pstmt.setFloat(2, p.getPrice());
		pstmt.setString(3, p.getProduct_name());
		pstmt.setString(4, p.getPath());
		pstmt.executeUpdate();
		System.out.println("complete adding category  into product table \n");
		// TODO Auto-generated method stub
		
	}


	public List<Product> getproduct(String category) throws ClassNotFoundException, SQLException {
		dbconnect();
		String q="select * from products where category=?";
		System.out.println("inside dbconn  for getprod");
		PreparedStatement pstmt=conn.prepareStatement(q);
		pstmt.setString(1, category);
		ResultSet rs=pstmt.executeQuery();
		List<Product>p=new ArrayList<>();
		while(rs.next())
		{
			Product prod=new Product();
			prod.setCategory(rs.getString("category"));
			prod.setProduct_name(rs.getString("product_name"));
			prod.setPath(rs.getString("path"));
			prod.setPrice(rs.getFloat("price"));
			p.add(prod);
		}
		System.out.println("got product details\n");
		return p;
		// TODO Auto-generated method stub
		
	}


	public void delete(String category, String name2) throws ClassNotFoundException, SQLException {
		dbconnect();
		String q="delete from  products where category=? and product_name=?";
		PreparedStatement pstmt=conn.prepareStatement(q);
		pstmt.setString(1, category);
		pstmt.setString(2, name2);
		pstmt.executeUpdate();
		System.out.println("complete deleting category  into product table \n");
		// TODO Auto-generated method stub
		
	}


	public void updatetodb(Product p, Product oldp) throws ClassNotFoundException, SQLException {
		dbconnect();
//		System.out.println(" ");
		String q="update products set product_name=?,path=?,price=? where product_name=? or  path=? or price=?";
		PreparedStatement pstmt=conn.prepareStatement(q);
		pstmt.setString(1, p.getProduct_name());
		pstmt.setString(2, p.getPath());
		pstmt.setFloat(3, p.getPrice());
		pstmt.setString(4, oldp.getProduct_name());
		pstmt.setString(5, oldp.getPath());
		pstmt.setFloat(6, oldp.getPrice());
		int check=pstmt.executeUpdate();
		if(check==1)
		System.out.println("update row !!!!!@@@@!!!!!\n");
		else
			System.out.println("not done update");
		
		// TODO Auto-generated method stub
		
	}
	
	

}
