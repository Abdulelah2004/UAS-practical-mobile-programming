# UAS-practical-mobile-programming
this repostry is Abdulelah's final exam (UAS) of mobile programming class 5D


# Project Deployment Guide

This guide explains how to clone, set up, and run this project locally.

## Prerequisites
- **Flutter SDK**: Ensure Flutter is installed and added to your system’s PATH.  
- **XAMPP**: Install and configure XAMPP to run Apache and MySQL servers.

## Steps to Deploy

### 1. Clone the Repository
Open your terminal and run the following command to clone the repository:  
```bash
git clone https://github.com/Abdulelah2004/UAS-practical-mobile-programming


2. Navigate to the Project Directory
Move into the project directory by running:

cd <YourRepositoryName>

3. Install Dependencies
Run the following command to fetch the required dependencies for the project:

flutter pub get

4. Set Up the Backend
Open XAMPP and start the Apache and MySQL servers.
Import the provided database file (whatsapp_app.sql) into your local MySQL server using phpMyAdmin or any MySQL client tool.
Update the get_contacts.php script with your local machine's IP address to ensure connectivity.
5. Run the Application
To launch the app on a connected device or emulator, run:


flutter run
