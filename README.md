# Wipro Java Experiment 10 - Spring Boot MVC + JPA + JSP + Hibernate + PostgreSQL

A complete Spring Boot Web Application demonstrating full CRUD operations (Create, Read, Search, Update, Delete) using **Spring Boot MVC**, **Spring Data JPA**, **Hibernate**, **JSP**, and **PostgreSQL**.

---

## 📋 Features & CRUD Operations

- **Create**: Add a new student record (`regno`, `name`, `cgpa`).
- **Read**: Display all students from PostgreSQL in an HTML table.
- **Search**: Search for specific student details using Student ID (`regno`).
- **Update**: Modify existing student details.
- **Delete**: Remove a student record from the database.

---

## 🛠️ Tech Stack

- **Framework**: Spring Boot 3.2.5 (Spring MVC)
- **Persistence**: Spring Data JPA & Hibernate ORM
- **Database**: PostgreSQL
- **View Layer**: Embedded Tomcat with JSP & JSTL
- **Build Tool**: Maven
- **Java Version**: 17+

---

## 📂 Project Structure

```text
SpringWebProject3/
├── database_setup.sql
├── pom.xml
└── src/
    └── main/
        ├── java/com/example/demo/
        │   ├── SpringWebProject3Application.java
        │   ├── Student.java
        │   ├── StudentRepository.java
        │   ├── StudentService.java
        │   └── StudentController.java
        ├── resources/
        │   └── application.properties
        └── webapp/WEB-INF/views/
            ├── student-form.jsp
            ├── student-list.jsp
            ├── student-search.jsp
            └── student-edit.jsp
```

---

## 🗄️ Database Setup

Create the database in PostgreSQL:
```sql
CREATE DATABASE college;
```
Hibernate will automatically create and update the table schema on startup (`spring.jpa.hibernate.ddl-auto=update`).

---

## 🚀 Running the Application

1. Open project in **Spring Tool Suite (STS)** or IDE of choice.
2. Ensure PostgreSQL service is running locally on port `5432`.
3. Update database credentials in `application.properties` if needed.
4. Run `SpringWebProject3Application.java` as a **Spring Boot App**.
5. Access in browser:
   - **Form (Add Student)**: `http://localhost:8080/`
   - **Student List**: `http://localhost:8080/students`
