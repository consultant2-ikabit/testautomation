***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String
Library    Collections      
Suite Teardown    Close Browser

Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***
View inactive supplier
     login
# Add a supplier

    open link    supplier    Add
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="suppemail"]     20s
    ${suppconame}  Company
     Selenium2Library.Input Text    xpath=//input[@id="suppname"]       ${suppconame}
    ${supp_name}      Selenium2Library.Get Text    xpath=//input[@id="suppname"]
    
    ${suppemail}     Email   
    Selenium2Library.Input Text    xpath=//input[@id="suppemail"]     ${suppemail}
      ${supp_email}      Selenium2Library.Get Text    xpath=//input[@id="suppemail"]
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
    ${Address1}   Address
    Selenium2Library.Input Text    xpath=//input[@id="paddress1"]      ${Address1}
    ${Address1_view}   Selenium2Library.Get Text        xpath=//input[@id="paddress1"]  
    ${Address2}   Street Address
     Selenium2Library.Input Text    xpath=//input[@id="paddress2"]      ${Address2}
    ${Address2_view}   Selenium2Library.Get Text        xpath=//input[@id="paddress2"]  
    ${City}   City
    Selenium2Library.Input Text    xpath=//input[@id="pcity"]     ${City}
     ${City_view}   Selenium2Library.Get Text        xpath=//input[@id="pcity"]   
    ${State}  State
    Selenium2Library.Input Text    xpath=//input[@id="pstate"]     ${State}
     ${State_view}   Selenium2Library.Get Text        xpath=//input[@id="pstate"]   
    ${Pzip}   Zipcode
    Selenium2Library.Input Text    xpath=//input[@id="pzip"]     ${Zipcode}
     ${Zip_view}   Selenium2Library.Get Text        xpath=//input[@id="pzip"]   
     updating data   
# Delete the  supplier  
   open link    supplier    Delete

     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="deletebtn"]  100s
     set selenium speed       1s
     Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]   0    0
    @{List_items}  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"]
    ${suppname_lowercase}   Convert To Lowercase       ${suppconame}
    Log To Console    ${suppname_lowercase}   
    ${Get_index}  Get Index From List     ${List_items}      ${suppname_lowercase}   
    Log To Console      ${Get_index}  
    ${Index_string}  Convert To String  ${Get_index}
    Set Global Variable    ${Index_string}  
    Log to Console  ${Index_string}
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"]    ${Index_string}
    Selenium2Library.Click Button    xpath=//*[@id="deletebtn"]
    Selenium2Library.Wait Until Page Contains Element   xpath=//*[@id="failDeleteDismiss"]
    Selenium2Library.Click Button   xpath=//*[@id="failDeleteDismiss"]
    
#View the supplier
     open link   supplier   View
      Selenium2Library.Wait Until Element Is Visible    xpath=//*[@id="viewbtn"]  100s
    Select Checkbox    xpath=//*[@id="supplier"]
    Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
    Selenium2Library.Select From List By Index     xpath=//select[@id="selectsupplier"][@class="form-control"]    ${Index_string}
    Selenium2Library.Click Button  xpath=//*[@id="viewbtn"]    
     
    Scroll Element Into View    xpath=//input[@id="pnumber"] 
    
    Element Text Should Be   xpath=//input[@id="suppname"]      ${supp_name}
    Element Text Should Be   xpath=//input[@id="suppemail"]    ${supp_email} 
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
     
   