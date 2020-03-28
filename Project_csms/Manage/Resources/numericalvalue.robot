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
    Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    Alphabet
    Selenium2Library.Element Should Not Contain    xpath=//input[@id="${ID}"]    Alphabet
    Log to Console     restrict Alphabets 
    
numeric nospecialcharacter
    [arguments]  ${ID}
    Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    )&^%$$
    Selenium2Library.Element Should Not Contain    xpath=//input[@id="${ID}"]    )&^%$$
    Log to Console      restrict special characters

     
numeric maximumlength    
    [arguments]  ${ID}
    ${NUMERIC_LENGTH} =  Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    4545445567 
    ${box text}=       Selenium2Library.Get Element Attribute    xpath=//input[@id="${ID}"]    attribute=maxlength
    Should Be Equal  ${box text}     ${NUMERIC_LENGTH}
    Log To Console  ${ID} validation for maximum length
    
numeric space
    [arguments]  ${ID}
   ${number_space}   Selenium2Library.Input Text   xpath=//input[@id="${ID}"]    3333 44446  
   ${number_nospace}      Selenium2Library.Get Value   xpath=//input[@id="${ID}"]     
   Should Not Be Equal       ${number_space}       ${number_nospace}  
    Log To Console   validation for numeric space successful
     