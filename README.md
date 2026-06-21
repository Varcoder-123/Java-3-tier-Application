**Project Documentation**

Step 1 : Initially i begin with the **Infrastruture**, that is Terraform. Below is the order i followed
          1. provider.tf,
          2. network.tf,
          3. nsg.tf,
          4. nic.tf,
          5. public-ip.tf,
          6. vm.tf,
          7. mysql.tf,
          8. .gitignore,
          9. network.tf,
          10. variable.tf,

Step 2 : After that, I went through the appliacation code(**Java-Login-App**). Initially i pulled the code with no changes. Later i have changed the pom.xml             file particularly into the **mysql-connector-java** & **tomcat-jasper** section

Step 3 : Later i have added the jenkins file

Step 4 : Updated the database connection details in application.properties as per my azure database

Challenges & Error faced

1. First i understood the project structure from where to start and how to build, each phase etc.
2. Understood the concept of how VM will be attached to NSG, either through subnet or nic
3. Understood the concept of the subnet and vnet
4. While creating the database in azure i was facing the region issue, so i need to change the region as well to Japan east.
5. Initially i created the VM with ssh key, later with the connectivity issue i opted for the password for the easy login
6. How can i secure my password within my local machine using .gitignore
7. Modified the pom.xml as i was facing issue with the mysql-connector-java & tomcat-jasper
