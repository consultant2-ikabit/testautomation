***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String   
Library   Collections      
Resource    ../../Resources/genericfunctions.robot




*** Test Cases ***
    
View inactive supplier with no existing supplier
    login
   
    open link    supplier    View   
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="viewbtn"]  30s
     Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"] 
    Selenium2Library.Select Checkbox    xpath=//*[@id="supplier"]
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"]  
     List Should Not Contain Value    ${List_items}   SUPPLIER1    
     logout and close browser
        


