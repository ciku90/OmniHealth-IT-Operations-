-- ==========================================================================================
-- OmniHealth IT Operations: Advanced Audit Database Setup
-- ==========================================================================================

-- 1. Create the upgraded table
CREATE TABLE AccountCreationLogs (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    NewEmployeeName NVARCHAR(100) NOT NULL,
    AssignedDepartment NVARCHAR(100) NOT NULL,
    JobRole NVARCHAR(100) NOT NULL,
    AssignedLicense NVARCHAR(50) NOT NULL,
    HardwareType NVARCHAR(100) NOT NULL,
    SLA_Met NVARCHAR(10) NOT NULL,
    OnboardingStatus NVARCHAR(50) NOT NULL
);
GO

-- 2. Create the upgraded stored procedure
CREATE PROCEDURE sp_LogAdvancedAccount
    @NewEmployeeName NVARCHAR(100),
    @AssignedDepartment NVARCHAR(100),
    @JobRole NVARCHAR(100),
    @AssignedLicense NVARCHAR(50),
    @HardwareType NVARCHAR(100),
    @SLA_Met NVARCHAR(10),
    @OnboardingStatus NVARCHAR(50)
AS
BEGIN
    INSERT INTO AccountCreationLogs (NewEmployeeName, AssignedDepartment, JobRole, AssignedLicense, HardwareType, SLA_Met, OnboardingStatus)
    VALUES (@NewEmployeeName, @AssignedDepartment, @JobRole, @AssignedLicense, @HardwareType, @SLA_Met, @OnboardingStatus);
END;
GO