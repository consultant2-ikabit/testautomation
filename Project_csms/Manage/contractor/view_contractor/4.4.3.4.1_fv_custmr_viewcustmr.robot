***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String    
Library    Collections    
Test Teardown    Run Keyword If Test Failed     Close Browser   
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/button.robot




*** Test Cases ***
view contractor form validation
    login
    open link   contractor   View  
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="viewbtn"]  
    
    list default    selectsupplier
    list scrollbar  selectsupplier
    
     Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
     Selenium2Library.Select From List By Index    xpath=//select[@id="selectsupplier"][@class="form-control"]    5  
     @{List_items}=  Get List Items  xpath=//select[@id="selectsupplier"][@class="form-control"]  
     Selenium2Library.Select Checkbox   xpath=//*[@id="contractor"]  
      Click Element At Coordinates   xpath=//select[@id="selectsupplier"][@class="form-control"]  0    0
      list multiple selection    selectsupplier
     button rightname    viewbtn
     button active   viewbtn
  
      Selenium2Library.Select From List By Index    xpath=//select[@id="selectsupplier"][@class="form-control"]    5  
     @{List_inactive}=  Get List Items   xpath=//select[@id="selectsupplier"][@class="form-control"]   
      
     Should Not Be Equal      ${List_items}     ${List_inactive}   
   
     
  
     logout and close browser
    








