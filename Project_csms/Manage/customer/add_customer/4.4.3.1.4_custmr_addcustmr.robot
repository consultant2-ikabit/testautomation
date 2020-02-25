***Settings***
Library    Selenium2Library    
Library    FakerLibrary    locale=en_US
Library   String
Library   Collections 
Test Teardown        Run Keyword And Continue On Failure    Log    Fail  
Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***

    
CustomerAdd
    login
    open link    customer    Add
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    ${Companynm}  Company
     Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
    primary houseaddress
    secondary houseaddress
    updating data 
#Tests if the add functionality works  and record is added to DB  
    open link    customer    View
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="viewbtn"]  30s
    Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectcustomer"][@class="form-control"]  
    ${Companynm_lowercase}=   Convert To Lowercase    ${Companynm}
    List Should Contain Value    ${List_items}     ${Companynm_lowercase}     

    logout and close browser