***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String   
Library   Collections    
Suite Teardown     Close Browser
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
Resource    ../../Resources/button.robot



*** Test Cases ***

Add employee and view record
         login
    open link   employees   Add 
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="emailId"]     20s
    Selenium2Library.Select From List By Index    xpath=//*[@id="userType"]     2
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
    Reload Page
    open link   employees  View 
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="viewbutton"]  
    Selenium2Library.Select From List By Index    xpath=//*[@id="usertypes"]     2 
     Click Element At Coordinates   xpath=//select[@id="usersloginid"][@class="form-control"]  0    0
    @{List_items}  Get List Items   xpath=//select[@id="usersloginid"][@class="form-control"]  
     ${First Name}  Convert To Lowercase    ${First Name}
    ${Last Name}   Convert To Lowercase    ${Last Name}
    ${name}   Catenate   ${First Name} ${Last Name} 
    List Should Contain Value    ${List_items}    ${name}      
    

View employee form validation
    
    Set Selenium Speed    2s
    list all    usertypes
    list default   usertypes
    list multiple selection    usertypes
    Click Element At Coordinates   xpath=//select[@id="usersloginid"][@class="form-control"]  0    0
 #   list order    usertypes
     list all   usersloginid
     list multiple selection    usersloginid
 #   list order    usersloginid
     button active    View
     button rightname    View
        






