***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String    
Library    Collections    
Suite Teardown    Close Browser
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/button.robot




*** Test Cases ***
View Supplier
    login
    open link    supplier    View 
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="viewbtn"]  30s
    
    list default    selectsupplier
    
    
     Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
     Selenium2Library.Select From List By Index    xpath=//select[@id="selectsupplier"][@class="form-control"]    10 
     @{List_items}=  Get List Items  xpath=//select[@id="selectsupplier"][@class="form-control"]  
     Selenium2Library.Select Checkbox   xpath=//*[@id="supplier"]  
      Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
      list multiple selection    selectsupplier
     button rightname    View
     button active   View
  
      Selenium2Library.Select From List By Index    xpath=//select[@id="selectsupplier"][@class="form-control"]    5  
     @{List_inactive}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"]   
      
     Should Not Be Equal      ${List_items}     ${List_inactive}   
   









