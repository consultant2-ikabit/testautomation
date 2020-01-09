 *** Settings ***
Library   Selenium2Library


***keywords***  
Initial data
    [Arguments]  ${data}
    Log  ${data}
    Selenium2Library.Input Text   xpath=//input[@id="companyname"]    ${data['companyname']}
    Selenium2Library.Input Text   xpath=//input[@id="email"]    ${data['email']}
    Selenium2Library.Input Text   xpath=//input[@id="confirmemail"]   ${data['confirmemail']}
    Selenium2Library.Input Text   xpath=//input[@id="fname"]   ${data['fname']}
    Selenium2Library.Input Text   xpath=//input[@id="lname"]   ${data['mname']}
    
    Selenium2Library.Input Text   xpath=//input[@id="lname"]   ${data['lname']}
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="savebtn"]  
    Selenium2Library.Select From List By Index   xpath=//select[@id="pnumbertype"]  ${data['pnumbertype']}
    Selenium2Library.Select From List By Index   xpath=//select[@id="pcountrycode"]  ${data['pcountrycode']}
    Selenium2Library.Input Text    xpath=//input[@id="pnumber"]   ${data['pnumber']}
   
    Selenium2Library.Select From List By Index   xpath=//select[@id="snumbertype"]  ${data['snumbertype']}
    Selenium2Library.Select From List By Index   xpath=//select[@id="scountrycode"]  ${data['pcountrycode']}
    
    
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]   ${data['snumber']}
    Selenium2Library.Select From List By Index   xpath=//select[@id="countrycode"]        ${data['pcountrycode']}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]   ${data['faxnum']}
    Selenium2Library.Select From List By Index   xpath=//select[@id="faxcountrycode"]  ${data['pcountrycode']}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]   ${data['faxnum']}    
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]   ${data['address1']}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]   ${data['address2']}
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]   ${data['city']}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]   ${data['state']}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]   ${data['zipcode']}
     
     Selenium2Library.Input Text    xpath=//input[@id="maddress1"]   ${data['address1']}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]   ${data['address2']}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]   ${data['city']}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]   ${data['state']}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]   ${data['zipcode']}
    
     
     
     
     
     


