*** Settings ***
Library    Selenium2Library    
Library    FakerLibrary    locale=en_US
Library   String
Suite Teardown    Close Browser
Resource    ../../../Resources/dropdownlist.robot
Resource    ../../../Resources/genericfunctions.robot




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
    
Ssn not Null
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
 
