*** Settings ***
Resource  ../import.robot
Resource  ../keywords/search_random_number_keywords.robot


*** Test Cases ***
TC-002
  go to lotuss web
  ${search_numbers} =  generate random numbers
  Wait Until Element Is Visible  ${search_input} 
  Input Text  ${search_input}   ${search_numbers}    
  Press Keys  ${search_input}  ENTER
  Wait Until Element Is Visible  ${search_result}
  Page Should Contain Element  ${search_result}
       
    
  
    
  

  