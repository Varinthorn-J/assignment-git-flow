*** Settings ***
Resource  ../import.robot

*** Keywords ***
<<<<<<< HEAD
go to lotuss web 
=======
go to 
>>>>>>> feature-002
  Open Browser  ${lotuss_web}  chrome
  Maximize Browser Window
  

login
  Wait Until Element Is Visible   //*[@id="header-login-link"] 
  Click Element  //*[@id="header-login-link"]
  Wait Until Element Is Visible  ${input_username}
  Input Text  ${input_username}  ${username}
  Input Password  ${input_password}  ${password}
  Click Button  //*[@id="login"]
  Wait Until Element Is Visible  ${profile} 
<<<<<<< HEAD
  Page Should Contain Element  ${profile}  Success  
=======
  Page Should Contain Element  ${profile}  Success
  Close Browser  
>>>>>>> feature-002
  


 
  
   


    