***Settings***
Library    Selenium2Library     
Library    FakerLibrary    locale=en_US
Library   String

Suite Teardown    Close Browser
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
Resource    ../../Resources/button.robot
##
*** Test Cases ***
    
Open supplier add form
    login
    open link    supplier    Add

Suplier Name notNull
     Selenium2Library.Wait Until Page Contains Element   xpath=//input[@id="suppname"]  
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
    mandatory fields 
    list select value    pnumbertype
    list select value    pcountrycode
    list select value    snumbertype
    list select value    scountrycode
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    list select value  faxcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress 
    secondary houseaddress
    validation error
 
Supplier Name maxlength

    Reload Page
     Selenium2Library.Wait Until Page Contains Element   xpath=//input[@id="suppname"]  
    ${Length}=  Get Length    xpath=//input[@id="suppname"]
    ${String}     Generate Random String     ${Length+1}  chars=[LETTERS]
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]      ${String}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    
    ${suppemail}     Email   
    mandatory fields 
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress 
    secondary houseaddress
    validation error
  

Supplier Name allow special character
    
   Reload Page
    
     Selenium2Library.Wait Until Page Contains Element   xpath=//input[@id="suppname"]   20s
    ${String}     Generate Random String     4  chars=[NUMBERS]    
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]         ()%#$!@${String}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
    mandatory fields
    list select value    pnumbertype
    list select value    pcountrycode
    ${Phone Number}     Phone Number
    list select value    snumbertype
    list select value    scountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    list select value   countrycode
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress
    secondary houseaddress
    updating data

Supplier Name allow numeric value
    Reload Page
    
    Selenium2Library.Wait Until Element Is Visible           xpath=//*[@id="suppemail"]   100s
    ${String}     Generate Random String     5  chars=[NUMBERS]
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]      ${String}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    100s

  
    ${suppemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    updating data
    

Email NotNull
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
    ${Suppnm}    Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
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
    Validation Error

# Email MaxLength



Email Invalid 
#Check for Email-'gmail.com'
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
   
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]        ${Suppnm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     "gmail.com"
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
    Validation Error

#Check for Email-gmail@

    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
   
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     "gmail@"
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
    validation Error
    


#Check for Email-gmail

    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
   
   
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
  
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     "gmail"
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
    Validation Error

Email maxlength
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"] 
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
    
Email valid 


    Reload Page
      Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
   
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
     ${Length}=  Get Length    xpath=//input[@id="suppemail"]
    ${String}     Generate Random String     ${Length}  chars=[LETTERS] 
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${String}@gmail.com
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

First Name notNull
    Reload Page
    
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s

    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
     ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
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
    

First Name maxlength

    Reload Page
     Selenium2Library.Wait Until Page Contains Element   xpath=//input[@id="suppname"] 
     ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}   
     ${suppemail}     Email  
     Selenium2Library.Input Text    xpath=//input[@id="suppemail"]       ${suppemail}   
     ${Length}=  Get Length    xpath=//input[@id="fname"]
     ${String}     Generate Random String     ${Length+1}  chars=[LETTERS]
    Selenium2Library.Input Text    xpath=//input[@id="fname"]      ${String}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]  
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress 
    secondary houseaddress
    validation error
  

First Name special character and number not allowed
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
     
    text splchar not allowed  fname
    
    text number not allowed  fname
    text spacebefore  fname
    text spaceafter  fname

Middle Name maxlength
    
    Reload Page
     Selenium2Library.Wait Until Page Contains Element   xpath=//input[@id="suppname"] 
     ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}   
    ${suppemail}     Email  
     Selenium2Library.Input Text    xpath=//input[@id="suppemail"]       ${suppemail}   
    
     ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name} 
     ${Length}=  Get Length    xpath=//input[@id="mname"]
     ${String}     Generate Random String     ${Length+1}  chars=[LETTERS]
    Selenium2Library.Input Text    xpath=//input[@id="mname"]      ${String}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]  
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress 
    secondary houseaddress
    validation error

Middle Name Special character and not allowed
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
    text splchar not allowed  mname 
    text number not allowed  mname
    text spacebefore  mname
    text spaceafter  mname

Last Name notNull
        Reload Page
    
      Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s

        ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    
    ${suppemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
     ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
   
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
Last Name maxlength 
    Reload Page
     Selenium2Library.Wait Until Page Contains Element   xpath=//input[@id="suppname"] 
     ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}   
    ${suppemail}     Email  
     Selenium2Library.Input Text    xpath=//input[@id="suppemail"]       ${suppemail}   
    
     ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name} 
     ${Middle Name}    
     ...    Name
     Selenium2Library.Input Text    xpath=//input[@id="mname"]         ${Middle Name}
     ${Length}=  Get Length    xpath=//input[@id="lname"]
     ${String}     Generate Random String     ${Length+1}  chars=[LETTERS]
    Selenium2Library.Input Text    xpath=//input[@id="lname"]      ${String}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]  
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    primary houseaddress 
    secondary houseaddress
    validation error
