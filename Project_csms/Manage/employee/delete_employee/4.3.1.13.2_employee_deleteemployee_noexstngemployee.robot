***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String   
Library   Collections    
Library   Collections    
Suite Teardown     Close Browser
Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***
View inactive employees with no existing customer
    login
    open link  employees   Delete
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="delet-btn"]  
     Click Element At Coordinates   xpath=//select[@id="usersloginid"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="usersloginid"][@class="form-control"] 
     List Should Not Contain Value    ${List_items}   EMPLOYEES  



