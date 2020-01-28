***Settings***
Library    Selenium2Library
Library    Collections


***Keyword***

list default 
   [arguments]  ${listID}
   ${var} =  Get Value    xpath=//select[@id="${listID}"] 
   Log To Console  default ${var}

list all
    [arguments]  ${listID}
   @{items}=    Selenium2Library.Get List Items    xpath=//select[@id="${listID}"]   
  
   Log To Console    ${items}    
   Run Keyword And Ignore Error    Log    Listing all items is not possible

list select value 
    [arguments]  ${listID}
    Selenium2Library.Select From List By Index   xpath=//select[@id="${listID}"]    0
  
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
    Selenium2Library.Select from list by index    ${listID}    0    1
    Log To Console    List does not allow multiple selection    
    Run Keyword And Ignore Error    Log    List allow multiple selection


list frozen
      Element Should Not Be Visible      xpath=//select[@id="pnumbertype"]    

list scrollbar
    Scroll Element Into View    locator
    
