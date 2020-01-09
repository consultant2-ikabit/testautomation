***Settings***
Library    Selenium2Library

***Variables***
${MIN_NUMERIC_LENGTH}  2
${MAX_NUMERIC_LENGTH}  59969604444


***keywords***

numeric field zero
    [arguments]  ${ID}
    Selenium2Library.Input Text   xpath=//input[@id="${ID} "]  0
    Log To Console  ${ID} validation for zero value

numeric field negative
    [arguments]  ${ID}
    Selenium2Library.Input Text   xpath=//input[@id="${ID} "]   -1 
    Log To Console  ${ID} validation for negative 
 

numeric alphanumeric
      [arguments]   ${ID}
      Selenium2Library.Input Text   xpath=//input[@id="${ID} "]   Element12
      Log To Console  ${ID} validation for alphanumeric
      
numeric specialcharacter
     [arguments]  ${ID}
     Selenium2Library.Input Text   xpath=//input[@id="${ID} "]   23593!
     Log To Console  ${ID} validation for specialcharacter
    
 numeric maxlength
     [arguments]  ${ID}
     Selenium2Library.Input Text   xpath=//input[@id="${ID} "]   ${MAX_NUMERIC_LENGTH}
     Log To Console  ${ID} validation for maximum length
     
numeric minimumlength
      [arguments]  ${ID}
     Selenium2Library.Input Text   xpath=//input[@id="${ID} "]   ${MIN_NUMERIC_LENGTH}
     Log To Console  ${ID} validation for minimum length

     