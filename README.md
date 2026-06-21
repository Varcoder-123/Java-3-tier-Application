# 📖 Project Documentation

## 🚀 Step 1: Infrastructure Provisioning using Terraform

The project began with provisioning the Azure infrastructure using Terraform. To maintain a structured approach, the Terraform files were created and configured in the following order:

1. `provider.tf`
2. `network.tf`
3. `nsg.tf`
4. `nic.tf`
5. `public-ip.tf`
6. `vm.tf`
7. `mysql.tf`
8. `.gitignore`
9. `variables.tf`

This phase helped in understanding the complete infrastructure setup, networking components, and resource dependencies within Azure.

---

## ☕ Step 2: Application Analysis and Configuration

After the infrastructure was ready, I moved on to the application layer by reviewing the **Java-Login-App** source code.

Initially, the application was cloned without any modifications. During the build process, I identified dependency-related issues and updated the `pom.xml` file, specifically focusing on:

- `mysql-connector-java`
- `tomcat-jasper`

These modifications ensured successful database connectivity and application packaging.

---

## ⚙️ Step 3: CI/CD Pipeline Implementation

Once the application was building successfully, I integrated Jenkins by creating a dedicated **Jenkinsfile**.

This enabled automation of the application's build and deployment workflow, forming the foundation of the CI/CD pipeline.

---

## 🗄️ Step 4: Database Configuration

The final application configuration involved updating the database connection parameters in the `application.properties` file.

The datasource URL, username, and password were configured according to the Azure MySQL database instance created during the infrastructure provisioning phase.

---

# 🚧 Challenges Faced & Key Learnings

### 📌 Understanding the Project Workflow

One of the initial challenges was understanding the overall project structure, identifying where to begin, and learning how each phase of the project connects together—from infrastructure provisioning to application deployment.

---

### 🌐 Azure Networking Concepts

Gained a deeper understanding of Azure networking components, including:

- Virtual Networks (VNet)
- Subnets
- Network Security Groups (NSG)
- Network Interfaces (NIC)

Additionally, I learned how NSGs can be associated either at the **Subnet level** or the **NIC level** depending on the security requirements.

---

### 🗄️ Azure MySQL Region Constraints

While creating the Azure MySQL Database, I encountered deployment limitations related to the selected region.

To resolve this issue, the deployment region was changed to **Japan East**, after which the database was provisioned successfully.

---

### 🔐 VM Authentication Approach

The virtual machine was initially configured using **SSH Key Authentication**. During troubleshooting and connectivity testing, I switched to **Password Authentication** to simplify access and administration.

This provided practical exposure to both authentication methods and their respective use cases.

---

### 🛡️ Securing Sensitive Information

A key consideration during development was preventing sensitive information from being exposed in the repository.

To address this, I utilized the `.gitignore` file to exclude sensitive files and credentials from version control, improving overall repository security.

---

### 🔧 Maven Dependency Troubleshooting

While building the application, issues were encountered with the following dependencies:

- `mysql-connector-java`
- `tomcat-jasper`

After analyzing the dependency configuration, the required modifications were made within the `pom.xml` file, resulting in a successful build and deployment process.

---


during the docker image creation , i found that openjdk:17 was been deprecated so i changed to the eclipse-temurin:17-jre image

once i created the container i was unable to see the webpage even after NSG configure , so i checked the logs of the container and found Tomcat dependency version mismatch (JAR hell) inside your application. To resolve this i need to change the version of the tomcat-jasper along with remove the <scope>provided</scope>

Due to this issue i was also able to perform roll-back through git

I was not able to login to the page, as i was searching for the username and the password for this page. later i that it was the Spring Security's default login form handles the request. user is the username & password was been provided by the Spring Security
<img width="619" height="409" alt="image" src="https://github.com/user-attachments/assets/5f155fcb-c26c-405d-adec-06294dcb442d" />

Even if i able to login ,  i was getting in to the wrong page 
<img width="1691" height="324" alt="image" src="https://github.com/user-attachments/assets/2d6d9516-668f-4a6c-bdc9-7b9ab363e36a" />




