package com.Controller;

import java.io.File;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

//import javax.servlet.http.Part;
import javax.servlet.ServletException;
//import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Beans.Product;
import com.Beans.Users;
import com.service.AdminService;
import com.service.UserService;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
//
//@MultipartConfig(
//        location = "C:/Users/sonuy/workspace/j2ee-made/E-Commerce/WebContent/UploadedImages/"
//)

public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session;
	
	
	 private static final String UPLOAD_DIRECTORY = "upload";
	 
	    // upload settings
	    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
	    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
	    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
	
	
	
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");

		System.out.println(id);
		if (id == null) {

			request.setAttribute("msg", " ");
			request.getRequestDispatcher("AdminSide/Login.jsp").forward(request, response);

		} else
			doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		AdminService as = null;
		session = request.getSession();
		if (id.equals("login")) {
			String name = request.getParameter("username");
			String password = request.getParameter("pass");
			System.out.println(" name" + name + " pass" + password);

			Users u = new Users();
			u.setName(name);
			u.setPassword(password);
			UserService us = new UserService();
			boolean check = us.validate(u);
			if (check == true) {
				System.out.println("inside true login\n");
				session.setAttribute("name", name);
				request.getRequestDispatcher("AdminSide/adminHome.jsp").forward(request, response);

			} else {
				System.out.println("inside flase login\n");
				request.setAttribute("msg", "Invalid Credentials");
				request.getRequestDispatcher("AdminSide/Login.jsp").forward(request, response);
			}

		}
		if (id.equals("about")) {
			request.getRequestDispatcher("AdminSide/About.jsp").forward(request, response);
		}
		if (id.equals("home")) {
			request.getRequestDispatcher("AdminSide/adminHome.jsp").forward(request, response);
		}

		if (id.equals("product")) {
			String category = request.getParameter("name");
			request.setAttribute("productName", category);
			System.out.println(category);
			as=new AdminService();
			List<Product> prod=as.getproduct(category);
			request.setAttribute("product", prod);
			request.setAttribute("cat",category);
			request.getRequestDispatcher("AdminSide/product.jsp").forward(request, response);
		}
		if (id.equals("Add")) {
			String cat = request.getParameter("cat");
			System.out.println(" 88888888888 \n iNSIDE ADD\n category " + cat);
			as=new AdminService();
			List<Product> prod=as.getproduct(cat );
			request.setAttribute("product", prod);
			request.setAttribute("cat", cat);
			request.getRequestDispatcher("AdminSide/Add.jsp").forward(request, response);
		}
		if (id.equals("addtodb")) {
			
			
			
			
			
			 
			     
			     if (!ServletFileUpload.isMultipartContent(request)) {
			            // if not, we stop here
			            PrintWriter writer = response.getWriter();
			            writer.println("Error: Form must has enctype=multipart/form-data.");
			            writer.flush();
			            return;
			        }
			     
			     
			     
			     
			  // configures upload settings
			        DiskFileItemFactory factory = new DiskFileItemFactory();
			        // sets memory threshold - beyond which files are stored in disk
			        factory.setSizeThreshold(MEMORY_THRESHOLD);
			        // sets temporary location to store files
			        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
			 
			        ServletFileUpload upload = new ServletFileUpload(factory);
			         
			        // sets maximum size of upload file
			        upload.setFileSizeMax(MAX_FILE_SIZE);
			         
			        // sets maximum size of request (include file + form data)
			        upload.setSizeMax(MAX_REQUEST_SIZE);
			 
			        // constructs the directory path to store upload file
			        // this path is relative to application's directory
			        String uploadPath = getServletContext().getRealPath("")
			                + File.separator + UPLOAD_DIRECTORY;
			        System.out.println("upload path "+uploadPath);
			         
			        // creates the directory if it does not exist
			        File uploadDir = new File(uploadPath);
			        if (!uploadDir.exists()) {
			            uploadDir.mkdir();
			        }
			        
			        
			        String path = null;
			         String Category=null,productname=null;
			         float price=0.0f;
			        
			        try {
			            // parses the request's content to extract file data
			        	
//			            @SuppressWarnings("unchecked")
			        	
			            List<FileItem> formItems = upload.parseRequest(request);
			 
			            if (formItems != null && formItems.size() > 0) {
			                // iterates over form's fields
			                for (FileItem item : formItems) {
			                    // processes only fields that are not form fields
			                    if (!item.isFormField()) {
			                        String fileName = new File(item.getName()).getName();
			                        path=fileName;
			                        System.out.println("filename "+ fileName);
			                        String filePath = uploadPath + File.separator + fileName;
			                        File storeFile = new File(filePath);
			 
			                        // saves the file on disk
			                        item.write(storeFile);
			                        request.setAttribute("message",
			                            "Upload has been done successfully!");
			                    }
			                    else {
			                        //here...
			                        String fieldname = item.getFieldName();
			                        String fieldvalue = item.getString();
			                        if (fieldname.equals("name")) {
			                        	productname=fieldvalue;
			                            //logic goes here...
			                        } else if (fieldname.equals("price")) {
			                        	price=Float.parseFloat(fieldvalue);
			                        	
			                            //next logic goes here...
			                        }
			                        
			                    }
			                    
			                    
			                    
			                    
			                    
			                    
			                    
			                    
			                }
			            }
			        } catch (Exception ex) {
			            request.setAttribute("message",
			                    "There was an error: " + ex.getMessage());
			        }  
			        
			        System.out.println("out of storing part\n");
			as=new AdminService();
			
			
//			String productname=request.getParameter("name");
			System.out.println("name "+productname);
//			float price=Float.parseFloat(request.getParameter("price"));
			System.out.println("price "+price);
//			String Category =request.getParameter("cat");
//			System.out.println("category "+Category);
			
			System.out.println("defferent technique category "+request.getParameter("cat"));
			
			
			
			Category=request.getParameter("cat");
			
			
			
//	System.out.println("category "+Category+" price "+price+" productname"+productname+"path "+path);
			Product p=new Product();
			p.setCategory(Category);
			p.setPath(path);
			p.setPrice(price);
			p.setProduct_name(productname);
			try {
				as.addtodb(p);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			List<Product> prod=as.getproduct(Category );
			request.setAttribute("product", prod);
			request.setAttribute("productName", Category);
			System.out.println("*******************\n");
			request.getRequestDispatcher("AdminSide/product.jsp").forward(request, response);
			        
		}//end of if
		
		
		if(id.equals("updatetodb"))
		{
			
			  
		     if (!ServletFileUpload.isMultipartContent(request)) {
		            // if not, we stop here
		            PrintWriter writer = response.getWriter();
		            writer.println("Error: Form must has enctype=multipart/form-data.");
		            writer.flush();
		            return;
		        }
		     
		     
		     
		     
		  // configures upload settings
		        DiskFileItemFactory factory = new DiskFileItemFactory();
		        // sets memory threshold - beyond which files are stored in disk
		        factory.setSizeThreshold(MEMORY_THRESHOLD);
		        // sets temporary location to store files
		        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		 
		        ServletFileUpload upload = new ServletFileUpload(factory);
		         
		        // sets maximum size of upload file
		        upload.setFileSizeMax(MAX_FILE_SIZE);
		         
		        // sets maximum size of request (include file + form data)
		        upload.setSizeMax(MAX_REQUEST_SIZE);
		 
		        // constructs the directory path to store upload file
		        // this path is relative to application's directory
		        String uploadPath = getServletContext().getRealPath("")
		                + File.separator + UPLOAD_DIRECTORY;
		        System.out.println("upload path "+uploadPath);
		         
		        // creates the directory if it does not exist
		        File uploadDir = new File(uploadPath);
		        if (!uploadDir.exists()) {
		            uploadDir.mkdir();
		        }
		        
		        
		        String path = null;
		         String Category=null,productname=null;
		         float price=0.0f;
		        
		        try {
		            // parses the request's content to extract file data
		            @SuppressWarnings("unchecked")
		            List<FileItem> formItems = upload.parseRequest(request);
		 
		            if (formItems != null && formItems.size() > 0) {
		                // iterates over form's fields
		                for (FileItem item : formItems) {
		                    // processes only fields that are not form fields
		                    if (!item.isFormField()) {
		                        String fileName = new File(item.getName()).getName();
		                        path=fileName;
		                        System.out.println("filename "+ fileName);
		                        String filePath = uploadPath + File.separator + fileName;
		                        File storeFile = new File(filePath);
		 
		                        // saves the file on disk
		                        item.write(storeFile);
		                        request.setAttribute("message",
		                            "Upload has been done successfully!");
		                    }
		                    else {
		                        //here...
		                        String fieldname = item.getFieldName();
		                        String fieldvalue = item.getString();
		                        if (fieldname.equals("name")) {
		                        	productname=fieldvalue;
		                            //logic goes here...
		                        } else if (fieldname.equals("price")) {
		                        	price=Float.parseFloat(fieldvalue);
		                        	
		                            //next logic goes here...
		                        }
		                        
		                    }
		                    
		                    
		                    
		                    
		                    
		                    
		                    
		                    
		                }
		            }
		        } catch (Exception ex) {
		            request.setAttribute("message",
		                    "There was an error: " + ex.getMessage());
		        }  
		        
		        System.out.println("out of storing part\n");
		as=new AdminService();
		
		
//		String productname=request.getParameter("name");
		System.out.println("name "+productname);
//		float price=Float.parseFloat(request.getParameter("price"));
		System.out.println("price "+price);
//		String Category =request.getParameter("cat");
//		System.out.println("category "+Category);
		
		System.out.println("defferent technique category "+request.getParameter("cat"));
		
		
		
		Category=request.getParameter("cat");
		
		
		
//System.out.println("category "+Category+" price "+price+" productname"+productname+"path "+path);
		Product p=new Product();
		p.setCategory(Category);
		p.setPath(path);
		p.setPrice(price);
		p.setProduct_name(productname);
Product oldp=new Product();
oldp.setCategory((String)request.getParameter("cat"));
oldp.setPrice(Float.parseFloat(request.getParameter("price")));
oldp.setProduct_name((String)request.getParameter("name"));
oldp.setPath((String)request.getParameter("path"));

		as.updatetodb(p,oldp);
		
		List<Product> prod=as.getproduct(Category );
		request.setAttribute("product", prod);
		request.setAttribute("productName", Category);
		System.out.println("*******************\n");
		request.getRequestDispatcher("AdminSide/product.jsp").forward(request, response);

		}
		
		
		
		
		

		if(id.contentEquals("update"))
				{
			System.out.println(" inside update "+request.getParameter("cat"));
//			as=new AdminService();
//			as.updateproduct()
			request.setAttribute("cat", request.getParameter("cat"));
			request.setAttribute("price",request.getParameter("price"));
			request.setAttribute("productname",request.getParameter("productname"));
			request.setAttribute("path",request.getParameter("path"));
			request.getRequestDispatcher("AdminSide/Updateproduct.jsp").forward(request, response);
				}
		if(id.equals("delete"))
		{
			System.out.println("inside delete "+request.getParameter("cat")+"name "+request.getParameter("name"));
			as=new AdminService();
			
			as.delete((String)request.getParameter("cat"),(String)request.getParameter("name"));
			
			List<Product> prod=as.getproduct(request.getParameter("cat") );
			request.setAttribute("product", prod);
			request.setAttribute("productName",request.getParameter("cat"));
			System.out.println("*******************\n");
			request.getRequestDispatcher("AdminSide/product.jsp").forward(request, response);

		}
		
		}// end of dopost()
			        
			        
			        
			        
			        
			        
			        
			        
			        
			        
			        
			     
			     
			     
			     
			     
			     
			
//			   response.setContentType("text/html;charset=UTF-8");
//		        PrintWriter out = response.getWriter();
		        // 		String path=request.getParameter("file");
//		Part part=request.getPart("file");	
				//		System.out.println("part="+part);
//		System.out.println("file content "+request.getParameter("file"));
//		String filename=extractFileName(part);
		
//				System.out.println("filename="+filename);
		
//		String SavePath="C:\\Users\\sonuy\\workspace\\j2ee-made\\E-Commerce\\WebContent\\UploadedImages"+File.separator+filename;
//		File savdir=new File(SavePath);
		
//		System.out.println(SavePath+" \nsavdir "+savdir);
		
//	       part.write(filename);
//	System.out.println(" file succesfully added \n");
	
//	private String extractFileName(Part part) {
//        String contentDisp = part.getHeader("content-disposition");
//        String[] items = contentDisp.split(";");
//        for (String s : items) {
//            if (s.trim().startsWith("filename")) 
//            {
//            	
//                return s.substring(s.indexOf("=") + 2, s.length()-1);
//            }
//        }
//        return "";
//    }

}
