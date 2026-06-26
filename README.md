AskME – Cybersecurity Awareness Chatbot

Programming POE Part 3
Project Overview

AskME is a desktop-based application developed using C# WPF (.NET Framework) that aims to educate users about cybersecurity in an interactive manner. The application functions as an intelligent chatbot capable of responding to cybersecurity-related questions, remembering user interests, managing reminder tasks through SQL Server, playing a voice greeting, and offering a cybersecurity quiz for educational purposes. The project also integrates ML.NET to improve chatbot responses through machine learning.

Main Features
User Login

When the application starts, users are prompted to enter a username. The username is stored in a text file named user_names.txt. If the username already exists, AskME welcomes the user back; otherwise, the new username is saved and the user is greeted as a first-time user.

Voice Greeting

Upon launch, the voice_greeting class uses SoundPlayer to play a prerecorded WAV audio file (ThatoBot.wav). This feature enhances user engagement before interaction with the chatbot begins.

Cybersecurity Chatbot
AskME responds to cybersecurity-related questions using a built-in knowledge base stored in the respond.cs class.

Supported topics include:
Cybersecurity
Phishing
Password Safety
Firewalls
VPNs
Fraud
Hacked Accounts
Safe Browsing
Emotional Responses

Example:
User: What is phishing?
AskME: Phishing is a scam where attackers pretend to be trusted sources to steal sensitive information.

Keyword Matching

To improve response accuracy, the chatbot removes unnecessary words (stop words) such as:

the
is
and
of
to

This process allows AskME to focus on meaningful keywords before generating a response.

Machine Learning (ML.NET)

The application incorporates ML.NET to enhance chatbot intelligence.

The training.cs class performs the following functions:

Loads training data
Trains a text classification model
Saves the trained model as nlp_model.zip
Loads the saved model
Predicts appropriate responses
Learns from unanswered questions

When AskME cannot respond to a question, it stores the question in unknown_questions.txt for future improvement.

User Interest Memory

Users can inform AskME about topics they are interested in.

Example:
“I am interested in networking and cybersecurity.”

These interests are saved in interested_topic.txt. After several interactions, AskME reminds users of their stored interests to personalize the conversation.

Reminder Task Management

Users can create reminder tasks through the chatbot.

Example:
Add task Study Cryptography
Then:
Yes remind me in 3 days

Each task includes:

Task Name
Task Description
Due Date
Task Status

Tasks are stored in a SQL Server database. Users can:

Create tasks
View tasks
Mark tasks as completed
Delete completed tasks
SQL Database

The application uses SQL Server LocalDB.

Database Name:
tasks_prog

Table Name:
poe_tasks

Table Columns:

Column Name	Description
task_id	Primary Key
task_name	Task title
task_description	Task details
task_dueDate	Reminder date
task_status	Pending or Done

Supported database operations include:

INSERT
SELECT
UPDATE
DELETE

The application automatically checks if the table exists and creates it when required.

Cybersecurity Quiz

AskME includes an educational multiple-choice quiz.

Quiz features:

Randomized answer placement
Score tracking
Automatic reset after completion
Multiple cybersecurity questions

Quiz topics include:

Password Safety
VPN
Safe Browsing
Public Wi-Fi
Phishing

Each correct answer awards 5 marks.

Application Pages

The application is structured using WPF Grids and includes the following pages:

Home Page
Username Page
Chat Page
Reminder Page
Activity Log
Quiz Game

A side navigation menu allows easy movement between sections.

Technologies Used
Programming Language: C#
Framework: WPF (.NET Framework)
Machine Learning: ML.NET
Database: SQL Server LocalDB
IDE: Microsoft Visual Studio 2022
Database Language: SQL
Project Structure
MainWindow.xaml

Manages the graphical user interface and contains:

Home screen
Username page
Chat interface
Reminder page
Quiz page
Navigation menu
MainWindow.xaml.cs

Serves as the controller of the application and handles:

Page navigation
Chatbot messaging
Reminder management
Quiz execution
Conversation display
User interactions
respond.cs

Contains the chatbot knowledge base, including:

Cybersecurity responses
Emotional responses
Stop words for keyword matching
training.cs

Implements machine learning features such as:

Model training
Response prediction
Learning from unknown questions
Saving and loading the trained model
tasks.cs

Handles SQL Server database operations, including:

Table creation
Task insertion
Task retrieval
Updating task status
Deleting completed tasks
user_name.cs

Manages user-related functions by:

Saving usernames
Identifying returning users
Displaying welcome messages
voice_greeting.cs

Plays the welcome audio using SoundPlayer when the application launches.

Quiz_Question_Load.cs

Automatically loads all cybersecurity quiz questions.

Question_in_quiz.cs

Represents a quiz question object containing:

The question
The correct answer
Incorrect answer options
Files Created Automatically

During execution, the application generates and updates the following files:

File Name	Purpose
user_names.txt	Stores usernames
interested_topic.txt	Stores user interests
unknown_questions.txt	Stores unanswered questions
learned_questions.txt	Stores learned responses
nlp_model.zip	Saved ML.NET model
How to Run the Project
Open the solution in Visual Studio 2022.
Restore all required NuGet packages, including ML.NET if needed.
Ensure SQL Server LocalDB is installed.
Run the SQL script (tasks_prog.sql) or allow the application to create the table automatically.
Build and run the project.
Enter a username and begin interacting with AskME.
Learning Outcomes Demonstrated

This project demonstrates understanding of:

Object-Oriented Programming (OOP)
Windows Presentation Foundation (WPF)
Event-driven programming
File handling
SQL database integration
CRUD operations
Machine learning with ML.NET
Collections (Lists and ArrayLists)
Exception handling
Input validation
Modular programming
Cybersecurity awareness
Future Improvements

Possible enhancements include:

Voice recognition
Cloud-based database integration
Advanced natural language processing
User authentication and login system
Administrator dashboard
Dark and light theme options
Improved AI training with larger datasets
Cloud storage for user information
Additional cybersecurity learning modules
Conclusion

AskME is an educational cybersecurity assistant designed to help users enhance their understanding of online safety through interactive conversations, intelligent responses, reminder management, and quiz-based learning. The project combines C# WPF, SQL Server, ML.NET, file handling, and object-oriented programming principles to produce a complete desktop application that demonstrates both technical development skills and cybersecurity awareness.
