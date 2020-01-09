 *** Settings ***
Library     Selenium2Library    
   
Resource    ../Resources/dropdownlist.robot  
Resource    ../Resources/genericfunctions.robot
Resource    ../Resources/textfield.robot
Resource    ../Resources/equipmentdata.robot
Variables    ../Resources/equip.py   




*** Test Cases ***

EquipmentAdd
    login
    Go To    localhost:3000/manage
    Selenium2Library.Click Element    xpath=//*[@href="/manage/equipment"] 
    Selenium2Library.Wait Until Page Contains Element     xpath=//*[@href="/manage/equipmentAdd"]      
    Selenium2Library.Click Element   xpath=//*[@href="/manage/equipmentAdd"]   
   


Equipment Type
    list default  equipmentTypes
    list all  equipmentTypes
    list select value   equipmentTypes
    list sort  equipmentTypes
    list multiple selection  equipmentTypes
    

Equipment Number
     text no alphabets   equipmentnumber
     text splchar not allowed  equipmentnumber
     Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentnumber"]     30s  
     Initial data   ${equipment1}
     Selenium2Library.Click Button   xpath=//*[@id="save-btn"]
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@class="btn btn-round btn-primary"]
     Page Should Contain  Validation Error
     Log to Console   "PASS"
    
   
     
     
     
     
    