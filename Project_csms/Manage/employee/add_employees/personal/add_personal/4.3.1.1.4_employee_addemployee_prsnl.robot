*** Settings ***
Library    Selenium2Library    
Library    FakerLibrary    locale=en_US
Library   String
Library   Collections    
Suite Teardown    Close Browser

Resource    ../../../../Resources/dropdownlist.robot  
Resource    ../../../../Resources/genericfunctions.robot


*** Test Cases ***
Add Employee cancel button reset fields
    
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
    
    open link    employees    Add
    Selenium2Library.Click Element   xpath=//*[@href="/manage/employeeAdd/Confidential"] 
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Click Button    xpath=//*[@class="btn btn-secondary btn-round"]   
    list select value    userType  
    Set Global Variable     ${coemailId}    
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]       ${coemailId}  
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

    open link    employees    Modify
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="viewbutton"]     20s
    Selenium2Library.Select From List By Index    xpath=//*[@id="userType"]     0 
    Click Element At Coordinates   xpath=//select[@id="usersloginid"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="usersloginid"][@class="form-control"]  
    ${firstname_lowercase}   Convert To Lowercase    ${First Name}
    ${lastname_lowercase}    Convert To Lowercase    ${Last Name}
    ${append_name}=  Catenate  ${firstname_lowercase} ${lastname_lowercase}  
    Log To Console     ${append_name}     
    ${Get_index}   Get Index From List     ${List_items}       ${append_name}  
    ${Index_string}   Convert To String  ${Get_index} 
    List Should Not Contain Value   ${List_items}    ${Get_index}   
