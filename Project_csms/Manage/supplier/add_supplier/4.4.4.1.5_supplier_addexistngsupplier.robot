***Settings***
Library    Selenium2Library  
Library    Collections    
Library    FakerLibrary    locale=en_US
Library   String    
 
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***
 Supplier Add
    login
    open link    supplier    Add

#Email Add already existing supplier- using same Email ID 
Supplier Add sameEmailID 
 
  
    ${suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppnm}
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]       ${suppemail}
    mandatory fields  
    list select value    pnumbertype
    list select value    pcountrycode
    ${Phone Number}     Phone Number
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress
    secondary houseaddress
    updating data
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="suppemail"]     20s
   
    ${suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppnm}  
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]        ${suppemail}
    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]     ${First Name}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="submit"]  
    list select value    pnumbertype
    list select value    pcountrycode
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumber"]    ${Phone Number}
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress
    secondary houseaddress
    Click Button    xpath=//*[@id="submit"]  
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]    20s
      ${Error_message}=  Get Text     xpath=//div[@id="apifetch-body"][@class="modal-body"]
     Page Should Contain     ${Error_message} 
      Log To Console    ${Error_message}    
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
   
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s

    logout and close browser 