% Student-Teacher-Subject Code Database

student(tharun, ramesh, cse101).
student(rahul, suresh, cse102).
student(anu, priya, cse103).
student(kiran, ramesh, cse101).

% Find teacher and subject code of a student
details(Student, Teacher, SubjectCode) :-
    student(Student, Teacher, SubjectCode).
