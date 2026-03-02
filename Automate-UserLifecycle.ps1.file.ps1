# 1. THE DATA: Upgraded to include Role, Licensing, and SLA tracking
$NewHires = @"
FirstName,LastName,Department,Role,M365_License,Hardware,SLA_Met,Status
James,Smith,Health Informatics,Systems Analyst,E5,High-Performance,Yes,Complete
Mary,Johnson,Oncology,Clinical Director,E5,Standard,Yes,Complete
Robert,Williams,Data Analytics,Data Scientist,E5,High-Performance,No,Complete
Patricia,Brown,Operations,Floor Manager,E3,Standard,Yes,Complete
John,Jones,Consulting,Solution Consultant,E5,Standard,Yes,Complete
"@ | ConvertFrom-Csv

# 2. THE LOOP: Now processing advanced enterprise attributes
Write-Host "Starting advanced provisioning for OmniHealth..." -ForegroundColor Cyan
Write-Host "------------------------------------------------" -ForegroundColor Cyan

foreach ($Person in $NewHires) {
    $EmailAddress = "$($Person.FirstName).$($Person.LastName)@omnihealth.com"
    
    Write-Host "Creating account: $EmailAddress" -ForegroundColor Yellow
    Write-Host "Role & Dept: $($Person.Role) - $($Person.Department)" -ForegroundColor Yellow
    Write-Host "Assigning License: $($Person.M365_License)" -ForegroundColor Magenta
    Write-Host "Hardware Request: $($Person.Hardware)" -ForegroundColor Magenta
    Write-Host "---" -ForegroundColor DarkGray
}

Write-Host "Success! Advanced user provisioning completed." -ForegroundColor Green