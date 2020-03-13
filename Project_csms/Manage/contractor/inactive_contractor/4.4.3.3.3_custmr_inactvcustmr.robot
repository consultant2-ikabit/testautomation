***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String
Library    Collections      
Test Teardown        Run Keyword And Continue On Failure    Log    FAIL
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/dropdownlist.robot 


*** Test Cases ***
View inactive contractor
     login
# Add a contractor

    open link    contractor     Add
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="email"]     
    ${Companynm}  Company
     Selenium2Library.Input Text    xpath=//input[@id="companyname"]       ${Companynm}
    ${company_name}      Selenium2Library.Get Text    xpath=//input[@id="companyname"]
    ${coemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="email"]     ${coemail}
      Selenium2Library.Input Text    xpath=//input[@id="confirmemail"]     ${coemail}
      ${co_email}      Selenium2Library.Get Text    xpath=//input[@id="email"]
    
    ${First Name}   First Name
     Selenium2Library.Input Text    xpath=//input[@id="fname"]         ${First Name}
       ${First_name}      Selenium2Library.Get Text    xpath=//input[@id="fname"]
     ${Last Name}   Last Name
    Selenium2Library.Input Text    xpath=//input[@id="lname"]     ${Last Name}
      ${Last_name}      Selenium2Library.Get Text    xpath=//input[@id="lname"]
    Selenium2Library.Scroll Element Into View  xpath=//*[@id="submit"]
    ${Phone Number}     Phone Number
    Selenium2Library.Input Text    xpath=//input[@id="pnumber"]    ${Phone Number}   
     ${Phone_number}      Selenium2Library.Get Text    xpath=//input[@id="pnumber"]
    Selenium2Library.Input Text    xpath=//input[@id="snumber"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum1"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="faxnum2"]    ${Phone Number}
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]      ${Address1}
    ${Address1_view}   Selenium2Library.Get Text        xpath=//input[@id="paddress1"]  
     Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    ${Address2_view}   Selenium2Library.Get Text        xpath=//input[@id="paddress2"]  
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
     ${City_view}   Selenium2Library.Get Text        xpath=//input[@id="pcity"]   
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
     ${State_view}   Selenium2Library.Get Text        xpath=//input[@id="pstate"]   
    ${Pzip}   Zipcode
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
     ${Zip_view}   Selenium2Library.Get Text        xpath=//input[@id="pzip"]   
  
    updating data   
# Delete the  contractor  
     open link    contractor    Delete
    
     Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="deletebtn"]  
     Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    @{List_items}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"]  
    ${companynm_lowercase}=   Convert To Lowercase    ${Companynm}
    ${Get_index}=  Get Index From List     ${List_items}      ${companynm_lowercase}   
    ${Index_string}=  Convert To String  ${Get_index} 
    Set Global Variable   ${Index_string}  
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string}
    Selenium2Library.Click Button    xpath=//*[@id="deletebtn"]
    Selenium2Library.Wait Until Page Contains Element   xpath=//*[@id="failDeleteDismiss"]
    Selenium2Library.Click Button    xpath=//*[@id="failDeleteDismiss"] 
    
#View the contractor
    open link  contractor   View 
      Selenium2Library.Page Should Contain Element    xpath=//*[@id="viewbtn"]
   
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string}
    Selenium2Library.Click Button  xpath=//*[@id="viewbtn"]    
     
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    
    Element Text Should Be   xpath=//input[@id="companyname"]      ${company_name}
    Element Text Should Be   xpath=//input[@id="email"]    ${co_email} 
    Element Text Should Be   xpath=//input[@id="fname"]   ${First_name} 
    Element Text Should Be  xpath=//input[@id="lname"]   ${Last_name} 
    Element Text Should Be   xpath=//input[@id="pnumber"]   ${Phone_number}  
    Element Text Should Be   xpath=//input[@id="snumber"]   ${Phone_number}
    Scroll Element Into View    xpath=//input[@id="mzip"] 
    Element Text Should Be   xpath=//input[@id="faxnumber1"]  ${Phone_number}
    Element Text Should Be  xpath=//input[@id="faxnumber2"]   ${Phone_number}
    Element Text Should Be  xpath=//input[@id="paddress1"]    ${Address1_view} 
    Element Text Should Be  xpath=//input[@id="paddress2"]    ${Address2_view} 
    Element Text Should Be  xpath=//input[@id="pcity"]    ${City_view}
     Element Text Should Be  xpath=//input[@id="pstate"]    ${State_view}
      Element Text Should Be  xpath=//input[@id="pzip"]    ${Zip_view}
    
   
     logout and close browser 