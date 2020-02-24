***Settings***
Library    Selenium2Library
Library    Collections


***Keyword***

list default 
   [arguments]  ${listID}
   ${var} =  Get Value    xpath=//*[@id="${listID}"] 
   Log To Console  default value:  ${var}

list all
    [arguments]  ${listID}
   @{items}=    Selenium2Library.Get List Items    xpath=//*[@id="${listID}"]   
  
   Log To Console    ${items}  /n  
   Run Keyword And Ignore Error    Log    Listing all items is not possible

list select value 
    [arguments]  ${listID}
    Selenium2Library.Select From List By Index   xpath=//*[@id="${listID}"]    0
  
    Run Keyword And Ignore Error    Log    Selecting value from list not working
 
   
list order 
     [arguments]  ${listID}
      @{items}=   Get List Items   xpath=//select[@id="${listID}"]  
       @{order_alphbet}=   Collections.Sort List   ${items}
       Lists Should Be Equal   ${items}    ${order_alphbet}  
      
      Log to Console   ${listID}  ${order_alphbet} are in alphabetical order                
      Run Keyword And Ignore Error    Log    list are not in alphabetical order
    
list edit
      [arguments]  ${listID}
      Click Element    xpath=//select[@id="${listID}"]
      Input Text    xpath=//select[@id="${listID}"]     dropdown

list multiple selection
    [arguments]  ${listID}
    ${Status}   Selenium2Library.Select from list by index    ${listID}    0    1
    Run Keyword If  ${Status}== None     Log to Console    List does not allow multiple selection 
     
    

list frozen
         [arguments]  ${listID}
      Element Should Not Be Visible      xpath=//select[@id="${listID}"]    

list scrollbar
       [arguments]  ${listID}
     Scroll element Into View     xpath=//select[@id="${listID}"]    
     
    
