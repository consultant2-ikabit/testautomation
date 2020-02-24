***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US  
Library    String   
Library    Collections     
 
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
Resource    ../../Resources/button.robot

*** Test Cases ***
  
Add and View supplier
    login
      add and search supplier    
     Set Browser Implicit Wait    20s
    Selenium2Library.Click Button    xpath=//*[@id="view"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="view"]   20s
    
Firstname Null validation
  
   
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="pnumber"]   40s 
    Selenium2Library.Input Text    xpath=//input[@id="fname"]    ${EMPTY}  
    Scroll Element Into View    xpath=//*[@id="update"] 
    validation error modify form
   
    
Last name Null validation 
    Reload Page
    Set Global Variable   ${Index_string}   
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string} 
    Selenium2Library.Wait Until Element Is Visible      xpath=//select[@id="selectsupplier"][@class="form-control"]    40s
    Selenium2Library.Click Button    xpath=//*[@id="view"] 
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="pnumber"]   40s 
    Selenium2Library.Input Text    xpath=//input[@id="lname"]    ${EMPTY}
    Scroll Element Into View    xpath=//*[@id="update"] 
    validation error modify form
     

    

Primary Address Line1 allowSpecial character
    Selenium2Library.Page Should Contain Element  xpath=//*[@id="update"]   
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    $&^&^* ()${
    updating data modify form
  
Primary Address Line1 allownumbers
     Selenium2Library.Page Should Contain Element  xpath=//*[@id="update"]    
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    587567
    updating data modify form

    
Primary Address Line2 allowSpecial character
      Selenium2Library.Page Should Contain Element  xpath=//*[@id="update"]    
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      $%&&&^$$
    updating data modify form
 
Primary Address Line2 allownumbers
      Selenium2Library.Page Should Contain Element  xpath=//*[@id="update"]    
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      48477
    updating data modify form
     
Pzipcode allownumbers
      Selenium2Library.Page Should Contain Element  xpath=//*[@id="update"]   
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     56083
    updating data modify form
   
Secondary Address Line1 allowSpecial character
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="update"]     
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      &!@#$))
    updating data modify form


Secondary Address Line1 allownumbers
     Selenium2Library.Wait Until Element Is Visible   xpath=//*[@id="update"]   
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]     6793937
    updating data modify form
  
Secondary Address Line2 allowSpecial character
    Selenium2Library.Wait Until Element Is Visible   xpath=//*[@id="update"]   
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      @#()!@${
    updating data modify form

    
Secondary Address Line2 allownumbers
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="update"]     
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      8997788
    updating data modify form
Mzipcode allownumbers
    Selenium2Library.Page Should Contain Element  xpath=//*[@id="update"]     
    ${Zipcode}   Random Number    digits=5
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    updating data modify form


First Name Special character and number not allowed
    Reload Page
    Set Global Variable   ${Index_string}   
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string} 
    Selenium2Library.Wait Until Element Is Visible      xpath=//select[@id="selectsupplier"][@class="form-control"]    40s
    Selenium2Library.Click Button    xpath=//*[@id="view"]
    Scroll Element Into View   xpath=//*[@id="pnumber"]   
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="pnumber"]   20s
    text splchar not allowed  fname
    text number not allowed  fname
    text spacebefore  fname
    text spaceafter  fname

Last Name Special character and number not allowed
  
    text splchar not allowed  lname 
    text number not allowed   lname
     text spacebefore  lname
    text spaceafter  lname
    
Middle Name Special character and not allowed
    
    text splchar not allowed  mname 
    text number not allowed  mname
    text spacebefore  mname
    text spaceafter  mname
   

Primary Number Type validation
    list default    pnumbertype
    list all     pnumbertype
    list select value    pnumbertype


Primary Country Code validation
   
    list default    pcountrycode
    list all     pcountrycode
    list select value    pcountrycode
    
    
Secondary Number Type validation

    list default    snumbertype
    list all     snumbertype
    list select value    snumbertype


Secoundary Country Code validation
   
    list default    scountrycode
    list all     scountrycode
    list select value    scountrycode
  
    
Secondary Number
     Scroll Element Into View   xpath=//*[@id="update"]   
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="update"]   20s
    
    numeric noalphabets   snumber
    numeric nospecialcharacter   snumber
    numeric space   snumber
   
    
Country Code validation


    list default    pcountrycode
    list all     pcountrycode
    list select value    pcountrycode

    
Faxnumber1
      
   numeric noalphabets   faxnumber1
   numeric nospecialcharacter  faxnumber1
   numeric space  faxnumber1
  
        
Faxcountry Code validation
  
    list default    faxcountrycode2
    list all     faxcountrycode2
    list select value    faxcountrycode2
    
    
Faxnumber2
   
    numeric noalphabets   faxnumber2
    numeric nospecialcharacter  faxnumber2
    numeric space  faxnumber2
    
Pcity
    Reload Page
    Set Global Variable   ${Index_string}   
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string} 
    Selenium2Library.Wait Until Element Is Visible      xpath=//select[@id="selectsupplier"][@class="form-control"]    30s
    Click Button    xpath=//*[@id="view"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="view"]   20s
    Scroll Element Into View     xpath=//*[@id="update"][@class="btn btn-primary btn-round"]
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="update"][@class="btn btn-primary btn-round"]    20s
    text splchar not allowed  pcity
    text number not allowed  pcity
    
Pstate
    text splchar not allowed  pstate
    text number not allowed  pstate
   


Pzipcode nospecial characters
    
     text splchar not allowed  pzip


Mcity
    Reload Page
    Scroll Element Into View     xpath=//*[@id="update"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="update"]    20s
    text splchar not allowed  mcity
    text number not allowed  mcity
    

Mstate
  
    text splchar not allowed  mstate
    text number not allowed  mstate

Mzipcode nospecial characters

     text splchar not allowed  mzip
Button
     button rightname    update
     button active    update
     logout and close browser
     




   
    

    
    


    
 







  
    








    

    




