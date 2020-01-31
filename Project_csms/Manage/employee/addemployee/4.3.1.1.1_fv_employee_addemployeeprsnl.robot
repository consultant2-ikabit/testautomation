*** Settings ***
Library    Selenium2Library    
Resource    ../../Resources/dropdownlist.robot  
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
     
*** Test Cases ***
Test for user Type
   login
   Go To    localhost:3000/manage
   Selenium2Library.Click Element   xpath=//*[@href="/manage/employees"]   
   Go To    localhost:3000/manage/employees
   Selenium2Library.Click Element   xpath=//*[@href="/manage/employeesAdd"]   
   list default  userType
   list all  userType
   list select value    userType
   list sort   userType
   list multiple selection   userType
    
Test for LoginId  
    text notnull  emailId    
    Selenium2Library.Input Text   xpath=//input[@id="confirmEmailId"]    Company1@gmail.com
    Selenium2Library.Input Text   xpath=//input[@id="password"]         passwd
    Selenium2Library.Input Text   xpath=//input[@id="confirmPassword"]  passwd
    Selenium2Library.Input Text   xpath=//input[@id="fname"]   First Name
    Selenium2Library.Input Text   xpath=//input[@id="lname"]   Last Name
    Scroll Element Into View    xpath=//*[@class="btn btn-primary btn-round"]
    
    list select value  primaryPhoneNumberType
    list select value  primaryCountryCode
    text number  primaryPhoneNumber
    list select value  secondaryPhoneNumberType
    list select value  secondaryCountryCode
    text number  secondaryPhoneNumber
   
    Selenium2Library.Input Text   xpath=//input[@id="primaryAddressLine1"]    123, 8thPL
    Selenium2Library.Input Text   xpath=//input[@id="primaryAddressLine2"]  SE
    Selenium2Library.Input Text   xpath=//input[@id="primaryAddressCity"]   Northbend
    Selenium2Library.Input Text   xpath=//input[@id="primaryAddressState"]  WA
    Selenium2Library.Input Text   xpath=//input[@id="primaryAddressZipcode"]   98078
    Selenium2Library.Input Text   xpath=//input[@id="mailingAddressLine1"]    123, 8thPL
    Selenium2Library.Input Text   xpath=//input[@id="mailingAddressLine2"]  SE
    Selenium2Library.Input Text   xpath=//input[@id="mailingAddressCity"]   Northbend
    Selenium2Library.Input Text   xpath=//input[@id="mailingAddressState"]  WA
    Selenium2Library.Input Text   xpath=//input[@id="mailingAddressZipcode"]   98078
 
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
  
    Scroll Element Into View    xpath=//*[@id="confirmEmailId"]
    text maxlength  emailId
    Scroll Element Into View    xpath=//*[@class="btn btn-primary btn-round"]
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
    Run Keyword And Ignore Error    Log    Login ID Max Length Successful
    
    Scroll Element Into View    xpath=//*[@id="confirmEmailId"]
    
    Press Keys   xpath=//input[@id="emailId"]    Ctrl+ A
    Press Keys   xpath=//input[@id="emailId"]    Ctrl + c
    Press Keys   xpath=//input[@id="emailId"]    Ctrl+ v 
    Scroll Element Into View    xpath=//*[@class="btn btn-primary btn-round"]
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
    
      