***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String 
Library   Collections    
Test Teardown    Run Keyword If Test Failed     Close Browser  
Resource    ../../Resources/genericfunctions.robot

*** Test Cases ***

Add and view customer
    login
    add and search customer
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Element Is Visible       xpath=//*[@id="viewbtn"]   30s
    
Modify Details
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="pnumber"]   20s 
    ${First_name_modify}   First Name
    Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First_name_modify} 
    ${First_name}=   Selenium2Library.Get Text    xpath=//input[@id="fname"]   
    ${Last_name_modify}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last_name_modify} 
    ${Last_name}=   Selenium2Library.Get Text   xpath=//input[@id="lname"]  
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="update"]
    Selenium2Library.Wait Until Element Is Visible   xpath=//*[@id="update"]   20s 
     ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    ${Secondary_number}=   Selenium2Library.Get Text    xpath=//input[@id="snumber"]  
    Selenium2Library.Input Text    xpath=//input[@id="faxnumber1"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnumber2"]    ${Phone Number}
    ${Address1}   Address
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]      ${Address1}
    ${Address1_modified}   Selenium2Library.Get Text        xpath=//input[@id="paddress1"]  
    ${Address2}   Street Address
     Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    ${Address2_modified}   Selenium2Library.Get Text        xpath=//input[@id="paddress2"]  
    ${City}   City
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
     ${City_modified}   Selenium2Library.Get Text        xpath=//input[@id="pcity"]   
    ${State}  State
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
     ${State_modified}   Selenium2Library.Get Text        xpath=//input[@id="pstate"]   
    ${Pzip}   Zipcode
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
     ${Zip_modified}   Selenium2Library.Get Text        xpath=//input[@id="pzip"]   
  
    Selenium2Library.Select Checkbox    xpath=//input[@id="sameaspaddress"]
    updating data modify form
 
#  Check modified details are saved
    Reload Page
       Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
      Set Global Variable   ${Index_string} 
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectcustomer"][@class="form-control"]    ${Index_string}
    Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Wait Until Element Is Visible       xpath=//*[@id="viewbtn"]   20s
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//input[@id="pnumber"]   20s 
    Element Text Should Be   xpath=//input[@id="fname"]   ${First_name} 
    Element Text Should Be  xpath=//input[@id="lname"]   ${Last_name}   
    Element Text Should Be   xpath=//input[@id="snumber"]    ${Secondary_number}
    Scroll Element Into View    xpath=//*[@id="update"] 
    Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="update"]   20s
    Element Text Should Be   xpath=//input[@id="faxnumber1"]  ${Secondary_number}
    Element Text Should Be  xpath=//input[@id="faxnumber2"]  ${Secondary_number}
    Element Text Should Be   xpath=//input[@id="paddress1"]     ${Address1_modified}
    Element Text Should Be   xpath=//input[@id="paddress2"]     ${Address2_modified}
    Element Text Should Be   xpath=//input[@id="pcity"]     ${City_modified}
    Element Text Should Be   xpath=//input[@id="pstate"]     ${State_modified}
    Element Text Should Be   xpath=//input[@id="pzip"]     ${Zip_modified}
    Element Text Should Be   xpath=//input[@id="maddress1"]     ${Address1_modified}
    Element Text Should Be   xpath=//input[@id="maddress2"]     ${Address2_modified}
    Element Text Should Be   xpath=//input[@id="mcity"]     ${City_modified}
    Element Text Should Be   xpath=//input[@id="mstate"]     ${State_modified}
    Element Text Should Be   xpath=//input[@id="mzip"]     ${Zip_modified}
    
    logout and close browser