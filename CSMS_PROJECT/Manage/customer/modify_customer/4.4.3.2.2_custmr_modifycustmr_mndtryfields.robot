***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String  

Variables    ../../Resources/data1.py
Resource    ../../Resources/genericfunctions.robot
*** Test Cases ***




    
CustomerAdd
    login
    Go To    localhost:3000/manage
    Selenium2Library.Click Element    xpath=//*[@href="/manage/customer"]   
    Selenium2Library.Click Element   xpath=//*[@href="/manage/customerAdd"]  


Company Name NotNull
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s
     ${coemail}     Email   
    log to console   ${coemail}
    ${Company Email}=  Random Number    digits=3
    

Email NotNull 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data  ${customer5}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
 


ConfirmEmail NotNull 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data  ${customer5}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
 

First Name NotNull
    
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data  ${customer5}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
    
Last Name NotNull
    
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data  ${customer5}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s


