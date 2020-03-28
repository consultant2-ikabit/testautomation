*** Settings ***
Library    Selenium2Library    
Library    FakerLibrary    locale=en_US
Library   String
Library    DateTime    
Suite Teardown    Close Browser
Resource     ../../../Resources/dropdownlist.robot
Resource     ../../../Resources/textfield.robot
Resource     ../../../Resources/genericfunctions.robot
Resource     ../../../Resources/numericalvalue.robot
Resource     ../../../Resources/button.robot
     
*** Test Cases ***
Add Employee Personal
     login
    open link   employees   Add 
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="emailId"]     20s
    Selenium2Library.Select From List By Index    xpath=//*[@id="userType"]     0 
     ${coemailId}     email  
     Set Global Variable     ${coemailId}   
    Selenium2Library.Input Text    xpath=//input[@id="emailId"]     ${coemailId}
    Selenium2Library.Input Text    xpath=//input[@id="confirmEmailId"]     ${coemailId}
     ${password}     Password 
    Selenium2Library.Input Text    xpath=//input[@id="password"]        ${password}
    Selenium2Library.Input Text    xpath=//input[@id="confirmPassword"]        ${password}
    ${First Name}   First Name
    Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name}
    ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
    list select value    primaryPhoneNumberType
    list select value    primaryCountryCode
    list select value    secondaryPhoneNumberType
    list select value    secondaryCountryCode
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="primaryPhoneNumber"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="secondaryPhoneNumber"]    ${Phone Number}
    employee primary houseaddress 
    employee secondary houseaddress
    updating data  
    
Validation for user Type
   open link    employees    Add
   Selenium2Library.Click Element   xpath=//*[@href="/manage/employeeAdd/Confidential"] 
   Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
   list default   userType
   list all    userType
   list select value    userType
   list order  userType
   list multiple selection   userType
    

LoginId NotNull
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Selenium2Library.Input Text    xpath=//*[@id="loginID"]     ""
    list select value    userType    
    ${ssn}    Ssn     
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]     ${ssn} 
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        338383
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    Validation Error


LoginId Invalid    
#Check for LoginId-'gmail.com'
     Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]     "gmail.com"
    list select value    userType    
    ${ssn}    Ssn     
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]     ${ssn} 
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        338383
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    Validation Error
    
#Check for LoginId-gmail@
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]     "gmail@"
    list select value    userType    
    ${ssn}    Ssn     
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]     ${ssn} 
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        338383
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    Validation Error
    
#Check for LoginId-gmail
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]     "gmail"
    list select value    userType    
    ${ssn}    Ssn     
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]     ${ssn} 
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        338383
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    Validation Error
    
LoginID valid
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Set Global Variable     ${coemailId}    
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]       ${coemailId}
    list select value    userType    
    ${ssn}    Ssn     
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]     ${ssn} 
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        338383
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    updating data
 

Ssn not null   
     Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Set Global Variable     ${coemailId}    
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]       ${coemailId}
    list select value    userType    
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        338383
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    Validation error
Invalid Ssn
        
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Set Global Variable     ${coemailId}    
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]       ${coemailId}
    list select value    userType    
    ${ssn}         Invalid Ssn  
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]     ${ssn} 
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        338383
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    Validation error
    
Ssn allow numbers
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Set Global Variable     ${coemailId}    
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]       ${coemailId}
    list select value    userType    
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]     347823423
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        338383
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    updating data
    
Ssn space before
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Set Global Variable     ${coemailId}    
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]       ${coemailId}
    list select value    userType    
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]      "  012-34-5678 " 
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        338383
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    updating data
    
Ssn space after
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Set Global Variable     ${coemailId}    
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]       ${coemailId}
    list select value    userType    
    ${ssn}         Invalid Ssn  
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]     "012-34-5678 " 
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        338383
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    updating data
    

Marital status validation
    list default    marital
    list all    marital
    list multiple selection    marital
    list order    marital
    list select value    marital
    

Gender validation
    list all    gender
    list default    gender
    list multiple selection    gender
    list order    gender
    list select value    gender
    
Ethnicity validation
    list all    ethnicity
    list default    ethnicity
    list multiple selection    ethnicity
    list order    ethnicity
    list select value    ethnicity
    
race validation
    list all    race
    list default    race
    list multiple selection    race
    list order    race
    list select value    race
    
Veteran validation
    list all    veteran
    list default    veteran
    list multiple selection    veteran
    list order    veteran
    list select value    veteran
    
EmployeeBasis validation
    list all    employeeBasis
    list default    employeeBasis
    list multiple selection    employeeBasis
    list order    employeeBasis
    list select value    employeeBasis

