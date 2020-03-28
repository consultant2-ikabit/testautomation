***Settings***
Library    Selenium2Library  
Library    FakerLibrary    locale=en_US
  
Suite Teardown    Close Browser
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot




*** Test Cases ***    
Open equipment add form
    login
    
    Selenium2Library.Click Element    xpath=//*[@href="/manage"]
    Selenium2Library.Click Element    xpath=//*[@href="/manage/equipment"]   
    Selenium2Library.Click Element   xpath=//*[@href="/manage/equipmentAdd"]  
    
Equipment Null validation
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
      ${equipmentnumber}    Random Digit
      Input Text    xpath=//*[@id="equipmentnumber"]    ${equipmentnumber}     
      ${equipmentdesc}   Random Number
       Input Text    xpath=//*[@id="equipmentdesc"]    ${equipmentdesc}
      ${licenseplate}    Random Number 
      Input Text    xpath=//*[@id="licenseplate"]    ${licenseplate}
      ${year}            Year
        Input Text    xpath=//*[@id="vehicleyear"]    ${year}
      ${vehiclemake}     Random Number    
       Input Text    xpath=//*[@id="vehiclemake"]    ${vehiclemake}     
      ${vehiclemodel}    Random Number 
       Input Text    xpath=//*[@id="vehiclemodel"]    ${vehiclemodel}
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     100s 
      ${vehiclevin}      Random Number
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue} 
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      validation error
      
Equipment number Null Validation
      Reload Page 
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
      Select From List By Index    xpath=//*[@id="equipmentTypes"]       2  
      ${equipmentdesc}   Random Number
       Input Text    xpath=//*[@id="equipmentdesc"]    ${equipmentdesc}
        ${licenseplate}    Random Number 
      Input Text    xpath=//*[@id="licenseplate"]    ${licenseplate}
      ${year}            Year
        Input Text    xpath=//*[@id="vehicleyear"]    ${year}
      ${vehiclemake}     Random Number    
       Input Text    xpath=//*[@id="vehiclemake"]    ${vehiclemake}     
      ${vehiclemodel}    Random Number 
       Input Text    xpath=//*[@id="vehiclemodel"]    ${vehiclemodel}
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     100s 
      ${vehiclevin}      Random Number
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      validation error
      
License Plate Null validation
        Reload Page 
      Select From List By Index    xpath=//*[@id="equipmentTypes"]       2
      ${equipmentnumber}    Random Number
      Input Text    xpath=//*[@id="equipmentnumber"]    ${equipmentnumber}     
      ${equipmentdesc}   Random Letters    length=10
       Input Text    xpath=//*[@id="equipmentdesc"]    ${equipmentdesc}
      ${year}            Year
        Input Text    xpath=//*[@id="vehicleyear"]    ${year}
      ${vehiclemake}     Random Number    
       Input Text    xpath=//*[@id="vehiclemake"]    ${vehiclemake}     
      ${vehiclemodel}    Random Number 
       Input Text    xpath=//*[@id="vehiclemodel"]    ${vehiclemodel}
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     100s 
       ${vehiclevin}      Random Number
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      validation error
      
Year Null validation
        Reload Page 
      Select From List By Index    xpath=//*[@id="equipmentTypes"]       2
      ${equipmentnumber}    Random Number
      Input Text    xpath=//*[@id="equipmentnumber"]    ${equipmentnumber}     
      ${equipmentdesc}   Random Letters    length=10
       Input Text    xpath=//*[@id="equipmentdesc"]    ${equipmentdesc}
      ${licenseplate}    Random Number 
      Input Text    xpath=//*[@id="licenseplate"]    ${licenseplate}
      ${vehiclemake}     Random Number    
       Input Text    xpath=//*[@id="vehiclemake"]    ${vehiclemake}     
      ${vehiclemodel}    Random Number 
       Input Text    xpath=//*[@id="vehiclemodel"]    ${vehiclemodel}
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     100s 
       ${vehiclevin}      Random Number
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      validation error
      
Vehicle make Null validation
       Reload Page 
      Select From List By Index    xpath=//*[@id="equipmentTypes"]       2
      ${equipmentnumber}    Random Number
      Input Text    xpath=//*[@id="equipmentnumber"]    ${equipmentnumber}     
      ${equipmentdesc}   Random Letters    length=10
       Input Text    xpath=//*[@id="equipmentdesc"]    ${equipmentdesc}
      ${licenseplate}    Random Number 
      Input Text    xpath=//*[@id="licenseplate"]    ${licenseplate}
      ${year}            Year
        Input Text    xpath=//*[@id="vehicleyear"]    ${year}   
      ${vehiclemodel}    Random Number 
       Input Text    xpath=//*[@id="vehiclemodel"]    ${vehiclemodel}
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     100s 
       ${vehiclevin}      Random Number
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      validation error
      

Vehicle Model Null Validation
       Reload Page 
      Select From List By Index    xpath=//*[@id="equipmentTypes"]       2
      ${equipmentnumber}    Random Number
      Input Text    xpath=//*[@id="equipmentnumber"]    ${equipmentnumber}     
      ${equipmentdesc}   Random Letters    length=10
       Input Text    xpath=//*[@id="equipmentdesc"]    ${equipmentdesc}
      ${licenseplate}    Random Number 
      Input Text    xpath=//*[@id="licenseplate"]    ${licenseplate}
      ${year}            Year
        Input Text    xpath=//*[@id="vehicleyear"]    ${year}
      ${vehiclemake}     Random Number    
       Input Text    xpath=//*[@id="vehiclemake"]    ${vehiclemake}     
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     100s 
       ${vehiclevin}      Random Number
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      validation error
      
Equipment ownership Null validation
       Reload Page 
        Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
      Select From List By Index    xpath=//*[@id="equipmentTypes"]       2
      ${equipmentnumber}    Random Number
      Input Text    xpath=//*[@id="equipmentnumber"]    ${equipmentnumber}     
      ${equipmentdesc}   Random Letters    length=10
       Input Text    xpath=//*[@id="equipmentdesc"]    ${equipmentdesc}
      ${licenseplate}    Random Number 
      Input Text    xpath=//*[@id="licenseplate"]    ${licenseplate}
      ${year}            Year
        Input Text    xpath=//*[@id="vehicleyear"]    ${year}
      ${vehiclemake}     Random Number    
       Input Text    xpath=//*[@id="vehiclemake"]    ${vehiclemake}     
      ${vehiclemodel}    Random Number 
       Input Text    xpath=//*[@id="vehiclemodel"]    ${vehiclemodel}
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     100s 
      ${vehiclevin}      Random Number
      Input Text    xpath=//*[@id="vehiclemodel"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="vehiclemodel"]    ${Vehiclevalue}
      validation error

 
