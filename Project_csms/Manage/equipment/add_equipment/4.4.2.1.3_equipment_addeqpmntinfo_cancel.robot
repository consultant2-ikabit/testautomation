
***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
Library   Collections    
Suite Teardown    Close Browser


Resource    ../../Resources/genericfunctions.robot

*** Test Cases ***

Open equipment add form
    login
    
    Selenium2Library.Click Element    xpath=//*[@href="/manage"]
    Selenium2Library.Click Element    xpath=//*[@href="/manage/equipment"]   
    Selenium2Library.Click Element   xpath=//*[@href="/manage/equipmentAdd"]  


Add equipment cancel button reset fields
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
      Select From List By Index    xpath=//*[@id="equipmentTypes"]       2  
      ${equipmentnumber}    Random Number
      Input Text    xpath=//*[@id="equipmentnumber"]    ${equipmentnumber}  
      ${equipment_number}    Get Value   xpath=//*[@id="equipmentnumber"]
      ${equipmentdesc}   Random Number
       Input Text    xpath=//*[@id="equipmentdesc"]    ${equipmentdesc}
      ${licenseplate}    Random Number 
      Input Text    xpath=//*[@id="licenseplate"]    ${licenseplate}
      ${year}            Year
        Input Text    xpath=//*[@id="vehicleyear"]    ${year}
      ${vehiclemake}     Random Number    
       Input Text    xpath=//*[@id="vehiclemake"]    ${vehiclemake}    
      ${vehicle_make}     Get Value    xpath=//*[@id="vehiclemake"]
      ${vehiclemodel}    Random Number 
       Input Text    xpath=//*[@id="vehiclemodel"]    ${vehiclemodel}
       ${vehicle_model}     Get Value    xpath=//*[@id="vehiclemodel"]
       log to Console   ${vehicle_model}
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     100s 
       ${vehiclevin}      Random Number
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      
     Selenium2Library.Click Button   xpath=//*[@id="cancel"]  
     Page Should Contain List    xpath=//*[@id="equipmentTypes"]      Truck
     
    Textfield Value Should Be     xpath=//*[@id="equipmentnumber"]      ${equipment_number}
#     Page Should Contain     xpath=//*[@id="licenseplate"]    ${licenseplate}
     Textfield Value Should Be     xpath=//*[@id="vehicleyear"]    ${year}
     Textfield Value Should Be     xpath=//*[@id="vehiclemake"]    ${vehicle_make}
      log to Console   ${vehicle_model}
     Textfield Value Should Be     xpath=//*[@id="vehiclemodel"]    ${vehicle_model}
     
     Textfield Value Should Be     xpath=//*[@id="vin"]    ${vehiclevin}
     List Should Contain Value    xpath=//*[@id="equipmentownership"]      Self-Owned
    
    
 #erewrewr
