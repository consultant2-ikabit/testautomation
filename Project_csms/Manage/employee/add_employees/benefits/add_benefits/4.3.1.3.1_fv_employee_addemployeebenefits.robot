***Settings***
Library    Selenium2Library     
Library    FakerLibrary    locale=en_US
Library   String

 
Resource    ../../../Resources/dropdownlist.robot 
Resource    ../../../Resources/numericalvalue.robot 
Resource    ../../../Resources/genericfunctions.robot
Resource    ../../../Resources/textfield.robot
Resource    ../../../Resources/button.robot
Suite Teardown      Close Browser

*** Test Cases ***
Add Employee Personal
    login
    open link   employees   Add 
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="emailId"]     20s
    Selenium2Library.Select From List By Index    xpath=//*[@id="userType"]     0 
     ${coemailId}     email  
     Set Global Variable     ${coemailId}   
    Selenium2Library.Input Text    xpath=//input[@id="emailId"]     ${coemailId}
    Selenium2Library.Input Text    xpath=//input[@id="confirmEmailId"]     ${coemailId}
     ${password}     Password 
    Selenium2Library.Input Text    xpath=//input[@id="password"]        ${password}
    Selenium2Library.Input Text    xpath=//input[@id="confirmPassword"]        ${password}
    ${First Name}   First Name
    Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name}
    ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
    list select value    primaryPhoneNumberType
    list select value    primaryCountryCode
    list select value    secondaryPhoneNumberType
    list select value    secondaryCountryCode
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="primaryPhoneNumber"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="secondaryPhoneNumber"]    ${Phone Number}
    employee primary houseaddress 
    employee secondary houseaddress
    updating data  
    
User type validation
     open link   employees   Add 
    Selenium2Library.Click Element   xpath=//*[@href="/manage/employeeAdd/Benefits"] 
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    list all   userType
    list default    userType
    list multiple selection    userType
    list order    userType
    list select value    userType
    
