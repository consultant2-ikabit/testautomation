***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String 
Library    Collections
Test Teardown    Run Keyword If Test Failed     Close Browser       


Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/button.robot


*** Test Cases ***

view inactive customer 
    login
    open link   customer  Add  
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    ${Companynm}  Company
     Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="savebtn"]
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumber"]    ${Phone Number}   
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress
    secondary houseaddress
    updating data   
# Delete the  customer   
    open link   customer  Delete 
    
     Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="submit"]  
     Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@name="selectcustomer"][@class="form-control"]  
    ${Companynm_lowercase}=   Convert To Lowercase    ${Companynm}
    ${Get_index}=  Get Index From List     ${List_items}      ${Companynm_lowercase}   
    ${Index_string}=  Convert To String  ${Get_index} 
    Set Global Variable   ${Index_string}  
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectcustomer"][@class="form-control"]    ${Index_string}
    Selenium2Library.Click Button    xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Page Contains Element   xpath=//*[@id="failDeleteDismiss"]
    Selenium2Library.Click Button   xpath=//*[@id="failDeleteDismiss"]
# View deleted customer
    open link   customer   View
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="viewbtn"]  30s
     Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@name="selectcustomer"][@class="form-control"] 
    List Should Not Contain Value    ${List_items}    ${Companynm_lowercase}  
    Selenium2Library.Select Checkbox    xpath=//*[@id="customer"]
    Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@name="selectcustomer"][@class="form-control"]  
    ${Companynm_lowercase}=   Convert To Lowercase    ${Companynm}
    ${Get_index}=  Get Index From List     ${List_items}      ${Companynm_lowercase}   
    ${Index_string}=  Convert To String  ${Get_index} 
    Set Global Variable   ${Index_string}  
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectcustomer"][@class="form-control"]    ${Index_string}
     List Should Contain Value  ${List_items}    ${Companynm_lowercase}
        List Should Not Contain Value    ${List_items}   CUSTOMER
     logout and close browser
        
           