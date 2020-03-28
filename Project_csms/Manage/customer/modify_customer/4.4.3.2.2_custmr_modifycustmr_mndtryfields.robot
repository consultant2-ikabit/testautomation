***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String  
Library    Collections
Suite Teardown    Close Browser
Resource    ../../Resources/genericfunctions.robot


*** Test Cases ***

Add and View customer
    login
    add and search customer
      Set Browser Implicit Wait    50s
    Selenium2Library.Click Button    xpath=//*[@id="viewbtn"]
 
Firstname Null validation
   
   
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="pnumber"]   100s
    Selenium2Library.Input Text    xpath=//input[@id="fname"]    ${EMPTY}
        Scroll Element Into View    xpath=//*[@id="update"] 
    validation error modify form 
    
Last name Null validation
    Reload Page
    Set Global Variable   ${Index_string}   
    Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectcustomer"][@class="form-control"]    ${Index_string} 
    Selenium2Library.Wait Until Element Is Visible      xpath=//select[@id="selectcustomer"][@class="form-control"]    40s
    Selenium2Library.Click Button    xpath=//*[@id="viewbtn"]   
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="pnumber"]   60s 
    Selenium2Library.Input Text    xpath=//input[@id="lname"]    ${EMPTY}
        Scroll Element Into View    xpath=//*[@id="update"] 
    validation error modify form
   

