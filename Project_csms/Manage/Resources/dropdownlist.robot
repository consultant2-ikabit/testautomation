***Settings***
Library    Selenium2Library
Library    Collections
Library  String



***Keyword***

list default 
   [arguments]  ${listID}
   ${var} =  Get Selected List Value   xpath=//*[@id="${listID}"] 
   Log To Console  default value:  ${var}

list all
    [arguments]  ${listID}
   @{items}=    Selenium2Library.Get List Items    xpath=//*[@id="${listID}"]   
  
   Log To Console    ${items}   
   Run Keyword And Ignore Error    Log    Listing all items is not possible

list select value 
    [arguments]  ${listID}
    Selenium2Library.Select From List By Index   xpath=//*[@id="${listID}"]    0
  
    Run Keyword And Ignore Error    Log    Selecting value from list not working
 
   
list order 
     [arguments]  ${listID}
      @{items}   Get List Items   xpath=//select[@id="${listID}"]
      Remove From List    ${items}    0
      log to console   ${items} 
      ${order_alphabet}  Copy List      ${items}   
      log to console        ${order_alphabet}   
      Sort List    ${order_alphabet}
      log to console        ${order_alphabet}  
      Lists Should Be Equal    ${order_alphabet}   ${items}    
      Log to Console   list is in alphabetical order                
      Run Keyword And Ignore Error    Log    list is not in alphabetical order
    
list edit
      [arguments]  ${listID}
       ${Status}  Get Element Attribute    xpath=//select[@id="${listID}"]     attribute=option
       Run Keyword If  ${Status}== None     Log to Console    List cannot be edited


list multiple selection
    [arguments]  ${listID}
    ${Status}   Selenium2Library.Select from list by index    ${listID}    0    1
    Run Keyword If  ${Status}== None     Log to Console    List does not allow multiple selection 
     
    

list frozen
         [arguments]  ${listID}
      Element Should Not Be Visible      xpath=//select[@id="${listID}"]    

list scrollbar
       [arguments]  ${listID}
     ${Status}    Get Element Attribute   xpath=//select[@id="${listID}"]    attribute=overflow-y
     log to console    ${Status}  
     Run Keyword If  ${Status}== None     Log to Console    Vertical scroll bar is visible
#   Scroll element Into View     xpath=//select[@id="${listID}"]    
     
    
