***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String   
Library   Collections    
 
Test Teardown        Run Keyword And Continue On Failure    Log    FAIL
Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***
View inactive contractor with no existing contractor
    login
    open link  contractor   View
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="viewbtn"]  
     Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"] 
    Selenium2Library.Select Checkbox    xpath=//*[@id="contractor"]
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"]  
     List Should Not Contain Value    ${List_items}   CONTRACTOR  
     logout and close browser


