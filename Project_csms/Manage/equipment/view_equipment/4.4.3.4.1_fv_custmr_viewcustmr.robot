***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   String    
Library    Collections    
 
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/button.robot




*** Test Cases ***
view customer form validation
    login
    Selenium2Library.Click Link   xpath=//*[@href="/manage"]
    Selenium2Library.Click Link   xpath=//*[@href="/manage/customer"]
    Selenium2Library.Click Link   xpath=//*[@href="/manage/customerView"]  
    Selenium2Library.Wait Until Page Contains Element  xpath=//*[@id="viewbtn"]  30s
    
    list default    selectcustomer
    
    
     Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
     Selenium2Library.Select From List By Index    xpath=//select[@id="selectcustomer"][@class="form-control"]    5  
     @{List_items}=  Get List Items  xpath=//select[@name="selectcustomer"][@class="form-control"]  
     Selenium2Library.Select Checkbox   xpath=//*[@id="customer"]  
      Click Element At Coordinates   xpath=//select[@id="selectcustomer"][@class="form-control"]  0    0
      list multiple selection    selectcustomer
     button rightname    viewbtn
     button active   viewbtn
  
      Selenium2Library.Select From List By Index    xpath=//select[@id="selectcustomer"][@class="form-control"]    5  
     @{List_inactive}=  Get List Items   xpath=//select[@name="selectcustomer"][@class="form-control"]   
      
     Should Not Be Equal      ${List_items}     ${List_inactive}   
   
     
  
     logout and close browser
    








