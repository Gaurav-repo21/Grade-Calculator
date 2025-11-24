# Student Grading and Scholarship System (Prolog)

# Overview

This project is a simple knowledge base implemented in Prolog (a logic programming language). It is designed to manage student examination records based on defined rules.

The system uses basic student facts (name and marks) and applies logical rules to automatically determine:
1.  The Pass/Fail status of a student.
2.  The corresponding Letter Grade (S, A, B, C, D, F).
3.  The student's Scholarship Eligibility.



# How to Run the Code

# Prerequisites

You need a Prolog interpreter installed (e.g., [SWI-Prolog](https://www.swi-prolog.org/) or GNU Prolog).

# Execution Steps

1.  Save the provided Prolog code (facts and rules) into a file named students.pl.
2.  Open your Prolog interpreter's command line or environment.
3.  Load the file using the consult predicate:
4.  You can now query the knowledge base.



# Knowledge Base Structure

# Facts
The student data is stored using the student/2 predicate:
* student(Name, Marks)

# Rules & Logic

| Predicate | Logic Implemented | Key Thresholds |
| :--- | :--- | :--- |
| **result(Name, Status)** | Pass/Fail criteria. | **Pass** if $Marks \ge 50$. |
| **grade(Name, Letter)** | Assigns grades based on marks ranges. | **'S'** if $Marks \ge 90$. **'F'** if $Marks < 50$. |
| **scholarship(Name, Eligibility)**| Checks if the student meets the minimum requirement for a scholarship. | **Eligible** if $Marks \ge 85$. |

---

# Usage Examples (Queries)

The following examples demonstrate how to extract information from the compiled knowledge base:

| Goal | Query | Example Output |
| :--- | :--- | :--- |
| **Find Grade for Udit** | ?- grade(udit, G). | G = 'S'. |
| **List all Scholarship Eligible Students** | ?- scholarship(Name, eligible). | Name = aditya ; Name = aniket ; Name = udit. |
| **Find students who failed** | ?- result(Name, fail). | Name = kiran. |
| **Check Marks of Students with Grade 'C'** | ?- grade(Name, 'C'), student(Name, M). | Name = rohit, M = 67 ; Name = vishal, M = 63. |
