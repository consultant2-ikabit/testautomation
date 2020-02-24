***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String  
Library    Collections
#Test Teardown    Run Keyword If Test Failed     Close Browser  
Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***

Add and View contractor
    login
    add and search contractor
    Set Browser Implicit Wait    20s
    Selenium2Library.Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="viewbtn"]   20s
Firstname Null validation
      Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Page Contains Element    xpath=//input[@id="pnumber"]   
    Selenium2Library.Input Text    xpath=//input[@id="fname"]    ${EMPTY}  
    Clear Element Text     xpath=//input[@id="fname"] 
    Scroll Element Into View    xpath=//*[@id="submit"] 
    Wait Until Page Contains Element    xpath=//*[@id="submit"]  
    validation error modify form
    
Last name Null validation
    Reload Page
   Set Global Variable   ${Index_string}   
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string} 
    Selenium2Library.Wait Until Element Is Visible      xpath=//select[@id="selectsupplier"][@class="form-control"]    40s
    Selenium2Library.Click Button    xpath=//*[@id="viewbtn"]   
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="pnumber"]   40s 
    Selenium2Library.Input Text    xpath=//input[@id="lname"]    ${EMPTY}
    validation error modify form
    logout and close browser
   
 

