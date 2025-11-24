% FACTS
% student(Name, Marks)

student(aditya,92).
student(aniket,85).
student(rohit,67).
student(gaurav,73).
student(ravi,58).
student(kiran,43).
student(udit,96).
student(vishal,63).

% RULES
% Pass/Fail Criteria
result(Name, pass):-
    student(Name, Marks),
    Marks >= 50.

result(Name, fail):-
    student(Name, Marks),
    Marks < 50.

% Grading Rules
grade(Name, 'S'):-
    student(Name, Marks),
    Marks >= 90.
grade(Name, 'A'):-
    student(Name, Marks),
    Marks >= 80,
    Marks < 90.
grade(Name, 'B'):-
    student(Name, Marks),
    Marks >= 70,
    Marks < 80.
grade(Name, 'C'):-
    student(Name, Marks),
    Marks >= 60,
    Marks < 70.
grade(Name, 'D'):-
    student(Name, Marks),
    Marks >= 50,
    Marks < 60.
grade(Name, 'F'):-
    student(Name, Marks),
    Marks < 50.

% Scholarship Eligibility Rule (>=85 Marks)
scholarship(Name, eligible):-
    student(Name, Marks),
    Marks >= 85.
scholarship(Name, not_eligible):-
    student(Name, Marks),
    Marks < 85.