***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String  
Library    Collections

Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***

    
Add and view customer
    login
    Go To    localhost:3000/manage
  
    Selenium2Library.Click Element   xpath=//*[@href="/manage"]  
    Selenium2Library.Click Element    xpath=//*[@href="/manage/customer"]   
    Selenium2Library.Click Element   xpath=//*[@href="/manage/customerAdd"]  
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s
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
    update form   

    Selenium2Library.Click Element   xpath=//*[@href="/manage"]
    Selenium2Library.Click Element   xpath=//*[@href="/manage/customer"]
    Selenium2Library.Click Element   xpath=//*[@href="/manage/customerModify"]  
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="viewbtn"]  30s

         
     
     @{List_items}=  Get List Items   xpath=//select[@name="selectcustomer"][@class="form-control"]
   
     ${Companynm_lowercase}=   Convert To Lowercase    ${Companynm}
     ${Get_index}=  Get Index From List     ${List_items}      ${Companynm_lowercase}   
     ${Index_string}=  Convert To String  ${Get_index} 
      Set Global Variable   ${Index_string}   
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectcustomer"][@class="form-control"]    ${Index_string}
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Element Is Visible       xpath=//*[@id="viewbtn"]   20s

Firstname Null validation
     Reload Page
    Set Global Variable   ${Index_string}   
    Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectcustomer"][@class="form-control"]    ${Index_string}
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Element Is Visible       xpath=//*[@id="viewbtn"]   20s

    Scroll Element Into View    xpath=//*[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="pnumber"]   20s
 
    Selenium2Library.Input Text    xpath=//input[@id="fname"]    ${EMPTY}
    Scroll Element Into View    xpath=//*[@id="update"]
    Selenium2Library.Click Button   xpath=//*[@id="update"][@class="btn btn-primary btn-round"]
    Page Should Contain    Validation Error
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]    20s
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
    
Lastname Null validation
   Reload Page
    Set Global Variable   ${Index_string}   
    Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectcustomer"][@class="form-control"]    ${Index_string}
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Element Is Visible       xpath=//*[@id="viewbtn"]   20s

    Scroll Element Into View    xpath=//*[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="pnumber"]   20s
 
    Selenium2Library.Input Text    xpath=//input[@id="lname"]    ${EMPTY}
    Scroll Element Into View    xpath=//*[@id="update"]
    
    Selenium2Library.Click Button   xpath=//*[@id="update"][@class="btn btn-primary btn-round"]
    Page Should Contain    Validation Error
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]    20s
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
    
    logout and close browser


