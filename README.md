# Online-Shopping-Platform

Online Shopping Platform is Project which consist of 2 part first is the Admin and other is the Customer Part.
                                            Admin Login Page:

![Screenshot (20)](https://user-images.githubusercontent.com/61315497/80918419-66e88200-8d82-11ea-9d56-8cfd91f1b3fb.png)


Talking About the Admin Part here,for  Login  validation  im using Map<username,password>   bit fast..

                                            Home Page:
                                            
Inside Home Page Admin Can Add categories ,View User Details ,Add Products,Delete Products,Update Products. For Time Being im putting Only 4 Categories from  and using Session im setting the name of admin too..
admin can edit the products.

![Screenshot (22)](https://user-images.githubusercontent.com/61315497/80918487-eaa26e80-8d82-11ea-9a4f-2ed53fbc67d9.png)


                                         Category Section:
 Adding of the products is kind of main part of the project  where using im using servlet api 2.5 bcouz of which i cant go for MultiConfigPart(Attribute....) Annotations because this things is valid for only servlet ver 3.0 so i go manual work where 
 images of the products are stored in temp() of workspace folder and location of the img src is also relative so no problem during deployment
 
![Screenshot (23)](https://user-images.githubusercontent.com/61315497/80918491-ee35f580-8d82-11ea-88cf-6384dd9164a6.png)

Once u clicked The product then u will be redirected towards the products.jsp where All products under that category will be displayed.


![Screenshot (25)](https://user-images.githubusercontent.com/61315497/80919365-263f3780-8d87-11ea-92fe-e2e1dfec3c83.png)


For update Admin should fill details of the products to be updated and submit it n with the help of jdbc preparestatement object method
executeUpdate(); changes will be visible.

![Screenshot (24)](https://user-images.githubusercontent.com/61315497/80919236-8d102100-8d86-11ea-9098-03c66db4f213.png)
for Delete Just press the button n in the backend query will be fired n again changes gonna be visible

Client Side :

Just for Simplicity and not focus more on Ui because a lot external  Libraries too bluky im using so thats why using same template for client also but the code and logic is kind of different 
Client Login page :

![Screenshot (26)](https://user-images.githubusercontent.com/61315497/80919243-9600f280-8d86-11ea-8248-9662a040bd20.png)

Client Home Page:

![Screenshot (27)](https://user-images.githubusercontent.com/61315497/80919259-a4e7a500-8d86-11ea-9bfa-e604639ca4f7.png)

Over here user can visit to the Market Section and add products of his choice in the cart 

Product in the Vegetable Section:
which customer can buy !!!!

![Screenshot (29)](https://user-images.githubusercontent.com/61315497/80919273-b03ad080-8d86-11ea-86f8-8377431f1e9b.png)