Employee Start Date validation
     ${start_date}   Get Current Date    xpath=//*[@id="employeeStartDate"]
     Log to Console    Employee start default value     ${start_date} 
     Evaluate    ${start_date} = %m.%d.%Y   
     Selenium2Library.Input Text    xpath=//*[@id="employeeStartDate"]     "2/2/2018"  
         
Employee End Date validation   
     ${start_date}   Get Current Date    xpath=//*[@id="employeeEndDate"]
     Log to Console    Employee start default value     ${start_date} 
     Evaluate    ${start_date} = %m.%d.%Y   
     Selenium2Library.Input Text    xpath=//*[@id="employeeEndDate"]     "2/2/2018"  
     
EmployeePayrollSchedule validation
    list all    employeePayrollSchedule
    list default    employeePayrollSchedule
    list multiple selection    employeePayrollSchedule
    list order    employeePayrollSchedule
    list select value    employeePayrollSchedule
    
EmployeeAvgHoursWeek not 0
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Selenium2Library.Input Text    xpath=//*[@id="loginID"]     ""
    list select value    userType    
    ${ssn}    Ssn     
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]     ${ssn} 
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        0
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    Validation Error
    
EmployeeAvgHoursWeek no alphabets, special character, space, maxlength
    
   numeric noalphabets    employeeAvgHoursWeek
   numeric nospecialcharacter    employeeAvgHoursWeek
   numeric space    employeeAvgHoursWeek
   ${number_space}   Selenium2Library.Input Text   xpath=//input[@id="employeeAvgHoursWeek"]    33 444 
   ${number_nospace}      Selenium2Library.Get Value   xpath=//input[@id="employeeAvgHoursWeek"]     
   Should Not Be Equal       ${number_space}       ${number_nospace}  
   Log to Console   ${number_space}
   Log to Console   ${number_nospace} 
   Log To Console   validation for numeric space
   numeric maximumlength    employeeAvgHoursWeek
   

EmployeeWageType validation
    list all    employeeWageType
    list default    employeeWageType
    list multiple selection    employeeWageType
    list order    employeeWageType
    list select value    employeeWageType
    
Employee Wage no alphabets, special character, space, maxlength
    
   numeric noalphabets    employeeWage
   numeric nospecialcharacter    employeeWage
   numeric space    employeeWage
   ${number_space}   Selenium2Library.Input Text   xpath=//input[@id="employeeWage"]    33 444 
   ${number_nospace}      Selenium2Library.Get Value   xpath=//input[@id="employeeWage"]     
   Should Not Be Equal       ${number_space}       ${number_nospace}  
   Log to Console   ${number_space}
   Log to Console   ${number_nospace} 
   Log To Console   validation for numeric space
   numeric maximumlength    employeeWage
 

WorkAuthorization validation
    list all    workAuthorization
    list default    workAuthorization
    list multiple selection    workAuthorization
    list order    workAuthorization
    list select value    workAuthorization

Button validation
    button active    save-btn
    button active   cancel-btn
    button rightname    save-btn
    button rightname    cancel-btn
    
Cancel button reset fields
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Selenium2Library.Input Text    xpath=//*[@id="loginID"]     ""
    Selenium2Library.Select From List By Index    xpath=//input[@id="userType"]      2
    ${ssn}    Ssn     
    Selenium2Library.Input Text    xpath=//input[@id="ssn"]     ${ssn} 
    Scroll Element Into View     xpath=//*[@id="save-btn"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="save-btn"]    30s  
    list select value    marital
    list select value   gender
    list select value   ethnicity
    list select value   race
    list select value    veteran
    list select value   employeeBasis
    Selenium2Library.Input Text  xpath=//input[@id="employeeStartDate"]     01/21/2020
    Selenium2Library.Input Text  xpath=//input[@id="employeeEndDate"]     01/24/2025
    list select value    employeePayrollSchedule
    Selenium2Library.Input Text    xpath=//input[@id="employeeAvgHoursWeek"]        232
    list select value    employeeWageType
    Selenium2Library.Input Text  xpath=//input[@id="employeeWage"]     384374
    list select value    workAuthorization
    Click Button    xpath=//*[@class="btn btn-secondary btn-round"]   
    Scroll Element Into View    xpath=//*[@id="userType"]  
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="emailId"]     20s
    List Selection Should Be    xpath=//*[@id="userType"]      CEO  
    Textfield Value Should Be   xpath=//input[@id="loginID"]        ${EMPTY}
    Textfield Value Should Be   xpath=//input[@id="ssn"]       ${EMPTY}
  



   
    

    
    


    
 







  
    








    

    




