*** Settings ***
Library    SeleniumLibrary

Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot
Resource    Customerkeywords.robot 
#Resource    Merchantkeywords.robot
Resource    CMSkeywords.robot
#Resource    BasicRegressionKeywords.robot



***Keywords***

Open SalesagentPortal
    Open Browser    ${SalePortal_${Language}}   chrome
    Maximize Browser Window
    
Login as SalesAgent
    Input Text    name=username    ${SalesAgentCredentials}[0]    
    Input Password    name=password    ${SalesAgentCredentials}[1]     
    Click Button    //button[contains(.,'Login')]    
    
Search Merchant
    BuiltIn.Sleep    2    
    Input Text  //input[contains(@type,'text')]  Nisha
    Click Button    //button[contains(.,'Search')]    
    BuiltIn.Sleep    7   
    Click Element    (//div[contains(@class,'title')])[2]    
    Capture Page Screenshot       
    
My merchant
    Page Should Contain      ${MultishopMerchantName}     
