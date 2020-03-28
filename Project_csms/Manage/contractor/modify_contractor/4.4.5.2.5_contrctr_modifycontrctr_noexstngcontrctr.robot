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
    Selenium2Library.Wait Until Page Contains Element      xpath=//*[@id="viewbtn"]   
    
Modify Details
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Page Contains Element    xpath=//input[@id="pnumber"]   
    ${First_name_modify}   First Name
    Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First_name_modify} 
    ${First_name}=   Selenium2Library.Get Value    xpath=//input[@id="fname"]   
    ${Last_name_modify}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last_name_modify} 
    ${Last_name}=   Selenium2Library.Get Value   xpath=//input[@id="lname"]  
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="submit"]
    set selenium speed  2s
    Selenium2Library.Wait Until Page Contains Element   xpath=//*[@id="submit"]   
     ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    ${Secondary_number}=   Selenium2Library.Get Value    xpath=//input[@id="snumber"]  
    Scroll Element Into View    xpath=//*[@id="submit"][@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="submit"][@class="btn btn-primary btn-round"]  100s
    Selenium2Library.Click Button   xpath=//*[@id="submit"][@class="btn btn-primary btn-round"]
    Page Should Contain    Updating Data
    Selenium2Library.Click Button   xpath=//*[@id="successDismiss"][@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="submit"][@class="btn btn-primary btn-round"]  50s


 
#  Check modified details are saved
    Reload Page
    Wait Until Element Is Visible    xpath=//*[@id="viewbtn"]   100s
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"]  
    List Should Not Contain Value     ${List_items}     CONTRACTOR 
