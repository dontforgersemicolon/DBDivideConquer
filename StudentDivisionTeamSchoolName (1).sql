SELECT COUNT(*) AS student_count, d.DivisionID, t.TeamID, s2.SchoolName
FROM Student s
JOIN School s2 ON s.School_FK = s2.SchoolPK
JOIN Team t ON s.Team_FK = t.TeamPK
JOIN Division d ON s.Division_FK = d.DivisionPK 
GROUP BY s2.SchoolName, t.TeamID, d.DivisionID;