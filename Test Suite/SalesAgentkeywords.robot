*** Settings ***
Library    SeleniumLibrary

Resource    BapachoVariables.robot
Resource    Customerkeywords.robot 
Resource    Merchantkeywords.robot
Resource    CMSkeywords.robot
Resource    BasicRegressionKeywords.robot

***Keywords***

Open SalesagentPortal
    Open Browser    https://bapacho:bapacho@sales.bapacho.com/nl/    chrome
    Maximize Browser Window
    
Login as SalesAgent
    Input Text    name=username    ${SalesAgentCredentials}[0]    
    Input Password    name=password    ${SalesAgentCredentials}[1]     
    Click Button    //button[contains(.,'Login')]    
    
 Search Merchant
    BuiltIn.Sleep    2    
    Input Text  //input[contains(@type,'text')]  ${MerchantName without payment}
    Click Button    //button[contains(.,'Search')]    
    BuiltIn.Sleep    7   
        
