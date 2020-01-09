***Settings***
Library    Selenium2Library
Resource   dropdownlist.robot  
Resource   data.robot

***Variables***
${NUMBER}  4235569987
${MIN_LENGTH}  IB
${MAX_LENGTH}   SOME STRING TO VERIFY MAX LENGTH
${SPC_BEFORE}   ${SPACE}STRING
${SPC_AFTER}   STRING${SPACE}



***Keywords***
text notnull
   [arguments]  ${ID}
    Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    ${EMPTY}
    Log To Console  ${ID} validation for NULL 
    
text splchar allow
    [arguments]  ${ID}  ${data}
    Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    ${data["companyname"]}
     Log To Console   ${ID} Text allows special character
    

text no alphabets
    [arguments]  ${ID}
     ${NO_ALPHABET} =  Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    Alphabet123
    
    ${box text}=       Selenium2Library.Get Value    xpath=//input[@id="${ID}"]
    Should Not Be Equal    ${box text}     ${NO_ALPHABET}
    Log to Console     ${ID}   restrict Alphabets   
   

     

text splchar not allowed
    [arguments]  ${ID}
    
    ${SPL_CHAR}=  Selenium2Library.Get Element Attribute     xpath=//input[@id="${ID}"]    attribute=pattern
    Log To Console   attribute ${SPL_CHAR} 
    Should Be Equal     ${SPL_CHAR}    [0-9]*
    
    Run Keyword And Ignore Error    Log  ${SPL_CHAR} Text does not allow special character
    


text number
     [arguments]  ${ID}
     Selenium2Library.Input Text    xpath=//input[@id="${ID}"]   ${NUMBER}
     Log to Console  ${ID}  Number validation
    

text notpastable
    [arguments]  ${ID}
  
    Press Keys   xpath=//input[@id="${ID}"]    Ctrl+ A
    Press Keys   xpath=//input[@id="${ID}"]    Ctrl + c
    Press Keys   xpath=//input[@id="${ID}"]    Ctrl+ v 
    

    Run Keyword And Ignore Error    Log  ${ID}  Text does not allow copy/paste
    

text minlength
     [arguments]  ${ID}
     Selenium2Library.Input Text    xpath=//input[@id="${ID}"]   ${MIN_LENGTH}
     Log to Console  ${ID}  Minimum length validation
 
text maxlength
      [arguments]  ${ID}
     Selenium2Library.Input Text    xpath=//input[@id="${ID}"]   ${MAX_LENGTH}
     Log to Console  ${ID} Maximum length  validation
     
text spacebefore       
      [arguments]  ${ID}
     Selenium2Library.Input Text    xpath=//input[@id="${ID} "]   ${SPC_BEFORE}
     Log to Console  ${ID}    Space before Validation
text spaceafter
       [arguments]  ${ID}
     Selenium2Library.Input Text    xpath=//input[@id="${ID} "]   ${SPC_AFTER}
     Log to Console  ${ID}    Space after Validation
    
