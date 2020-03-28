***Settings***
Library    Selenium2Library
Library   String
Resource   dropdownlist.robot  


***Variables***
${NUMBER}  4235569987
${MIN_LENGTH}  IB
${MAX_LENGTH}   SOME STRING TO VERIFY MAX LENGTH
${SPC_BEFORE}   ${SPACE} STRING
${SPC_AFTER}   STRING${SPACE}AFTER
${SPL_CHAR}    ![a-zA-Z0-9 ]*
${NUM}         [0-9]*



***Keywords***
text notnull
   [arguments]  ${ID}
    Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    ${EMPTY}
    Log To Console  ${ID} validation for NULL 
    
text splchar allow
    [arguments]  ${ID}
    Selenium2Library.Input Text   xpath=//input[@id="${ID}"]      @#$@!@$
    ${PATTERN}=  Selenium2Library.Get Element Attribute     xpath=//input[@id="${ID}"]    attribute=pattern
    Should Be Equal    ${PATTERN}   ${SPL_CHAR}   
    Log To Console    Text allows special character
    

text no alphabets
    [arguments]  ${ID}
     ${NO_ALPHABET} =  Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    Alphabet123
    
    ${box text}=       Selenium2Library.Get Value    xpath=//input[@id="${ID}"]
    Should Not Be Equal    ${box text}     ${NO_ALPHABET}
    Log to Console     ${ID}   restrict Alphabets   
   

     
 
text splchar not allowed
    [arguments]  ${ID}
    
    ${PATTERN}=  Selenium2Library.Get Element Attribute     xpath=//*[@id="${ID}"]    attribute=pattern
    Should Not Be Equal    ${PATTERN}   ${SPL_CHAR}   
    
    Run Keyword And Ignore Error    Log  ${SPL_CHAR} Text does not allow special character
    


text number not allowed
     [arguments]  ${ID}
     ${PATTERN}=  Selenium2Library.Get Element Attribute     xpath=//*[@id="${ID}"]    attribute=pattern
    Should Not Be Equal    ${PATTERN}   ${NUM}   
    
    Run Keyword And Ignore Error    Log  ${SPL_CHAR} Text does not allow number
    


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
      
     Selenium2Library.Input Text    xpath=//input[@id="${ID}"]    " STRING"
#     ${box text}       Selenium2Library.Get Value    xpath=//input[@id="${ID}"]
     Textfield Value Should Be  xpath=//input[@id="${ID}"]    STRING    
      log to console  Textfield does accept space before 
 

text spaceafter
       [arguments]  ${ID}
     Selenium2Library.Input Text    xpath=//input[@id="${ID}"]   ${SPC_AFTER}
     Textfield Value Should Be    xpath=//input[@id="${ID}"]    STRINGAFTER   
     log to console  Textfield does accept space after 
  
    
