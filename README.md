# Student Result System in Prolog

This project is a simple Prolog knowledge base for managing student marks, pass/fail status, grades, and scholarship eligibility using logical rules.

# Features

- Stores student names and marks using student(Name, Marks) facts.
- Determines pass/fail status with result(Name, Status):
  - pass if marks are greater than or equal to 50.
  - fail if marks are less than 50.
- Assigns grades with grade(Name, Grade):
  - S for marks ≥ 90  
  - A for marks 80–89  
  - B for marks 70–79  
  - C for marks 60–69  
  - D for marks 50–59  
  - F for marks < 50
- Checks scholarship eligibility with scholarship(Name, Status):
  - eligible if marks are greater than or equal to 85.
  - not_eligible otherwise.

 # File

- students.pl 
  Contains all facts and rules:
  - student/2
  - result/2
  - grade/2
  - scholarship/2`

# Requirements

* A Prolog implementation such as SWI‑Prolog installed on your system.

# How to Run

1. Save the Prolog code in a file named `students.pl`.
2. Open a terminal/command prompt in the folder containing `students.pl`.
3. Start Prolog, then load the file:
