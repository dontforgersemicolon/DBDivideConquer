SELECT 
  Division.DivisionID ,
  Team.TeamID ,
  Student.StudentID ,
  Student.StudentFName ,
  Student.StudentLName ,
  Student.TotalScore 
FROM Division
LEFT JOIN School ON School.Division_FK = Division.DivisionPK 
LEFT JOIN Team ON Team.School_FK  = School.SchoolPK 
LEFT JOIN Student ON Student.Team_FK  = Team.TeamPK 
ORDER BY Student.TotalScore DESC ;