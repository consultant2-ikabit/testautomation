***Settings***
Library    Selenium2Library     
Library    FakerLibrary    locale=en_US
Library   String

 
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
Resource    ../../Resources/button.robot
Test Teardown    Run Keyword If Test Failed     Close Browser 
##
*** Test Cases ***
    
Open contractor add form
    login
    
    open link    contractor    Add


Company Name NotNull
     Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
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
    validation error
  

Company Name Allow special character
    
   Reload Page
    
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     20s
    ${String}     Generate Random String     4  chars=[NUMBERS]    
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]         ()%#$!@${String}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode
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

Company Name allow numeric value
    Reload Page
    
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]      20s
    ${String}     Generate Random String     5  chars=[NUMBERS]
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]      ${String}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    

  
    ${coemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields 
    list select value    pnumbertype
    list select value    pcountrycode
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


Email NotNull
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields 
    list select value    pnumbertype
    list select value    pcountrycode
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    
    primary houseaddress
    secondary houseaddress
    Validation Error

# Email MaxLength



Email Invalid 
#Check for Email-'gmail.com'
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
   
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     "gmail.com"
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
   
    list select value    pnumbertype
    list select value    pcountrycode
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
        primary houseaddress
    secondary houseaddress
    Validation Error

#Check for Email-gmail@

    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
   
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
  
    ${coemail}     Email   
 
    Selenium2Library.Input Text    xpath=//input[@id="email"]     "gmail@"
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields  
    list select value    pnumbertype
    list select value    pcountrycode
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    
      primary houseaddress
    secondary houseaddress
    Validation Error
    


#Check for Email-gmail

    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
   
   
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
  
    ${coemail}     Email   
  
    Selenium2Library.Input Text    xpath=//input[@id="email"]     "gmail"
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode

    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
          primary houseaddress
    secondary houseaddress
    Validation Error

Email valid 


    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
   
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    ${coemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
   mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode
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

Confirm Email Invalid
    #Check for Confirm Email-'gmail.com'
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
  
    ${coemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]    "gmail.com" 
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
         primary houseaddress
    secondary houseaddress
    Validation Error



#Check for Confirm Email-gmail@
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
   
  
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    

  
    ${coemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="email"]      ${coemail} 
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]    "gmail@"
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
     primary houseaddress
    secondary houseaddress
    Validation Error
#Check for Confirm Email-gmail
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
  
   
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}

    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"] 
  
    ${coemail}     Email   
    
    Selenium2Library.Input Text    xpath=//input[@id="email"]      ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]    "gmail"
    mandatory fields 
    list select value    pnumbertype
    list select value    pcountrycode
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
     primary houseaddress
    secondary houseaddress
    Validation Error
Confirm Email valid 


    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    

  
    ${coemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields  
    list select value    pnumbertype
    list select value    pcountrycode
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

First Name notNull
    Reload Page
    
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     

        ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
 
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]     ""
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="submit"]  
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
    Validation Error

First Name Special character and number not allowed
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]    
     
    text splchar not allowed  fname
    
    text number not allowed  fname
    text spacebefore  fname
    text spaceafter  fname

Middle Name Special character and not allowed
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    text splchar not allowed  mname 
    text number not allowed  mname
    text spacebefore  mname
    text spaceafter  mname

Last Name notNull
        Reload Page
    
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s

        ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]     ${First Name}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ""
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="submit"]  
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
    Validation Error
Last Name Special character and number not allowed
    Reload Page
        Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]      20s
    text splchar not allowed  lname 
    text number not allowed   lname
     text spacebefore  lname
    text spaceafter  lname

    


Primary Number Type validation
    Reload Page
        Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s
    list default    pnumbertype
    list all     pnumbertype
    list select value    pnumbertype


Primary Country Code validation
    Reload Page
        Selenium2Library.Wait Until Element Is Visible   xpath=//*[@id="email"]     20s
    list default    pcountrycode
    list all     pcountrycode
    list select value    pcountrycode


Primary Number NULL validation
    Reload Page
    
       Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s

        ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
 
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="submit"]  
    list select value    pnumbertype
    list select value    pcountrycode
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumber"]    ""
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
           primary houseaddress
    secondary houseaddress
    Validation Error
Primary Number 
    Reload Page
        Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]    20s
    numeric noalphabets   pnumber
    numeric nospecialcharacter   pnumber
    numeric space   pnumber
    
    
Secondary Number Type validation
    
    list default    pnumbertype
    list all     pnumbertype
    list select value    pnumbertype


