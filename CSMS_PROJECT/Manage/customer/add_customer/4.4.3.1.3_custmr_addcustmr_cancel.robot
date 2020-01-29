***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
 
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
Resource    ../../Resources/button.robot
Variables    ../../Resources/data1.py
Resource    ../../Resources/customerdata.robot
*** Test Cases ***  
#
*** Test Cases ***

    
CustomerAdd
    login
    Go To    localhost:3000/manage
    Selenium2Library.Click Element    xpath=//*[@href="/manage/customer"]   
    Selenium2Library.Click Element   xpath=//*[@href="/manage/customerAdd"]  


Add customer cancel button reset fields
    
   
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s
   
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    ${coemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]     ${First Name}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="savebtn"]  
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
 
