***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String   
Library   Collections    
Suite Teardown     Close Browser
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/genericfunctions.robot

*** Test Cases ***

Add employee and view record
         login
    open link   employees   Add 
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="emailId"]     20s
    Selenium2Library.Select From List By Index    xpath=//*[@id="userType"]     2
     ${coemailId}     email  
     Set Global Variable     ${coemailId}   
    Selenium2Library.Input Text    xpath=//input[@id="emailId"]     ${coemailId}
    ${coemail_view}   Get Text     xpath=//input[@id="emailId"]
    Selenium2Library.Input Text    xpath=//input[@id="confirmEmailId"]     ${coemailId}
     ${password}     Password 
    Selenium2Library.Input Text    xpath=//input[@id="password"]        ${password}
    Selenium2Library.Input Text    xpath=//input[@id="confirmPassword"]        ${password}
    ${First Name}   First Name
    Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name}
    ${FirstName_view}   Get Text   xpath=//input[@id="fname"]                 
    ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    ${LastName_view}   Get Text   xpath=//input[@id="fname"] 
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
    list select value    primaryPhoneNumberType
    list select value    primaryCountryCode
    list select value    secondaryPhoneNumberType
    list select value    secondaryCountryCode
    Set Selenium Speed    1s
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="primaryPhoneNumber"]    ${Phone Number}
    ${PhoneNumber_view}  Get Text  xpath=//input[@id="primaryPhoneNumber"]
    Selenium2Library.Input Text    xpath=//input[@id="secondaryPhoneNumber"]    ${Phone Number}
     Selenium2Library.Input Text    xpath=//input[@id="primaryAddressLine1"]     ${Address1}
     ${pAddress1_view}  Get Text  xpath=//input[@id="primaryAddressLine1"]
    Selenium2Library.Input Text    xpath=//input[@id="primaryAddressLine2"]      ${Address2}
     ${pAddress2_view}  Get Text  xpath=//input[@id="primaryAddressLine2"]
    Selenium2Library.Input Text    xpath=//input[@id="primaryAddressCity"]     ${City}
     ${pCity_view}  Get Text  xpath=//input[@id="primaryAddressCity"]
    Selenium2Library.Input Text    xpath=//input[@id="primaryAddressState"]     ${State}
     ${pState_view}  Get Text  xpath=//input[@id="primaryAddressState"]
    Selenium2Library.Input Text    xpath=//input[@id="primaryAddressZipcode"]     ${Zipcode}
     ${pZipcode_view}  Get Text  xpath=//input[@id="primaryAddressZipcode"]
    Selenium2Library.Input Text    xpath=//input[@id="mailingAddressLine1"]     ${Address1}
     ${mAddress1_view}  Get Text  xpath=//input[@id="mailingAddressLine1"]
    Selenium2Library.Input Text    xpath=//input[@id="mailingAddressLine2"]      ${Address2}
    ${mAddress2_view}  Get Text  xpath=//input[@id="mailingAddressLine2"]
    Selenium2Library.Input Text    xpath=//input[@id="mailingAddressCity"]     ${City}
    ${mCity_view}  Get Text  xpath=//input[@id="mailingAddressCity"]
    Selenium2Library.Input Text    xpath=//input[@id="mailingAddressState"]     ${State}
    ${mState_view}  Get Text  xpath=//input[@id="mailingAddressState"]
    Selenium2Library.Input Text    xpath=//input[@id="mailingAddressZipcode"]     ${Zipcode}
    ${mZipcode_view}  Get Text  xpath=//input[@id="mailingAddressZipcode"]
    updating data    
    Reload Page
    open link   employees  View 
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="viewbutton"]  20s
    Selenium2Library.Select From List By Index    xpath=//*[@id="usertypes"]     3 
     Click Element At Coordinates   xpath=//select[@id="usersloginid"][@class="form-control"]  0    0
    @{List_items}  Get List Items   xpath=//select[@id="usersloginid"][@class="form-control"]  
    ${Firstname_lowercase}   Convert To Lowercase   ${First Name}
    ${Lastname_lowercase}  Convert To Lowercase    ${Last Name}
    ${name}   Catenate       ${Firstname_lowercase} ${Lastname_lowercase}
    ${name_lowercase}    Convert To Lowercase   ${name} 
     ${Get_index}  Get Index From List     ${List_items}      ${name}   
    ${Index_string}  Convert To String  ${Get_index} 
    Selenium2Library.Select From List By Index     xpath=//select[@id="usersloginid"][@class="form-control"]    ${Index_string}
    Click button    xpath=//*[@id="viewbutton"]
    Set Selenium Speed    1s
    Scroll Element Into View    xpath=//input[@id="primaryPhoneNumber"] 
    Selenium2Library.Page Should Contain Element    xpath=//*[@id="primaryPhoneNumber"]
    List Selection Should Be    xpath=//*[@id="userType"]     Manager
    Element Text Should Be   xpath=//input[@id="emailId"]     ${coemail_view}
    Element Text Should Be   xpath=//input[@id="fname"]   ${FirstName_view} 
    Element Text Should Be  xpath=//input[@id="lname"]   ${LastName_view} 
    Element Text Should Be   xpath=//input[@id="primaryPhoneNumber"]   ${PhoneNumber_view}  
    Element Text Should Be   xpath=//input[@id="secondaryPhoneNumber"]   ${PhoneNumber_view}
    Scroll Element Into View    xpath=//input[@id="mailingAddressZipcode"] 
    Element Text Should Be    xpath=//input[@id="primaryAddressLine1"]     ${pAddress1_view}
    Element Text Should Be    xpath=//input[@id="primaryAddressLine2"]      ${pAddress2_view}
    Element Text Should Be    xpath=//input[@id="primaryAddressCity"]     ${pCity_view}
    Element Text Should Be    xpath=//input[@id="primaryAddressState"]     ${pState_view}
    Element Text Should Be    xpath=//input[@id="primaryAddressZipcode"]     ${pZipcode_view}
    Element Text Should Be      xpath=//input[@id="mailingAddressLine1"]     ${mAddress1_view}
    Element Text Should Be    xpath=//input[@id="mailingAddressLine2"]      ${mAddress2_view}
    Element Text Should Be    xpath=//input[@id="mailingAddressCity"]     ${mCity_view}
    Element Text Should Be    xpath=//input[@id="mailingAddressState"]     ${mState_view}
    Element Text Should Be    xpath=//input[@id="mailingAddressZipcode"]    ${mZipcode_view}
