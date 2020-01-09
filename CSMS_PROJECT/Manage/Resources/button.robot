***Settings***
Library    Selenium2Library
Library   Collections



***keywords***
button rightname
   [arguments]  ${ID}
   Page Should Contain Button    xpath=//input[@id='Submit'] OR
   Page Should Contain Button    xpath=//input[@id='Cancel'] OR
   Page Should Contain Button    xpath=//input[@id='Yes'] OR 
   Page Should Contain Button    xpath=//input[@id='No'] 
   Log To Console    ${ID}    
   
