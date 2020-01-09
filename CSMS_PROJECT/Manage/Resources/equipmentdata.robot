 *** Settings ***
Library   Selenium2Library


***keywords***  
Initial data
      [Arguments]  ${data}
      Log  ${data}
      Selenium2Library.Select From List By Index     xpath=//*[@id="equipmentTypes"]    ${data['equipmentTypes']}
      Selenium2Library.Input Text    xpath=//input[@id="equipmentnumber"]   ${data['equipmentnumber']}
      Selenium2Library.Input Text     xpath=//input[@id="equipmentdesc"]    ${data['equipmentdesc']}
      Selenium2Library.Scroll Element Into View  xpath=//*[@id="save-btn"]
      Selenium2Library.Input Text     xpath=//input[@id="licenseplate"]    ${data['licenseplate']}
      Selenium2Library.Input Text     xpath=//input[@id="vehicleyear"]    ${data['vehicleyear']}
      Selenium2Library.Input Text     xpath=//input[@id="vehiclemake"]    ${data['vehiclemake']}
      Selenium2Library.Input Text     xpath=//input[@id="vehiclemodel"]    ${data['vehiclemodel']}
   
      Selenium2Library.Input Text     xpath=//input[@id="vin"]    ${data['vin']}
       Selenium2Library.Input Text     xpath=//input[@id="currentvehiclevalue"]    ${data['currentvehiclevalue']}
       Selenium2Library.Select From List By Index     xpath=//*[@id="equipmentownership"]    ${data['equipmentownership']}
      
      