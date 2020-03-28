***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String 
Library   Collections    
Suite Teardown    Close Browser
Resource    ../../Resources/genericfunctions.robot

*** Test Cases ***

Add and view contractor
    login
    add and search contractor
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Page Contains Element       xpath=//*[@id="viewbtn"]   
    
Modify Details
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    set selenium speed   1s
    Selenium2Library.Wait Until Page Contains Element    xpath=//input[@id="pnumber"]    100s
    ${First_name_modify}   First Name
    Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First_name_modify} 
    ${First_name}=   Selenium2Library.Get Text    xpath=//input[@id="fname"]   
    ${Last_name_modify}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last_name_modify} 
    ${Last_name}=   Selenium2Library.Get Text   xpath=//input[@id="lname"]  
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible   xpath=//*[@id="submit"]   100s 
     ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    ${Secondary_number}=   Selenium2Library.Get Text    xpath=//input[@id="snumber"]  
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Page Should Contain    Updating Data
    Selenium2Library.Wait Until Page Contains Element   xpath=//*[@class="btn btn-round btn-primary"]   30s
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@class="btn btn-primary btn-round"]    30s
 
#  Check modified details are saved
    Reload Page
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    Set Global Variable   ${Index_string} 
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string}
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Page Contains Element       xpath=//*[@id="viewbtn"]   
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Page Contains Element    xpath=//input[@id="pnumber"]   
    Element Text Should Be   xpath=//input[@id="fname"]   ${First_name} 
    Element Text Should Be  xpath=//input[@id="lname"]   ${Last_name}   
    Element Text Should Be   xpath=//input[@id="snumber"]    ${Secondary_number}

