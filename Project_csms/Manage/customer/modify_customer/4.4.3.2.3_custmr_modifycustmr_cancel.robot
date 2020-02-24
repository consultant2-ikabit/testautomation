***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String  
Library    Collections

Test Teardown    Run Keyword If Test Failed     Close Browser  

Resource    ../../Resources/genericfunctions.robot
*** Test Cases ***

   
Add and view customer
    login 
    add and search customer
    Selenium2Library.Click Button    xpath=//*[@id="viewbtn"]
    Selenium2Library.Page Should Contain Element  xpath=//*[@id="viewbtn"]
Modify Details
  
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    Selenium2Library.Wait Until Page Contains Element    xpath=//input[@id="pnumber"]     
   ${First_name}=   Selenium2Library.Get Text    xpath=//input[@id="fname"]   
   Log To Console      ${First_name}   
   ${First_name_modify}   First Name
   Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First_name_modify} 
   ${Last_name}=   Selenium2Library.Get Text   xpath=//input[@id="lname"]   
   Log to Console  ${Last_name}
   ${Last_name_modify}   Last Name
   Log to Console   ${Last_name_modify}
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last_name_modify} 
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="update"]
    Selenium2Library.Wait Until Element Is Visible   xpath=//*[@id="update"]      30s 
    ${Secondary_number}=   Selenium2Library.Get Text    xpath=//input[@id="snumber"]   
    ${Fax1_number}=   Selenium2Library.Get Text    xpath=//input[@id="faxnumber1"]   
    ${Fax2_number}=   Selenium2Library.Get Text   xpath=//input[@id="faxnumber2"]   
    ${Phone Number}     Phone Number
   
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnumber1"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnumber2"]    ${Phone Number}
    
    ${Secondaryaddress1}=   Selenium2Library.Get Text    xpath=//input[@id="maddress1"]   
    ${Secondaryaddress2}=   Selenium2Library.Get Text    xpath=//input[@id="maddress2"]   
    ${Mcity}=   Selenium2Library.Get Text    xpath=//input[@id="mcity"]   
    ${Mstate}=   Selenium2Library.Get Text    xpath=//input[@id="mstate"]  
    ${Mzip}=   Selenium2Library.Get Text    xpath=//input[@id="mzip"]   
    
     Selenium2Library.Select Checkbox    xpath=//input[@id="sameaspaddress"] 
     Selenium2Library.Click Button  xpath=//*[@id="cancel"]            
     Scroll Element Into View   xpath=//*[@id="viewbtn"]  
     Reload Page
      Set Global Variable   ${Index_string} 
     Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0 
     Selenium2Library.Select From List By Index     xpath=//select[@id="selectcustomer"][@class="form-control"]    ${Index_string}
      Click Button    xpath=//*[@id="viewbtn"]
     
      Scroll Element Into View    xpath=//input[@id="snumber"] 
      Element Text Should Be    xpath=//input[@id="fname"]    ${First_name}   
      Element Text Should Be    xpath=//input[@id="lname"]    ${Last_name}  
      Element Text Should Be    xpath=//input[@id="snumber"]      ${Secondary_number}  
      Element Text Should Be    xpath=//input[@id="faxnumber1"]   ${Fax1_number}  
      Element Text Should Be    xpath=//input[@id="faxnumber2"]    ${Fax2_number}  
      Scroll Element Into View    xpath=//*[@id="update"] 
      Selenium2Library.Page Should Contain Element    xpath=//*[@id="update"]    
      Element Text Should Be    xpath=//input[@id="maddress1"]    ${Secondaryaddress1}
      Element Text Should Be    xpath=//input[@id="maddress2"]    ${Secondaryaddress2}  
      Element Text Should Be    xpath=//input[@id="mcity"]    ${Mcity}  
      Element Text Should Be    xpath=//input[@id="mstate"]    ${Mstate}  
      Element Text Should Be    xpath=//input[@id="mzip"]    ${Mzip}    

     logout and close browser
