***Settings***
Library    Selenium2Library


***Variables***
${MIN_NUMERIC_LENGTH}  23
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
 

numeric noalphabets
    [arguments]  ${ID}
    ${NO_ALPHABET} =  Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    Alphabet
    ${box text}=       Selenium2Library.Get Text    xpath=//input[@id="${ID}"]
    Should Not Be Equal    ${box text}     ${NO_ALPHABET}
    Log to Console     ${ID}   restrict Alphabets 
    

numeric nospecialcharacter
    [arguments]  ${ID}
    ${NO_SPLCHAR} =  Selenium2Library.Input Text   xpath=//input[@id="${ID}"]      )&^%$$
    ${box text}=       Selenium2Library.Get Value    xpath=//input[@id="${ID}"]
    Should Not Be Equal    ${box text}     ${NO_SPLCHAR}
    Log to Console     ${ID}   restrict special characters
        
 numeric maxlength
     [arguments]  ${ID}
     Selenium2Library.Input Text   xpath=//input[@id="${ID} "]   ${MAX_NUMERIC_LENGTH}
     Log To Console  ${ID} validation for maximum length
     
numeric maximumlength    
    [arguments]  ${ID}
    ${NUMERIC_LENGTH} =  Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    4545445567 
    ${box text}=       Selenium2Library.Get Element Attribute    xpath=//input[@id="${ID}"]    attribute=maxlength
    Should Be Equal  ${box text}     ${NUMERIC_LENGTH}
    Log To Console  ${ID} validation for maximum length
    
numeric space
    [arguments]  ${ID}
    ${SPACE} =  Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    3333 44446  
    ${box text}=       Selenium2Library.Get Text   xpath=//input[@id="${ID}"]    
    Should Not Be Equal  ${box text}     ${SPACE}
    Log To Console  ${ID} validation for numeric space
     