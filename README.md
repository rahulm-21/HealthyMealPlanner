Steps to Run the Project:

- [ ] Download the project as zip file and extract the folder “HealthyMealPlanner-main”.
- [ ] Open Anaconda prompt, and change the directory to HealthyMealPlanner which is inside the extracted folder “HealthyMealPlanner-main”.
- [ ] Now follow the below commands to run the project:
- [ ] 
- [ ] # Step 1: Open Anaconda Prompt
- [ ] # Step 2: Create and activate a new environment
- [ ] conda create -n myenv python=3.8
- [ ] conda activate myenv
- [ ] 
- [ ] # Step 3: Install Django and other dependencies
- [ ] pip install django
- [ ] pip install mysqlclient  # If using MySQL
- [ ] 
- [ ] # Step 4: Apply migrations and run the server
- [ ] python manage.py migrate
- [ ] python manage.py runserver

 -----------------------------------------------------------------------------------------------------------------------------------------

Steps to connect to Database:

Requirements - XAMPP server

- [ ] Open XAMPP server and run the Apache and MySQL.
- [ ] Open your browser and go to localhost/phpmyadmin
- [ ] Once you are in, go to Databases tab and create ‘hmp’ database.
- [ ] Now navigate to import tab at the top and choose the ‘hmp.sql’ file from the extracted HealthyMealPlanner folder and click on import.
- [ ] Now all the tables will be imported to hmp database and is ready to be used.

Note:- Make sure that the port number of database in the settings.py file of HealthyMealPlanner folder is same as the port number of MySQL in XAMPP.
By default it is 3306 port.

