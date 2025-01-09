# Library Management System

This is a **Library Management System** project developed using **Object-Oriented Programming (OOP)** principles. It is designed to streamline library operations such as managing book inventory, user accounts, and borrowing/returning books. The project was implemented as part of a Software Engineering course at Ahsanullah University of Science & Technology.

## Features

### User Features
- **User Login**: Secure login with username and password.
- **Book Search**: Search books by title, author, or ISBN.
- **Borrow and Return Books**: Borrow books if available and return them on time.
- **Profile Management**: Update user information and view borrowing history.

### Admin Features
- **Admin Login**: Manage the library system as an administrator.
- **Add Books**: Add new books to the library database.
- **Manage Users**: Register new users and view user details.
- **Track Borrowed Books**: View details of books currently borrowed by users.

## OOP Principles in the Project
- **Classes and Objects**: Each feature is encapsulated in a separate class (e.g., `AddBook`, `AddStudent`, `BookDetails`).
- **Encapsulation**: Private fields and methods ensure modularity and data protection.
- **Inheritance**: Classes like `AddBook` and `AddStudent` extend `JFrame`, inheriting GUI functionalities.
- **Polymorphism**: Classes implement the `ActionListener` interface and override the `actionPerformed` method.
- **Abstraction**: Interfaces like `ActionListener` are used for event handling.

## Technologies Used
- **Java (Swing)**: For GUI development.
- **MySQL**: To manage the database.
- **NetBeans IDE 8.2**: For project development and management.

## Setup Instructions
1. **Database Setup**:
    - Create a database named `lms` in MySQL.
    - Use the provided SQL script (`library_management_system.sql`) to set up the database tables and initial data.

    ```bash
    mysql -u <username> -p < library_management_system.sql
    ```
2. **Project Execution**:
    - Open the project in NetBeans IDE or any Java-supported IDE.
    - Update the database connection details in `src/library/management/system/conn.java` if necessary.
    - Build and run the project.

## File Structure
- **`src/`**: Contains the source code written in Java.
- **`FINAL_REPORT_CLEANED.pdf`**: A report detailing the project overview, features, and future updates.
- **`library_management_system.sql`**: SQL script to set up the required database.
- **`.gitignore`**: To exclude unnecessary files from version control.

## Authors
- **Tahmid Sattar**
- **Md. Sive Saqline*

## Future Updates
- **Reassign Book**: Extend the borrow duration for a book.
- **Book Rating**: Allow users to rate books.
- **Report and Feedback**: Users can suggest improvements to library services.
- **Notification System**: Alerts for due dates and new arrivals.