Secoundary Country Code validation
    
    list default    pcountrycode
    list all     pcountrycode

    


Secondary Number 
    Reload Page
        Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s
    Scroll Element Into View   xpath=//*[@class="btn btn-primary btn-round"]
    numeric noalphabets   snumber
    numeric nospecialcharacter   snumber
    numeric space   snumber
    
Country Code validation
    
    list default    countrycode
    list all     countrycode
    list select value    countrycode
  
    
Faxnumber1 
   Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    Scroll Element Into View   xpath=//*[@class="btn btn-primary btn-round"]
    numeric noalphabets   faxnum1
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="faxnum1"]     
    numeric nospecialcharacter  faxnum1
     Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="faxnum1"]     
    numeric space  faxnum1
        

Faxcountry Code validation
    
    list default    faxcountrycode
    list all     faxcountrycode
    list select value    faxcountrycode
    
    
Faxnumber2 
    Reload Page
   Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    Scroll Element Into View   xpath=//*[@class="btn btn-primary btn-round"]
    numeric noalphabets   faxnum2


    numeric nospecialcharacter   faxnum2
   
    numeric space   faxnum2


Primary Address Line1 allowSpecial character
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    
    ${Address1}   Street Address     
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    $&^&^* ()
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    secondary houseaddress
    updating data

Primary Address Line1 allownumbers
        Reload Page
        Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s

       ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode 
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    44949490
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
     Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    updating data

#Add Length Primary Address 

Primary Address Line2 allowSpecial character
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields 
    list select value    pnumbertype
    list select value    pcountrycode  
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}   
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      $%&&&^$$
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    secondary houseaddress
    updating data
     
Primary Address Line2 allownumbers
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s

        ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}   
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      48477
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    updating data

  
# Primary Address Line2 Maxlength
  



Pcity    
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s    
    text splchar not allowed  pcity
    text number not allowed  pcity
    

# Pcity Maximumlength
  
Pstate 
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s   
    text splchar not allowed  pstate
    text number not allowed  pstate
   


Pzipcode nospecial characters
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s 
    text splchar not allowed  pzip
   


Pzipcode allownumbers
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
 
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode  
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}

   
    ${Zipcode}   Random Number    digits=5
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    secondary houseaddress
    updating data

Secondary Address Line1 allowSpecial character
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s


    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode   
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    
      
    primary houseaddress
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      &!@#$))
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
  
    updating data

Secondary Address Line1 allownumbers
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s 
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields 
    list select value    pnumbertype
    list select value    pcountrycode  
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
        
    primary houseaddress
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]     4848448

    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
 
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}

    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}

    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    updating data

# Secondary Address Line1 Maxlength
  
Secondary Address Line2 allowSpecial character
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s  

    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
  
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress   
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      @#()!@${
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    updating data

    
Secondary Address Line2 allownumbers
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s

    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="email"]    
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode  
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    
    primary houseaddress
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      8997788
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    updating data


Mcity    
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s   
    text splchar not allowed  mcity
    text number not allowed  mcity
    

# Mcity Maximumlength

Mstate 
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s    
    text splchar not allowed  mstate
    text number not allowed  mstate
   


Mzipcode nospecial characters
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s   
     text splchar not allowed  mzip
   


Mzipcode allownumbers
    Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s  
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
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
   
    ${Zipcode}   Random Number    digits=5
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    updating data
 
Save and Cancel Button   
     Reload Page
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s   
     Scroll Element Into View    xpath=//*[@class="btn btn-primary btn-round"] 
     Element Should Be Enabled  xpath=//*[@class="btn btn-primary btn-round"] 
     Element Should Be Enabled  xpath=//*[@class="btn btn-secondary btn-round"]
    
Cancel button reset fields
     Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s    
    ${Companynm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
     ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
    Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
    mandatory fields 
    list select value    pnumbertype
    list select value    pcountrycode 
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
   
    ${Zipcode}   Random Number    digits=5
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    Click Button    xpath=//*[@class="btn btn-secondary btn-round"]   
    
    Scroll Element Into View    xpath=//input[@id="companyname"]   
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    Textfield Value Should Be     xpath=//input[@id="companyname"]    ${EMPTY}
    Textfield Value Should Be   xpath=//input[@id="email"]        ${EMPTY}
    Textfield Value Should Be   xpath=//input[@id="confirmemail"]       ${EMPTY}
    logout and close browser
  



   
    

    
    


    
 







  
    








    

    




