***Settings***
Library    Selenium2Library     
Library    FakerLibrary    locale=en_US
Library   String

Suite Teardown    Close Browser
Resource    ../../Resources/dropdownlist.robot 
Resource    ../../Resources/numericalvalue.robot 
Resource    ../../Resources/genericfunctions.robot
Resource    ../../Resources/textfield.robot
Resource    ../../Resources/button.robot
##
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
      
Equipment Type 
     Reload Page
     Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
     set selenium speed   2s
     Log to Console  \n
     list default     equipmentTypes
     list edit   equipmentTypes
     list multiple selection    equipmentTypes
      list select value     equipmentTypes
     list scrollbar    equipmentTypes
     list order     equipmentTypes
    
  
Equipment number 
     Log to Console  \n
    numeric nospecialcharacter   equipmentnumber
     numeric noalphabets    equipmentnumber
     numeric space    equipmentnumber
     
Equipment number allow numbers
      Reload Page 
       Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
      Select From List By Index    xpath=//*[@id="equipmentTypes"]       2  
      ${equipmentnumber}    Random Number
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
      updating data
      
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
      
Equipment decription allows alphabets
      Reload Page 
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
      Select From List By Index    xpath=//*[@id="equipmentTypes"]       2
       ${equipmentnumber}    Random Number
      Input Text    xpath=//*[@id="equipmentnumber"]    ${equipmentnumber}     
       Input Text    xpath=//*[@id="equipmentdesc"]    equipment description
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
      updating data
Equipment description specialcharacter and numbers not allowed
      Log to Console  \n
    text number not allowed    equipmentdesc
    text splchar not allowed    equipmentdesc
    

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
    
 
License Plate number allows numbers
      Reload Page 
      Select From List By Index    xpath=//*[@id="equipmentTypes"]       2
      ${equipmentnumber}    Random Number
      Input Text    xpath=//*[@id="equipmentnumber"]    ${equipmentnumber}     
      ${equipmentdesc}   Random Letters    length=10
       Input Text    xpath=//*[@id="equipmentdesc"]    ${equipmentdesc}
      ${licenseplate}    Random Digit 
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
      updating data
    
License Plate number allows nospecial character,nospace
    
    numeric nospecialcharacter    licenseplate
    numeric space    licenseplate

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
    

Year allows numbers
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
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      updating data 
Year no alphabets, nospecialcharacter, nospace
     Log to Console  \n
    numeric noalphabets    vehicleyear
    numeric nospecialcharacter    vehicleyear
    numeric space    vehicleyear

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
    
    
Vehicle make allows numbers
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
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      updating data 
    
Vehicle make allows noalphabets, nospecialcharacter, nospace
     Log to Console  \n
    numeric noalphabets    vehiclemake
    numeric nospecialcharacter    vehiclemake
    numeric space    vehiclemake
    

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
    

Vehicle Model allows alphanumeric 
     Reload Page 
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
     Select From List By Index    xpath=//*[@id="equipmentTypes"]       2
     ${equipmentnumber}   Random Number
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
       Input Text    xpath=//*[@id="vehiclemodel"]    ${vehiclemodel}STRING
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     10s 
      ${vehiclevin}      Random Number
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      updating data     
Vehicle Model
     Reload Page
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
      Scroll Element Into View   xpath=//*[@id="vehiclemodel"] 
     Log to Console  \n
     
     text spaceafter    vehiclemodel
     text spacebefore    vehiclemodel

Vinnumber accepts numbers
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
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}  
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1 
      updating data
Vinnumber
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     100s 
       Log to Console  \n
      numeric noalphabets   vin
       numeric nospecialcharacter    vin
      numeric space    vin
Current Value in dollar accepts numbers
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
      Input Text    xpath=//*[@id="vin"]    ${vehiclevin}
      ${Vehiclevalue}     Random Number  
      Input Text    xpath=//*[@id="currentvehiclevalue"]    ${Vehiclevalue}   
      Select From List By Index    xpath=//select[@id="equipmentownership"]     1
      updating data
   
Current Value in dollar
      Reload Page
      Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
      Scroll Element Into View    xpath=//*[@id="save-btn"]  
      Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     100s 
      Log to Console  \n
      numeric noalphabets   currentvehiclevalue
      numeric nospecialcharacter    currentvehiclevalue
      numeric space    currentvehiclevalue


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
        
Equipment ownership
    Reload Page
    Selenium2Library.Wait Until Element Is Visible  xpath=//*[@id="equipmentTypes"]     10s
    Scroll Element Into View    xpath=//*[@id="save-btn"]  
    Wait Until Element Is Visible    xpath=//*[@id="save-btn"]     10s 
    Log to Console  \n
    list default      equipmentownership 
    list edit   equipmentownership
    list multiple selection    equipmentownership
    list select value     equipmentownership
    list order     equipmentownership
    list select value     equipmentownership
 



