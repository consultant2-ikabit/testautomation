***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String    
 
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
Resource    ../../Resources/button.robot
Variables    ../../Resources/data1.py
Resource    ../../Resources/customerdata.robot



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
 

***Comment***
    Initial data  ${customer1}
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Page Should Contain    Validation Error 
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]    20s
     Selenium2Library.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20ss

*** Test Cases ***