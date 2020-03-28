***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String  
Library    Collections
Suite Teardown    Close Browser
Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***

Add and View contractor
    login
    add and search contractor
    Set Browser Implicit Wait    50s
    Selenium2Library.Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="viewbtn"]  50s
Firstname Null validation
    
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="pnumber"]   40s 
    Selenium2Library.Input Text    xpath=//input[@id="fname"]    ${EMPTY} 
    Wait Until Element Is Visible    xpath=//input[@id="fname"]    20s
    Scroll Element Into View     xpath=//*[@id="submit"]
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="submit"]  10s
    Click Button    xpath=//*[@id="submit"]
    Page Should Contain    Validation Error    
         Click Button    xpath=//*[@class="btn btn-round btn-primary"] 

    
Last name Null validation
    Reload Page
    Set Global Variable   ${Index_string}   
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string} 
    Selenium2Library.Wait Until Page Contains Element      xpath=//select[@id="selectsupplier"][@class="form-control"]    40s
   Selenium2Library.Click Button    xpath=//*[@id="viewbtn"]   
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="pnumber"]   40s 
    Selenium2Library.Input Text    xpath=//input[@id="lname"]    ${EMPTY}
    Scroll Element Into View     xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="submit"]  10s
    Click Button    xpath=//*[@id="submit"]
    Page Should Contain    Validation Error    
     Click Button    xpath=//*[@class="btn btn-round btn-primary"] 
     logout and close browser
   
 