Last Name special character and number not allowed
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
    text splchar not allowed  lname 
    text number not allowed   lname
     text spacebefore  lname
    text spaceafter  lname

    


Primary Number Type validation
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
    list default    pnumbertype
    list all     pnumbertype
    list select value    pnumbertype


Primary Country Code validation
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
    list default    pcountrycode
    list all     pcountrycode
    list select value    pcountrycode


Primary Number NULL validation
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
        ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    
    ${suppemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
     ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
 
    list select value    pnumbertype
    list select value    pcountrycode
    Selenium2Library.Input Text    xpath=//input[@id="pnumber"]    ""
    list select value    snumbertype
    list select value    scountrycode
    
     primary houseaddress
    secondary houseaddress
    Validation Error
Primary Number 
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
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
     Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
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
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
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
    
    
Faxnumber2 
    Reload Page
      Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
    Scroll Element Into View   xpath=//*[@class="btn btn-primary btn-round"]
    numeric noalphabets   faxnum2


    numeric nospecialcharacter   faxnum2
   
    numeric space   faxnum2


Primary Address Line1 allowSpecial character
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     100s
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}  
    ${suppemail}     Email   

    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    
    ${Address1}   Street Address     
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    $&^&^* ()${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    secondary houseaddress
    updating data
    
Primary Address Line1 allownumbers
            Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm} 
    ${suppemail}     Email 
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    44949490
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
     Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    secondary houseaddress
    updating data
#Add Length Primary Address 

Primary Address Line2 allowSpecial character
    Reload Page
    set selenium speed   1s
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}  
    ${suppemail}     Email
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail} 
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
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]    ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      $%&&&^$$
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    secondary houseaddress
    updating data
Primary Address Line2 allownumbers
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    
    ${suppemail}     Email 
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      48477
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
    Secondary Address
    updating data
  
# Primary Address Line2 Maxlength
  



Pcity    
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
    text splchar not allowed  pcity
    text number not allowed  pcity
    

# Pcity Maximumlength
  
Pstate 
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
    text splchar not allowed  pstate
    text number not allowed  pstate
   


Pzipcode nospecial characters
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
    text splchar not allowed  pzip
   


Pzipcode allownumbers
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
    ${suppemail}     Email 
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     


    ${suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppnm}
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      &!@#$))
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
  
    updating data
    
Secondary Address Line1 allownumbers
    Reload Page
      Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]    
    ${suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppnm}   
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]     4848448

    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
 
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}

    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}

    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    updating data
# Secondary Address Line1 Maxlength
  
Secondary Address Line2 allowSpecial character
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
       ${suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppnm}
     
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      @#()!@${
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    updating data
    
Secondary Address Line2 allownumbers
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]    
    ${suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppnm}   
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      8997788
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    updating data


Mcity    
    Reload Page
      Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
    text splchar not allowed  mcity
    text number not allowed  mcity
    

# Mcity Maximumlength

Mstate 
    Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
    text splchar not allowed  mstate
    text number not allowed  mstate
   


Mzipcode nospecial characters
        Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
     text splchar not allowed  mzip
   


Mzipcode allownumbers
    Reload Page
      Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
    ${suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppnm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
   
    ${Zipcode}   Random Number    digits=5
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    updating data
    
Save and Cancel Button   
     Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
     Scroll Element Into View    xpath=//*[@class="btn btn-primary btn-round"] 
     Element Should Be Enabled  xpath=//*[@class="btn btn-primary btn-round"] 
     Element Should Be Enabled  xpath=//*[@class="btn btn-secondary btn-round"]
    
Cancel button reset fields
     Reload Page
       Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     20s
    ${suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppnm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
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
    Selenium2Library.Input Text      xpath=//input[@id="maddress1"]      ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="maddress2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="mcity"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="mstate"]     ${State}
   
    ${Zipcode}   Random Number    digits=5
    Selenium2Library.Input Text    xpath=//input[@id="mzip"]     ${Zipcode}
    Click Button    xpath=//*[@class="btn btn-secondary btn-round"]   
    
    Scroll Element Into View    xpath=//input[@id="suppname"]   
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="suppemail"]     20s
    Textfield Value Should Be     xpath=//input[@id="suppname"]    ${EMPTY}
    Textfield Value Should Be   xpath=//input[@id="suppemail"]        ${EMPTY}
    logout and close browser
  



   
    

    
    


    
 







  
    








    

    




