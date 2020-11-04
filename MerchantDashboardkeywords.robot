*** Settings ***
Library    SeleniumLibrary
   

Resource    CMSkeywords.robot
Resource    MerchantOnboardingkeywords.robot
Resource    BapachoVariables.robot

***Keyword***

Dashboard_New order
    Click Element    (//span[contains(.,'New order')])[1]   
    Wait Until Page Contains    Order for customer    