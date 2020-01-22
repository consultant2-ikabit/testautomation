***Settings***
Library    Selenium2Library
Library   Collections



***keywords***
button rightname
   [arguments]  ${ID}
  
   ${Button_name} =  Selenium2Library.Get Text   xpath=//*[@class="${ID}"]
  
   Log to Console  ${Button_name}

   
