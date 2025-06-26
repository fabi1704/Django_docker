Readme file


1. Title of the project : 
Django-Docker

2. Description :
The purpose of this code is to deploy a software that simulates the purchase of electronic tickets to attend to Olympic Games events. 
The client interface allows a visitor to 
- view the categories of events and the events
- create an account
- purchase 1 or several tickets
- view their basket
- validate their basket by entering their personal details and bank details
- validation of their purchase is followed by a message displayed on the home page.

The administrator interface allows you to :
- view the accounts created
- view the orders placed and sent
- enter and view products on sale

3. Algorithm deployment on Railway:

On Railway create a new project

In the project create a new service that is a postgreSQL Database
Recover the variables 
POSTGRES_DB=
POSTGRES_USER=
POSTGRES_PASSWORD=
DB_HOST=
DB_PORT=

NB DB_HOST and DB_PORT are in the DATABASR_PUBLIC_URL just after the @

In your .env files correct the database variables and ALLOWED_HOSTS=["*"].
Update your GitHub repository

On Railway in your project create a new service from GitHub. In the variables of this service add the database variables as well as the secret key (in your .env file)

Deploy your application.


4. Contribution :
Contributions are welcome.
Step 1: Fork the project. 
Step 2: Clone the Project. 
Step 3: Create A New Branch. 
Step 4: Develop, Stage, and Commit. 
Step 5: Push the Changes. 
Step 6: Create a Pull Request.
For more details see:
https://docs.github.com/en/get-started/exploring-projects-on-github/contributing-to-a-project


5. Licence :
CeCILL FREE SOFTWARE LICENSE AGREEMENT
Version 2.1 dated 2013-06-21
https://cecill.info/


6. Contact :
Comments and questions are welcome and can be emailed to fabienne@studi.com
