
*** Settings ***
Library     Selenium2Library    
Resource    ../../Resources/dropdownlist.robot  
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
Variables   ../../Resources/data1.py
Resource    ../../Resources/customerdata.robot


*** Test Cases ***

    
CustomerAdd
    login
    Go To    localhost:3000/manage
    Selenium2Library.Click Element    xpath=//*[@href="/manage/customer"]   
    Selenium2Library.Click Element   xpath=//*[@href="/manage/customerAdd"]   
Company Name NotNull
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data  ${customer1}
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="savebtn"]    30s
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
   
    Page Should Contain  Validation Error
    Log to Console   "PASS"
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
***comment ***
Company Name MaxLength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer2}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
***Test cases***
    
Company Name Allow special character
    Reload Page 
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s  

    Initial data  ${customer3}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
 


Company Name allow numeric value
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
   
    Initial data  ${customer4}
    
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Email NotNull
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data  ${customer5}
    
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
     Page Should Contain  Validation Error
    Log to Console   "PASS"
     Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
   
  
Email MaxLength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer6}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Email Invalid 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Validation Error
    Log to Console   "PASS"
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer8}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Validation Error
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer9}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Validation Error
    Log to Console   "PASS"
     

Email valid 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer10}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

First Name notNull
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer11}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Validation Error
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

First Name Special character not allowed
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer12}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Validation Error
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

First Name text number not allowed
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer13}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
First Name text before space
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer14}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
First Name text after space
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer15}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
***Comment***

Middle Name Special character not allowed
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]

Middle Name text number not allowed
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Middle Name text before space
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Middle Name text after space
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Last Name notNull
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Last Name Special character not allowed
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Last Name text number not allowed
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Last Name text before space
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Last Name text after space
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Primary Number Type validation
    
    list default    pnumbertype
    list all     pnumbertype
    list select value    pnumbertype
    list multiple selection    pnumbertype

Primary Country Code validation
    
    list default    pcountrycode
    list all     pcountrycode
    list select value    pcountrycode
    list multiple selection    pcountrycode
    
Primary Number NULL validation
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Primary Number noAlphabets
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Primary Number noSpecial character
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Primary Number NoMin Length 
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Primary Number No Space
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
    
    
Secondary Number Type validation
    
    list default    pnumbertype
    list all     pnumbertype
    list select value    pnumbertype
    list multiple selection    pnumbertype

Secoundary Country Code validation
    
    list default    pcountrycode
    list all     pcountrycode
    list select value    pcountrycode
    list multiple selection    pcountrycode
    
Secondary Number NULL validation
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Secondary Number noAlphabets
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Secondary Number noSpecial character
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Secondary Number noMin Length
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Secondary Number No Space
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


 Country Code validation
    
    list default    countrycode
    list all     countrycode
    list select value    countrycode
    list multiple selection    countrycode
    
Faxnumber1 NoAlphabets
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]

Faxnumber1 No Specialcharacters
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Faxnumber1 NoMinimumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Faxnumber1 Nospace
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Faxcountry Code validation
    
    list default    faxcountrycode
    list all     faxcountrycode
    list select value    faxcountrycode
    list multiple selection    faxcountrycode
    
Faxnumber2 NoAlphabets
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]

Faxnumber2 No Specialcharacters
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Faxnumber2 Minimumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Faxnumber2 Nospace
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Primary Address Line1 NotNull
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Primary Address Line1 allowSpecial character
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

    
Primary Address Line1 allownumbers
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Primary Address Line1 Maxlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
 


Primary Address Line2 NotNull
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Primary Address Line2 allowSpecial character
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

    
Primary Address Line2 allownumbers
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Primary Address Line2 Maxlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]



Pcity noSpecial character
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Pcity nonumbers
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Pcity noMinimumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Pcity noMaximumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Pstate noSpecial character
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Pstate nonumbers
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Pstate noMinimumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Pstate noMaximumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Pzipcode nospecial characters
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Pzipcode allownumbers
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Pzipcode Maxlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    



Mailing Address Line1 NotNull
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Mailing Address Line1 allowSpecial character
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

    
Mailing Address Line1 allownumbers
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Mailing Address Line1 Maxlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
 


Mailing Address Line2 NotNull
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
Mailing Address Line2 allowSpecial character
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

    
Mailing Address Line2 allownumbers
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Mailing Address Line2 Maxlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]



Mcity noSpecial character
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Mcity nonumbers
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]

Mcity noMinimumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Mcity noMaximumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Mstate noSpecial character
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    

Mstate nonumbers
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Mstate noMinimumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Mstate noMaximumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Mzipcode nospecial characters
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]


Mzipcode allownumbers
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    


Mzipcode Maxlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]












   
    

    
    


    
 







  
    








    

    




