***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
 
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
Resource    ../../Resources/button.robot


*** Test Cases ***

    
Supplier Add
    login
    open link    supplier    Add

Add supplier cancel button reset fields
    
   
    Selenium2Library.Wait Until Page Contains Element      xpath=//*[@id="suppemail"]     
   
    ${suppnm}  Company 
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppnm}
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]     ${First Name}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
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
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-secondary btn-round"]  
    Scroll Element Into View    xpath=//input[@id="suppname"]   
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="suppemail"]     20s
    
    Element Text Should Be     xpath=//input[@id="suppname"]    ${EMPTY}
    Element Text Should Be   xpath=//input[@id="suppemail"]        ${EMPTY}
    
    

    logout and close browser
 
