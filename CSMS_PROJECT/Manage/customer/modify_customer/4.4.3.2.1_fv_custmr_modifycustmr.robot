***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US  
Library   String    
 
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
Resource    ../../Resources/button.robot




*** Test Cases ***


    
CustomerModify
    login
    Go To    localhost:3000/manage
    Selenium2Library.Click Element    xpath=//*[@href="/manage/customer"]   
    Selenium2Library.Click Element   xpath=//*[@href="/manage/customerModify"]  



 Firstname Null validation
   Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index    xpath=//select[@id="selectcustomer"][@class="form-control"]   9
    
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="viewbtn"]     30s
    Scroll Element Into View   xpath=//*[@id="paddress1"]
    Wait Until Element Is Visible    xpath=//*[@id="paddress1"]  20s
    Selenium2Library.Input Text    xpath=//input[@id="fname"]    ${EMPTY}
    
    Scroll Element Into View    xpath=//button[@id="update"][@class="btn btn-primary btn-round"]
    Wait Until Element Is Visible     xpath=//button[@id="update"][@class="btn btn-primary btn-round"]  20s

    validation error
View Customer
    Reload Page
     Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index    xpath=//select[@id="selectcustomer"][@class="form-control"]    23
    Click Button    xpath=//*[@id="viewbtn"]   
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="viewbtn"]     20s
    list default   selectcustomer
    list all    selectcustomer
    list multiple selection    selectcustomer

First Name Special character and number not allowed
     Selenium2Library.Select From List By Index    xpath=//*[@id="selectcustomer"]    10
    Click Button    xpath=//*[@id="viewbtn"]
    Scroll Element Into View    xpath=//*[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="pnumber"]   
    text splchar not allowed  fname
    text number not allowed  fname
    text spacebefore  fname
    text spaceafter  fname
    
Middle Name Special character and not allowed    
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  mname 
    text number not allowed  mname
    text spacebefore  mname
    text spaceafter  mname
    
Last name Null validation
     Selenium2Library.Input Text    xpath=//*[@id="lname"]     ""
     validation error
    
Last Name Special character and number not allowed  
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  lname 
    text number not allowed   lname
     text spacebefore  lname
    text spaceafter  lname
    

Primary Number Type validation
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    list default    pnumbertype
    list all     pnumbertype
    list select value    pnumbertype
    list multiple selection    pnumbertype

Primary Country Code validation
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    list default    pcountrycode
    list all     pcountrycode
    list select value    pcountrycode
    list multiple selection    pcountrycode
    
    
    
Secondary Number Type validation
    
    list default    snumbertype
    list all     snumbertype
    list select value    snumbertype
    list multiple selection    snumbertype

Secoundary Country Code validation
    
    list default    scountrycode
    list all     scountrycode
    list select value    scountrycode
    list multiple selection    scountrycode
    


Secondary Number 
   
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Scroll Element Into View   xpath=//*[@class="bztn btn-primary btn-round"]
    numeric noalphabets   snumber
    numeric nospecialcharacter   snumber
    numeric space   snumber
    
Country Code validation
    
    list default    countrycode
    list all     countrycode
    list select value    countrycode
    list multiple selection    countrycode
    
Faxnumber1 
  
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Scroll Element Into View   xpath=//*[@class="btn btn-primary btn-round"]
    numeric noalphabets   faxnum1
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="faxnum1"]     10s
    numeric nospecialcharacter  faxnum1
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="faxnum1"]     10s
    numeric space  faxnum1
        

Faxcountry Code validation
    
    list default    faxcountrycode
    list all     faxcountrycode
    list select value    faxcountrycode
    list multiple selection    faxcountrycode
    
Faxnumber2 
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    Scroll Element Into View   xpath=//*[@class="btn btn-primary btn-round"]
    numeric noalphabets   faxnum2
    numeric nospecialcharacter   faxnum2
    numeric space   faxnum2
    

Primary Address Line1 allowSpecial character
        login
    Go To    localhost:3000/manage
    Selenium2Library.Click Element    xpath=//*[@href="/manage/customer"]   
    Selenium2Library.Click Element   xpath=//*[@href="/manage/customerModify"]  



 
   Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index    xpath=//select[@id="selectcustomer"][@class="form-control"]   9
    
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="viewbtn"]     20s
    Scroll Element Into View     xpath=//input[@id="paddress1"] 
     ${Address1}   Street Address     
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    $&^&^* ()${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    secondary houseaddress
    update form
 ***comment*** 
Primary Address Line1 allownumbers
     Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    44949490
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
     Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    secondary houseaddress
    update form
    
Primary Address Line2 allowSpecial character
    
      ${Address2}   Street Address     
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      $%&&&^$$
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    secondary houseaddress
    update form
    
Primary Address Line2 allownumbers
    ${Address2}   Street Address     
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      48477
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    Secondary Address
    update form
    
Pcity    
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  pcity
    text number not allowed  pcity
    
Pstate 
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  pstate
    text number not allowed  pstate
   


Pzipcode nospecial characters
    
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
     text splchar not allowed  pzip
     
Pzipcode allownumbers
   
      ${Zipcode}   Random Number    digits=5
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
     secondary houseaddress
     update form
     
   
Secondary Address Line1 allowSpecial character
     primary houseaddress
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      &!@#$))
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
  
    update form
Secondary Address Line1 allownumbers

     primary houseaddress
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]     4848448
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    update form

    
  
Secondary Address Line2 allowSpecial character
        primary houseaddress   
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      @#()!@${
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    update form

    
Secondary Address Line2 allownumbers
       primary houseaddress
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      8997788
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    update form
    

Mcity    

    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  mcity
    text number not allowed  mcity
    

Mstate 
  
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
    text splchar not allowed  mstate
    text number not allowed  mstate
   


Mzipcode nospecial characters
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     30s
     text splchar not allowed  mzip
   

Mzipcode allownumbers
        ${Zipcode}   Random Number    digits=5
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    update form









   
    

    
    


    
 







  
    








    

    




