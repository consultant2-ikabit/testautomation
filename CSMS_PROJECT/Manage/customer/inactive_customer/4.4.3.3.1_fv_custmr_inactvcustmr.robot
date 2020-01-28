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
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
    
 ***Comment***   
  
Company Name MaxLength
    Reload Page
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    ${test}=   Selenium2Library.Get Element Attribute    xpath=//*[@id="companyname"]     attribute=maxlength
    Log To Console    ${test}  
***Test Cases***

Company Name Allow special character
    Reload Page 
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s  
    
    Initial data  ${customer3}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s


Company Name allow numeric value
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data  ${customer4}
     Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s

Email NotNull
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data  ${customer5}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s

***Comment***
Email MaxLength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer6}
    Selenium2Library.Click Button   xpath=//*[@id="savebtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    
***Test Cases***


Email Invalid 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
  
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer8}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer9}
   Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s

Email valid 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer10}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s

First Name notNull
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer11}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
    

First Name Special character and number not allowed
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
     
    text splchar not allowed  fname
    
    text number not allowed  fname
    text spacebefore  fname
    text spaceafter  fname

Middle Name Special character and not allowed
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  mname 
    text number not allowed  mname
    text spacebefore  mname
    text spaceafter  mname

Last Name notNull
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer12}
   Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
    

Last Name Special character not allowed
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  lname 
    text number not allowed   lname
     text spacebefore  lname
    text spaceafter  lname

    


Primary Number Type validation
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    list default    pnumbertype
    list all     pnumbertype
    list select value    pnumbertype
    list multiple selection    pnumbertype

Primary Country Code validation
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    list default    pcountrycode
    list all     pcountrycode
    list select value    pcountrycode
    list multiple selection    pcountrycode

Primary Number NULL validation
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer13}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Validation Error
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s

Primary Number 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    numeric noalphabets   pnumber
    numeric nospecialcharacter   pnumber
    numeric maximumlength    pnumber
    numeric space   pnumber
    
    
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
    


Secondary Number 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    numeric noalphabets   snumber
    numeric nospecialcharacter   snumber
    numeric maximumlength    snumber
    numeric space   snumber
    
Country Code validation
    
    list default    countrycode
    list all     countrycode
    list select value    countrycode
    list multiple selection    countrycode
    
Faxnumber1 
   Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    numeric noalphabets   faxnum1
    numeric nospecialcharacter  faxnum1
    numeric maximumlength    faxnum1
    numeric space  faxnum1
        

Faxcountry Code validation
    
    list default    faxcountrycode
    list all     faxcountrycode
    list select value    faxcountrycode
    list multiple selection    faxcountrycode
    
Faxnumber2 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    numeric noalphabets   faxnum2
    numeric nospecialcharacter   faxnum2
    numeric maximumlength    faxnum2
    numeric space   faxnum2


Primary Address Line1 allowSpecial character
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer14}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s

    
Primary Address Line1 allownumbers
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer15}
   Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
***Comment***  

Primary Address Line1 Maxlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer16}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
 ***Test Cases***
 



Primary Address Line2 allowSpecial character
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer17}
   Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
    
Primary Address Line2 allownumbers
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer18}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
***Comment***   

Primary Address Line2 Maxlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]

***Test Cases***

Pcity    
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  pcity
    text number not allowed  pcity
    
***Comment***
Pcity Maximumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
***Test cases***

Pstate 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  pstate
    text number not allowed  pstate
   


Pzipcode nospecial characters
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
     text splchar not allowed  pzip
   


Pzipcode allownumbers
    Reload page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer19}
   Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
        
Secondary Address Line1 allowSpecial character
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer20}
   Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
    
Secondary Address Line1 allownumbers
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer21}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
***Comment***  

Secondary Address Line1 Maxlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer17}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
 ***Test Cases***
 



Secondary Address Line2 allowSpecial character
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer22}
    Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s

    
Secondary Address Line2 allownumbers
    Reload page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer23}
   Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
***Comment***   

Secondary Address Line2 Maxlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]

***Test Cases***

Mcity    
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  mcity
    text number not allowed  mcity
    
***Comment***
Mcity Maximumlength
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer7}
    Selenium2Library.Click Button   xpath=//*[@id="submit"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
    Page Should Contain  Updating Data
    Log to Console   "PASS"
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
***Test cases***

Mstate 
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  mstate
    text number not allowed  mstate
   


Mzipcode nospecial characters
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
     text splchar not allowed  mzip
   


Mzipcode allownumbers
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Initial data   ${customer24}
   Selenium2Library.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]     20s
    Page Should Contain  Updating Data
     
    
    Selenium2Library.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]    20s
    
  










   
    

    
    


    
 







  
    








    

    




