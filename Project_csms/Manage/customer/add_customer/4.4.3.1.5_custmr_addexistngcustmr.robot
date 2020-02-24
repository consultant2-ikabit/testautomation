***Settings***
Library    Selenium2Library  
Library    Collections    
Library    FakerLibrary    locale=en_US
Library   String    

     
Test Teardown        Run Keyword And Continue On Failure    Log    Fail

Resource    ../../Resources/dropdownlist.robot 

Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***
    
CustomerAdd
    login
    open link  customer  Add

#Email Add already existing customer - using same Email ID 
Customer Add sameEmailID 
 
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]       ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
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
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
   
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}  
    Selenium2Library.Input Text    xpath=//input[@id="email"]        ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]      ${coemail}
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
    Click Button    xpath=//*[@id="savebtn"]  
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]    20s
      ${Error_message}=  Get Text     xpath=//div[@id="apifetch-body"][@class="modal-body"]
     Page Should Contain     ${Error_message} 
      Log To Console    ${Error_message}    
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
   
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
    logout and close browser