LoginID NotNull
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Selenium2Library.Input Text    xpath=//input[@id="insurancecompany"]     "National Insurance Company" 
    Selenium2Library.Input Text    xpath=//input[@id="policynumber"]       9999999955
    Selenium2Library.Input Text    xpath=//input[@id="groupnumber"]       3473248938
    Selenium2Library.Input Text    xpath=//input[@id="hospital"]        Grand River Hospital
    Set Selenium Implicit Wait    20s
    Scroll Element Into View   xpath=//input[@id="pcity"]
    Wait Until Element Is Visible      xpath=//input[@id="pcity"]    30s
    mandatory fields
    list select value   pnumbertype
    list select value   pnumbercountrycode
    ${Phone Number}     Phone Number
    list select value    snumbertype
    list select value    secondarycountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    primary houseaddress 
    ${Emergency First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fnameEC2"]         ${Emergency First Name}  
    ${Emergency Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mnameEC2"]      ${Emergency Middle Name} 
     ${Emergency Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lnameEC2"]     ${Emergency Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
    Wait Until Element Is Visible      xpath=//*[@class="btn btn-primary btn-round"]   20s
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumberEC2"]    ${Phone Number}
    list select value   pnumbertypeEC2
    list select value   pnumbercountrycodeEC2
    list select value    snumbertypeEC2
    list select value    secondarycountrycodeEC2
    Selenium2Library.Input Text    xpath=//input[@id="snumberEC2"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="paddress1EC2"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2EC2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcityEC2"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstateEC2"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzipEC2"]     ${Zipcode}
    validation error
  

LoginID Allow special character
    
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="loginID"]     20s
    Set Global Variable     ${coemailId}  
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]     ${coemailId} #$$%%@
    Selenium2Library.Input Text    xpath=//input[@id="insurancecompany"]     "National Insurance Company" 
    Selenium2Library.Input Text    xpath=//input[@id="policynumber"]       9999999955
    Selenium2Library.Input Text    xpath=//input[@id="groupnumber"]       3473248938
    Selenium2Library.Input Text    xpath=//input[@id="hospital"]        Grand River Hospital
    Set Selenium Implicit Wait    20s
    Scroll Element Into View   xpath=//input[@id="pcity"]
    Wait Until Element Is Visible      xpath=//input[@id="pcity"]    30s
    mandatory fields
    list select value   pnumbertype
    list select value   pnumbercountrycode
    ${Phone Number}     Phone Number
    list select value    snumbertype
    list select value    secondarycountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    primary houseaddress 

    ${Emergency First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fnameEC2"]         ${Emergency First Name}  
    ${Emergency Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mnameEC2"]      ${Emergency Middle Name} 
     ${Emergency Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lnameEC2"]     ${Emergency Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
        Wait Until Element Is Visible      xpath=//*[@class="btn btn-primary btn-round"]   20s
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumberEC2"]    ${Phone Number}
    list select value   pnumbertypeEC2
    list select value   pnumbercountrycodeEC2
    list select value    snumbertypeEC2
    list select value    secondarycountrycodeEC2
    Selenium2Library.Input Text    xpath=//input[@id="snumberEC2"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="paddress1EC2"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2EC2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcityEC2"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstateEC2"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzipEC2"]     ${Zipcode}
    

LoginID allow numeric value
   
    Reload Page 
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]     546454564
    Selenium2Library.Input Text    xpath=//input[@id="insurancecompany"]     "National Insurance Company" 
    Selenium2Library.Input Text    xpath=//input[@id="policynumber"]       9999999955
    Selenium2Library.Input Text    xpath=//input[@id="groupnumber"]       3473248938
    Selenium2Library.Input Text    xpath=//input[@id="hospital"]        Grand River Hospital
    Set Selenium Implicit Wait    20s
    Scroll Element Into View   xpath=//input[@id="pcity"]
    Wait Until Element Is Visible      xpath=//input[@id="pcity"]    30s
    mandatory fields
    list select value   pnumbertype
    list select value   pnumbercountrycode
    ${Phone Number}     Phone Number
    list select value    snumbertype
    list select value    secondarycountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    primary houseaddress 
    Scroll Element Into View   xpath=//input[@id="fnameEC2"]
    Wait Until Element Is Visible      xpath=//input[@id="fnameEC2"]    20s
    ${Emergency First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fnameEC2"]         ${Emergency First Name}  
    ${Emergency Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mnameEC2"]      ${Emergency Middle Name} 
     ${Emergency Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lnameEC2"]     ${Emergency Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
        Wait Until Element Is Visible      xpath=//*[@class="btn btn-primary btn-round"]   20s
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumberEC2"]    ${Phone Number}
    list select value   pnumbertypeEC2
    list select value   pnumbercountrycodeEC2
    list select value    snumbertypeEC2
    list select value    secondarycountrycodeEC2
    Selenium2Library.Input Text    xpath=//input[@id="snumberEC2"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="paddress1EC2"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2EC2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcityEC2"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstateEC2"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzipEC2"]     ${Zipcode}
    updating data
    


InsuranceCompany Allow special character
    
    Reload Page
    
    Set Global Variable     ${coemailId}  
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]     ${coemailId} 
    Selenium2Library.Input Text    xpath=//input[@id="insurancecompany"]     %^&%^&%&^%& 
    Selenium2Library.Input Text    xpath=//input[@id="policynumber"]       9999999955
    Selenium2Library.Input Text    xpath=//input[@id="groupnumber"]       3473248938
    Selenium2Library.Input Text    xpath=//input[@id="hospital"]        Grand River Hospital
        Set Selenium Implicit Wait    20s
    Scroll Element Into View   xpath=//input[@id="pcity"]
    Wait Until Element Is Visible      xpath=//input[@id="pcity"]    30s
    mandatory fields
    list select value   pnumbertype
    list select value   pnumbercountrycode
    ${Phone Number}     Phone Number
    list select value    snumbertype
    list select value    secondarycountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    primary houseaddress
    ${Emergency First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fnameEC2"]         ${Emergency First Name}  
    ${Emergency Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mnameEC2"]      ${Emergency Middle Name} 
     ${Emergency Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lnameEC2"]     ${Emergency Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
        Wait Until Element Is Visible      xpath=//*[@class="btn btn-primary btn-round"]   20s
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumberEC2"]    ${Phone Number}
    list select value   pnumbertypeEC2
    list select value   pnumbercountrycodeEC2
    list select value    snumbertypeEC2
    list select value    secondarycountrycodeEC2
    Selenium2Library.Input Text    xpath=//input[@id="snumberEC2"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="paddress1EC2"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2EC2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcityEC2"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstateEC2"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzipEC2"]     ${Zipcode}
    updating data

Insurance Company allow numeric value
   
    Reload Page 
    Set Global Variable     ${coemailId}  
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]     ${coemailId} 
    Selenium2Library.Input Text    xpath=//input[@id="insurancecompany"]     45456576 
    Selenium2Library.Input Text    xpath=//input[@id="policynumber"]       9999999955
    Selenium2Library.Input Text    xpath=//input[@id="groupnumber"]       3473248938
    Selenium2Library.Input Text    xpath=//input[@id="hospital"]        Grand River Hospital
        Set Selenium Implicit Wait    20s
    Scroll Element Into View   xpath=//input[@id="pcity"]
    Wait Until Element Is Visible      xpath=//input[@id="pcity"]    30s
    mandatory fields
    list select value   pnumbertype
    list select value   pnumbercountrycode
    ${Phone Number}     Phone Number
    list select value    snumbertype
    list select value    secondarycountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    primary houseaddress 
    ${Emergency First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fnameEC2"]         ${Emergency First Name}  
    ${Emergency Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mnameEC2"]      ${Emergency Middle Name} 
     ${Emergency Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lnameEC2"]     ${Emergency Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
        Wait Until Element Is Visible      xpath=//*[@class="btn btn-primary btn-round"]   20s
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumberEC2"]    ${Phone Number}
    list select value   pnumbertypeEC2
    list select value   pnumbercountrycodeEC2
    list select value    snumbertypeEC2
    list select value    secondarycountrycodeEC2
    Selenium2Library.Input Text    xpath=//input[@id="snumberEC2"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="paddress1EC2"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2EC2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcityEC2"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstateEC2"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzipEC2"]     ${Zipcode}
    updating data
    
Insurance Policy noalphabet, special character, space
     numeric noalphabets    policynumber
     numeric nospecialcharacter    policynumber
     numeric space    policynumber
    

Insurance Group noalphabet, special character, space
     numeric noalphabets    groupnumber
     numeric nospecialcharacter    groupnumber
     numeric space   groupnumber
     
Preferred hospital Allow special character
    
    Reload Page
    
    Set Global Variable     ${coemailId}  
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]     ${coemailId} 
    Selenium2Library.Input Text    xpath=//input[@id="insurancecompany"]     General Insurance
        Set Selenium Implicit Wait    20s
    Scroll Element Into View   xpath=//input[@id="pcity"]
    Wait Until Element Is Visible      xpath=//input[@id="pcity"]    30s
    Selenium2Library.Input Text    xpath=//input[@id="policynumber"]       9999999955
    Selenium2Library.Input Text    xpath=//input[@id="groupnumber"]       3473248938
    Selenium2Library.Input Text    xpath=//input[@id="hospital"]        *&*(*&(*
    mandatory fields
    list select value   pnumbertype
    list select value   pnumbercountrycode
    ${Phone Number}     Phone Number
    list select value    snumbertype
    list select value    secondarycountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    primary houseaddress 
    ${Emergency First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fnameEC2"]         ${Emergency First Name}  
    ${Emergency Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mnameEC2"]      ${Emergency Middle Name} 
     ${Emergency Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lnameEC2"]     ${Emergency Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
        Wait Until Element Is Visible      xpath=//*[@class="btn btn-primary btn-round"]   20s
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumberEC2"]    ${Phone Number}
    list select value   pnumbertypeEC2
    list select value   pnumbercountrycodeEC2
    list select value    snumbertypeEC2
    list select value    secondarycountrycodeEC2
    Selenium2Library.Input Text    xpath=//input[@id="snumberEC2"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="paddress1EC2"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2EC2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcityEC2"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstateEC2"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzipEC2"]     ${Zipcode}
    updating data

Preferred hospital allow numeric value
        Reload Page 
    Set Global Variable     ${coemailId}  
    Selenium2Library.Input Text    xpath=//input[@id="loginID"]     ${coemailId} 
    Selenium2Library.Input Text    xpath=//input[@id="insurancecompany"]     General Inurance
    Selenium2Library.Input Text    xpath=//input[@id="policynumber"]       9999999955
    Selenium2Library.Input Text    xpath=//input[@id="groupnumber"]       3473248938
    Selenium2Library.Input Text    xpath=//input[@id="hospital"]        9509530495
        Set Selenium Implicit Wait    20s
    Scroll Element Into View   xpath=//input[@id="pcity"]
    Wait Until Element Is Visible      xpath=//input[@id="pcity"]    30s
    mandatory fields
    list select value   pnumbertype
    list select value   pnumbercountrycode
    ${Phone Number}     Phone Number
    list select value    snumbertype
    list select value    secondarycountrycode
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    primary houseaddress 
    ${Emergency First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fnameEC2"]         ${Emergency First Name}  
    ${Emergency Middle Name}  Name
    Selenium2Library.Input Text    xpath=//input[@id="mnameEC2"]      ${Emergency Middle Name} 
     ${Emergency Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lnameEC2"]     ${Emergency Last Name}
    Selenium2Library.Scroll Element Into View  xpath=//*[@class="btn btn-primary btn-round"]
        Wait Until Element Is Visible      xpath=//*[@class="btn btn-primary btn-round"]   20s
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumberEC2"]    ${Phone Number}
    list select value   pnumbertypeEC2
    list select value   pnumbercountrycodeEC2
    list select value    snumbertypeEC2
    list select value    secondarycountrycodeEC2
    Selenium2Library.Input Text    xpath=//input[@id="snumberEC2"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="paddress1EC2"]     ${Address1}
    Selenium2Library.Input Text    xpath=//input[@id="paddress2EC2"]      ${Address2}
    Selenium2Library.Input Text    xpath=//input[@id="pcityEC2"]     ${City}
    Selenium2Library.Input Text    xpath=//input[@id="pstateEC2"]     ${State}
    Selenium2Library.Input Text    xpath=//input[@id="pzipEC2"]     ${Zipcode}
    updating data
    


    
 







  
    








    

    




