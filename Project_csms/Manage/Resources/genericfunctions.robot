*** Settings ***
Library   Selenium2Library
Library    FakerLibrary    locale=en_US
Library   String
Library   Collections    

*** Variables ***
${LOGIN URL}     localhost:3000
${BROWSER}        Chrome
${Address1}      36 Wild Rose Ave.
${Address2}      South Mayflower Drive
${City}          Fishers 
${State}         FL
${Zipcode}        32806
${Spl_char}      ")%#@*&!"
${Number}         9837489479


***Keywords***
login
    Open Browser    ${LOGIN URL}    ${BROWSER}
  
    Maximize Browser Window
    Set Browser Implicit Wait    20
  
    Selenium2Library.Input Text  xpath=//input[@id="loginID"]     billgates@gmail.com
    Selenium2Library.Input Text  xpath=//input[@id="password"]    test123A
    Selenium2Library.Input Text  xpath=//input[@id="companyID"]   116101115116
    Click Button   xpath=//*[@class="btn btn-primary" and @id="submit"]
    Wait Until Page Contains Element  xpath=//*[@href="/logout"]     
           
  
   
  
logout and close browser
  Selenium2Library.Click Element   xpath=//*[@href="/logout"]  
  Close Browser 
  
primary houseaddress
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    

secondary houseaddress
  
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    

updating data
    
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Page Should Contain    Updating Data
    Selenium2Library.Wait Until Page Contains Element   xpath=//*[@class="btn btn-round btn-primary"]   10s
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
    Run Keyword And Ignore Error    Fail    
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@class="btn btn-primary btn-round"]    20s


validation error
    
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Page Should Contain    Validation Error
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@class="btn btn-round btn-primary"]   10s 
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@class="btn btn-primary btn-round"]    
 
updating data modify form 
    Scroll Element Into View    xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@class="btn btn-primary btn-round"]  50s
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Page Should Contain    Updating Data
    Selenium2Library.Click Button   xpath=//*[@id="successDismiss"][@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="update"][@class="btn btn-primary btn-round"]  50s


   
validation error modify form 
    Scroll Element Into View    xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Page Contains Element    xpath=//*[@class="btn btn-primary btn-round"]  50s
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Page Should Contain    Validation Error
    Selenium2Library.Click Button   xpath=//*[@id="validationMendatoryDismiss"][@class="btn btn-round btn-primary"]



add and search customer
    open link    customer    Add 
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    ${Companynm}  Company
     Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]      ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]      ${coemail}
    mandatory fields
    primary houseaddress
    secondary houseaddress
    updating data  
    open link    customer    Modify 
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="viewbtn"]  30s
    Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectcustomer"][@class="form-control"]  
    ${Companynm_lowercase}=   Convert To Lowercase    ${Companynm}
    ${Get_index}=  Get Index From List     ${List_items}      ${Companynm_lowercase}   
    ${Index_string}=  Convert To String  ${Get_index} 
    Set Global Variable   ${Index_string}  
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectcustomer"][@class="form-control"]    ${Index_string}
    
add and search supplier
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
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="view"]  30s
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"]  
    ${suppnm_lowercase}=   Convert To Lowercase    ${suppnm}
    ${Get_index}=  Get Index From List     ${List_items}      ${suppnm_lowercase}   
    ${Index_string}=  Convert To String  ${Get_index} 
    Set Global Variable   ${Index_string}  
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string}
 


add and search contractor
    open link    contractor    Add 
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    ${Companynm}  Company
     Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]      ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]      ${coemail}
    mandatory fields
    primary houseaddress
    secondary houseaddress
    updating data  
    open link    contractor    Modify 
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="viewbtn"]  30s
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"]  
    ${Companynm_lowercase}=   Convert To Lowercase    ${Companynm}
    ${Get_index}=  Get Index From List     ${List_items}      ${Companynm_lowercase}   
    ${Index_string}=  Convert To String  ${Get_index} 
    Set Global Variable   ${Index_string}  
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string}
        

open link
     [arguments]  ${modulename}   ${form}
   
    Selenium2Library.Click Element   xpath=//*[@href="/manage"]
    Selenium2Library.Click Element   xpath=//*[@href="/manage/${modulename}"]
    Selenium2Library.Click Element   xpath=//*[@href="/manage/${modulename}${form}"]
    
mandatory fields
    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumber"]    ${Phone Number}   
    
    