*** Settings ***
Library    SeleniumLibrary
   

Resource    BapachoVariables.robot
Resource    Customerkeywords.robot 
Resource    Merchantkeywords.robot
Resource    CMSkeywords.robot
Resource    BasicRegressionKeywords.robot

***Keywords***

Type_To_Search_bakery_MerchantwithoutOnlinePayment
        Click_bakeries
        Click Element    //button[2]/i
        SeleniumLibrary.Input Text    //input[@name='keywordInput']     ${MerchantName without payment}
        Click Element          //button[2]/i
        