***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String 
Library   Collections    
Suite Teardown    Close Browser
Resource    ../../Resources/genericfunctions.robot

*** Test Cases ***

Add and view customer
    login
    add and search customer
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Page Contains Element       xpath=//*[@id="viewbtn"]     60s
    
Modify Details
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Page Contains Element    xpath=//input[@id="pnumber"]   40s
    ${First_name_modify}   First Name
    Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First_name_modify} 
    ${First_name}=   Selenium2Library.Get Text    xpath=//input[@id="fname"]   
    ${Last_name_modify}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last_name_modify} 
    ${Last_name}=   Selenium2Library.Get Text   xpath=//input[@id="lname"]  
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="update"]
    Selenium2Library.Wait Until Element Is Visible   xpath=//*[@id="update"]   40s 
     ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    ${Secondary_number}=   Selenium2Library.Get Text    xpath=//input[@id="snumber"]  
      updating data modify form
 
#  Check modified details are saved
    Reload Page
    Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    Set Global Variable   ${Index_string} 
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectcustomer"][@class="form-control"]    ${Index_string}
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Page Contains Element       xpath=//*[@id="viewbtn"]    40s
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Page Contains Element    xpath=//input[@id="pnumber"]    40s
    Element Text Should Be   xpath=//input[@id="fname"]   ${First_name} 
    Element Text Should Be  xpath=//input[@id="lname"]   ${Last_name}   
    Element Text Should Be   xpath=//input[@id="snumber"]    ${Secondary_number}
   