***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String    
 
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot




*** Test Cases ***    
Supplier Add
    login
    open link    supplier   Add
   
   

Supplier Name notNull
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
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
    secondary houseaddress
    validation error

Email NotNull
    Reload Page
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     
  
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
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
    Validation Error


First Name notNull
    Reload Page
    
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     

        ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="suppemail"]    
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
  
    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]     ""
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


Last Name notNull
    Reload Page
    
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="suppemail"]     

    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm} 
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}

    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]     ${First Name}
    ${Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mname"]     ${Middle Name}
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ""
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
    


Primary Number NULL validation
    Reload Page
    
    Selenium2Library.Wait Until Page Contains Element           xpath=//*[@id="suppemail"]     
 
    ${Suppnm}  Company
    Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${Suppnm}  
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
 


Cancel button reset fields
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

 
