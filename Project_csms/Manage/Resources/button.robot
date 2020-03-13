***Settings***
Library    Selenium2Library
Library   Collections



***keywords***
button rightname
   [arguments]  ${name}
    ${Button_name} =  Page Should Contain Button  xpath=//*[contains(text(),"${name}")] 
   Log to Console  Buttton name ${name}
   

button active
     [arguments]  ${name}
   
   Element Should Be Enabled     xpath=//*[contains(text(),"${name}")] 
    Log to Console  Buttton ${name} is active
   
   
button inactive
   [arguments]  ${name}

   Element Should Be Disabled     xpath=//*[contains(text(),"${name}")] 
   Log to Console  Buttton ${name} is Inactive
   
   
