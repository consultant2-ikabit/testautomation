***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String   
Library   Collections    

Suite Teardown    Close Browser
Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***
View inactive customer with no existing customer
    login
    open link  customer   View
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="viewbtn"]    100s
     Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectcustomer"][@class="form-control"] 
    Selenium2Library.Select Checkbox    xpath=//*[@id="customer"]
    Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectcustomer"][@class="form-control"]  
     List Should Not Contain Value    ${List_items}   CUSTOMER   
 


