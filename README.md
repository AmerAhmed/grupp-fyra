# Project assignment Relationship databases

You will work in groups and your task is as follows:
Create a database to be used by a company that sells spare parts for cars. 
This database is primarily intended for use by employees at the company, 
but in the future you also want to be able to link an online shop to this database.
The following requirements have emerged in a meeting with the customer:

## The core of the company's business is spare parts for cars. A spare part has
* a name
* product number
* a manufacturer
* a supplier
* a description
* a place where the product is stored
* a number of stocks
* an entry price
* a price
* A number for the critical level that will cause an order for new spare parts
done automatically
* a number to be used when ordering vending machines
* a date when the ordered parts are expected home, if we have one.
* For a spare part, it must also be clear which car makes and models it is suitable for.

### Each product
Each product has one or more manufacturers. Sometimes you need to get in touch with the manufacturer and then this information is needed. It must also be stated which products this company manufactures.
For manufacturers, it must be stated

* The name of the company
* the head office address
* the head office telephone number
* contact person if available
* name of contact person
* telephone number of contact person
* email to the contact person
---
A product is delivered by one or more suppliers. It must be stated which products this supplier can deliver.
For supplier must be stated
* name 
* address
* contact person 
* telephone
* email
---
The system should keep track of customers and orders (similar to those found in the sample database from mysqltutorial (http://www.mysqltutorial.org/mysql-sample-database.aspx). A customer can be either an individual or a company. is a corporate customer, the contact person at the company must have contact information.
Some that contain staff must also be included, because we want to be able to see which staff the customer bought from, and in which store the staff works. Of course, it must also be stated in which store a certain purchase has been made and the date and time of the purchase.
For customers, information about their cars must also be stored, ie
* registration number 
* manufacturer
* model
* year model
* color
---
A customer can have several cars. Steps to take:
* Model a database design in MySQL
* Generate the database automatically from the model. Make sure even strangers
keys and other constraints will be right
* Test that you can enter data and access it and that the relationships between
the tables work
Generate data to fill the database with that you can use in development
* Make a dump of the database and version it with the rest of your project
* Make a simpler Python program where you can view, change and update the data in
the database
---