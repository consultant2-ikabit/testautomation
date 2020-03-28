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
 Delete employee record and verify in DB   
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
    open link   employees  Delete 
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="delet-btn"]  
    Selenium2Library.Select From List By Index    xpath=//*[@id="usertypes"]     2 
     Click Element At Coordinates   xpath=//select[@id="usersloginid"][@class="form-control"]  0    0
    @{List_items}  Get List Items   xpath=//select[@id="usersloginid"][@class="form-control"]  
     ${First Name}  Convert To Lowercase    ${First Name}
    ${Last Name}   Convert To Lowercase    ${Last Name}
    ${name}   Catenate   ${First Name} ${Last Name} 
#    ${name_lowercase}=   Convert To Lowercase    ${name}
    ${Get_index}=  Get Index From List     ${List_items}      ${name}   
    ${Index_string}=  Convert To String  ${Get_index} 
    Set Global Variable   ${Index_string}  
    Selenium2Library.Select From List By Index     xpath=//select[@id="usersloginid"][@class="form-control"]    ${Index_string}
    Selenium2Library.Click Button    xpath=//*[@id="delet-btn"]
    Selenium2Library.Wait Until Page Contains Element   xpath=//*[@id="failDeleteDismiss"]
    Selenium2Library.Click Button   xpath=//*[@id="failDeleteDismiss"]  
    open link  employees  View
     Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="viewbutton"]  
    Selenium2Library.Select From List By Index    xpath=//*[@id="usertypes"]     2 
     Click Element At Coordinates   xpath=//select[@id="usersloginid"][@class="form-control"]  0    0
     List Should Contain Value    ${List_items}    ${name}   
     