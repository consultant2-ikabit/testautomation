***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
 
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***

    
CustomerAdd
    login
    open link  customer   Add  


Add customer cancel button reset fields
     
      Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    ${coemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields  
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
    Selenium2Library.Click Button   xpath=//*[@id="cancel"]  
    Scroll Element Into View    xpath=//input[@id="companyname"]   
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s
    Textfield Value Should Be     xpath=//input[@id="companyname"]    ${EMPTY}
    Textfield Value Should Be   xpath=//input[@id="email"]        ${EMPTY}
    
    Textfield Value Should Be   xpath=//input[@id="confirmemail"]       ${EMPTY}
    
    logout and close browser
 
