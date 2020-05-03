package com.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.Beans.Users;

public class UserService {
	private Map<String,String> u;
	
	
	public void populate()
	{
		u=new  HashMap<String, String>();
		u.put("nags", "123");
		u.put("sarita", "123");
		u.put("sonu", "123");
		u.put("sunita", "123");
		u.put("sanjay", "123");
	}


	public boolean validate(Users u2) {
		populate();
		if(u.keySet().contains(u2.getName()))
{
	if(u2.getPassword().equals(u.get(u2.getName())))
			return  true;
			
}
		
		
		
		return false;
	}
private Map<String,String> cust;

	public boolean validatecustomer(Users u2) {
		populat1();
		if(cust.keySet().contains(u2.getName()))
		{
			if(u2.getPassword().equals(cust.get(u2.getName())))
				return true;
		}
		return false;
		// TODO Auto-generated method stub
		
	}
	public void populat1()
	{
		cust=new HashMap<>();
		cust.put("nags", "123");
		cust.put("sanjay","123");
		cust.put("sarita", "123");
		cust.put("sonu","123");
		cust.put("sunita","123");
		
		
	}
	

}
