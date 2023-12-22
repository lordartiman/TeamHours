-- Employee Table
CREATE TABLE Employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Project Table
CREATE TABLE Projects (
    ProjectID SERIAL PRIMARY KEY,
    ProjectName VARCHAR(255) NOT NULL,
    Description TEXT,
    Status VARCHAR(50) CHECK (Status IN ('Not Started', 'In-Progress', 'Wrapping Up', 'Complete', 'Continuous')),
    StartDate DATE,
    EndDate DATE
);

-- Hours Worked Table
CREATE TABLE HoursWorked (
    RecordID SERIAL PRIMARY KEY,
    EmployeeID INT REFERENCES Employees(EmployeeID),
    ProjectID INT REFERENCES Projects(ProjectID),
    WeekStarting DATE NOT NULL,
    HoursWorked INT CHECK (HoursWorked >= 0)
);
