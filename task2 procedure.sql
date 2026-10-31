CREATE PROCEDURE sp_GetEmployeesByDepartment
    @DeptID INT
AS
BEGIN
    SELECT
        Employees.FullName,
        Departments.DepartmentID
    FROM Departments
    INNER JOIN Employees
        ON Departments.DepartmentID = Employees.DepartmentID
    WHERE Departments.DepartmentID = @DeptID;
END;