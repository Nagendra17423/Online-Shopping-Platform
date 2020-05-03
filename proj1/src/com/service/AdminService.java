package com.service;

import java.sql.SQLException;
import java.util.List;

import com.Beans.Product;
import com.model.Dbconn;

public class AdminService {
	private Dbconn conn;

	public void addtodb(Product p) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		System.out.println("inside adminservice for addtodb");
		conn=new Dbconn();
		conn.addtodb(p);
		
	}

	public List<Product> getproduct(String category) {
		conn=new Dbconn();
		System.out.println("inside adminservice for getprod");
		List<Product> prod;
		try {
			prod = conn.getproduct(category);
			return prod;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}

	public void delete(String category, String name) {
		conn=new Dbconn();
		
		try {
			conn.delete(category,name);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		
	}

	public void updatetodb(Product p, Product oldp) {
		conn=new Dbconn();
		try {
			conn.updatetodb(p,oldp);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		
	}

}
