***Settings***
Library    Selenium2Library    

Resource    ../../Resources/genericfunctions.robot



*** Test Cases ***

    
CustomerAdd
    login
  
#Tests if the add functionality works  and record is added to DB
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="email"]     20s
   
    add customer
    view customer
    logout and close browser