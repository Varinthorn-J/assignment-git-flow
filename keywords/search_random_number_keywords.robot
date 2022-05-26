*** Settings ***
Resource  ../import.robot

*** Keywords ***
go to 
  Open Browser  ${lotuss_web}  chrome
  Maximize Browser Window
  
search input text
  Wait Until Element Is Visible  ${search_input}
  ${search_numbers} =  generate random numbers 
  Input Text  ${search_input}   ${search_numbers}    
  Press Keys  ${search_input}  ENTER
  Wait Until Element Is Visible  ${search_result}
  Page Should Contain Element  ${search_result}
  
         


 
  
   


    