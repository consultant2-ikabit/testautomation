***Settings***
Library    Selenium2Library    
Library    FakerLibrary    locale=en_US
Library    String
Library    Collections    
Resource    ../../Resources/genericfunctions.robot
Suite Teardown    Close Browser


*** Test Cases ***

    
Supplier Add
    login
  
#Tests if the add functionality works  and record is added to DB
 
    open link    supplier    Add
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="suppemail"]     
    ${suppnm}  Company
     Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppnm}
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
    mandatory fields
    primary houseaddress
    secondary houseaddress
    updating data   
    open link    supplier    Modify
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="view"]  
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectsupplier"]
     ${suppnm_lowercase}=   Convert To Lowercase    ${suppnm}
    List Should Contain Value    ${List_items}     ${suppnm_lowercase} 
   