***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String 
Library   Collections    
Suite Teardown    Close Browser
Resource    ../../Resources/genericfunctions.robot

*** Test Cases ***

Add and view supplier
    login
    add and search supplier
    Click Button    xpath=//*[@id="view"]
    Selenium2Library.Wait Until Page Contains Element      xpath=//*[@id="view"]   
    
Modify Details
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Page Contains Element    xpath=//input[@id="pnumber"]   
    ${First_name_modify}   First Name
    Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First_name_modify} 
    ${First_name}=   Selenium2Library.Get Value    xpath=//input[@id="fname"]   
    ${Last_name_modify}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last_name_modify} 
    ${Last_name}=   Selenium2Library.Get Value   xpath=//input[@id="lname"]  
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="update"]
    Selenium2Library.Wait Until Page Contains Element   xpath=//*[@id="update"]   
     ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    ${Secondary_number}=   Selenium2Library.Get Value    xpath=//input[@id="snumber"]  
      updating data modify form
 
#  Check modified details are saved
    Reload Page
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"]  
    List Should Not Contain Value     ${List_items}     SUPPLIER 
