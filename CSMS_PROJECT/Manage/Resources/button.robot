***Settings***
Library    Selenium2Library
Library   Collections



***keywords***
button rightname
   [arguments]  ${ID}
  
   ${Button_name} =  Selenium2Library.Get Element Attribute  xpath=//button[@class="${ID}"]   attribute=name
  
   Log to Console  ${Button_name}
   

button active
     [arguments]  ${ID}
  
   ${Button_name} =  Selenium2Library.Get WebElement  xpath=//button[@class="${ID}"]
   Element Should Be Enabled     xpath=//button[@class="${ID}"]
   
button inactive
   [arguments]  ${ID}
   ${Button_name} =  Selenium2Library.Get WebElement  xpath=//button[@class="${ID}"]
   Element Should Be Disabled    ${Button_name}

   
