*** Settings ***
Library    SeleniumLibrary
      

Resource    CMSkeywords.robot
Resource    Merchantkeywords.robot
Resource    BapachoVariables.robot


***Keyword***

Open_CMS
    Open Browser    https://bapacho:bapacho@staging.bapacho.com/admin    chrome
    Maximize Browser Window
    
CMSAdmin_Login
    SeleniumLibrary.Input Text    name=email       nisha@inqadigital.com
    Input Password    name=password        Jishannaresh29
    Click Button    //button[@type='submit'][contains(.,'Login')]    
    Wait Until Page Contains    Nisha    
    
Click_Outlets/Stores
    Click Element    //a[contains(.,'Outlets / stores')]    
    
Create_NewMerchant
    Wait Until Page Contains Element    //button[@type='button'][contains(.,'New')]    
    Click Button   //button[@type='button'][contains(.,'New')]   
    Wait Until Page Contains    New  
    Wait Until Page Contains Element    name=fields[title]    
    SeleniumLibrary.Input Text    name=fields[title]    ${MerchantName}
    SeleniumLibrary.Input Text    name=fields[username]    ${MerchantOnboardingCredentials}[0]
    Click Button    //button[contains(.,'Save')]    
    
Create_NewMerchant_without Payment
    Wait Until Page Contains Element    //button[@type='button'][contains(.,'New')]    
    Click Button   //button[@type='button'][contains(.,'New')]   
    Wait Until Page Contains    New  
    Wait Until Page Contains Element    name=fields[title]    
    SeleniumLibrary.Input Text    name=fields[title]   ${MerchantName without payment}
    SeleniumLibrary.Input Text    name=fields[username]    ${Merchant_Without_OnlinePayment_Credentials}[0]
    Click Button    //button[contains(.,'Save')]   
            
Search myBakery in CMS
    Wait Until Page Contains Element    //input[contains(@type,'text')]      
    SeleniumLibrary.Input Text    //input[contains(@type,'text')]        ${MerchantName}   
    Press Keys      //input[contains(@type,'text')]    ENTER
    Wait Until Page Contains    ${MerchantName}
    Click Element    //a[contains(.,'edit')]     

Search myBakery in CMS_without Payment
    Wait Until Page Contains Element    //input[contains(@type,'text')]      
    SeleniumLibrary.Input Text    //input[contains(@type,'text')]        ${MerchantName without payment}   
    Press Keys      //input[contains(@type,'text')]    ENTER
    Wait Until Page Contains    ${MerchantName without payment}
    Click Element    //a[contains(.,'edit')]     

        
    
    
Enter email address in CMS
    Wait Until Page Contains Element    name=columns[emailOrders]    
    Input Text    name=columns[emailOrders]     ${MerchantOnboardingCredentials}[0]    
    Click Element    //button[@type='button'][contains(.,'Save')]    
           
Send activation mail from CMS to Merchant
    
   Wait Until Page Contains Element    //button[contains(.,'Send activation email')]
   Click Element    //button[contains(.,'Send activation email')]   
   Wait Until Page Contains Element    //button[contains(.,'Yes, send it!')]    
   Click Element    //button[contains(.,'Yes, send it!')]  
    Set Browser Implicit Wait    10
    Wait Until Page Contains Element    //button[contains(.,'OK')]       
    Click Element    //button[contains(.,'OK')]    
   
Check Merchant Activation mail
      SeleniumLibrary.Input Text    name=login    ${MerchantOnboardingCredentials}[0]
      Click Button    //input[contains(@class,'sbut')]    
      Wait Until Page Contains    Inbox    
      Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)         
      Select Frame    //iframe[@id='ifmail']
      Click Element    //a[contains(.,'https://staging.bapacho.com/activateShop.php?guid=BB7B7ECF-31C8-C071-C3E6-04A515C461A9')]
        

Check Merchant Activation mail_without Payment
      SeleniumLibrary.Input Text    name=login    ${Merchant_Without_OnlinePayment_Credentials}[0]
      Click Button    //input[contains(@class,'sbut')]    
      Wait Until Page Contains    Inbox    
      Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)         
      Select Frame    //iframe[@id='ifmail']
      Click Element    //a[contains(.,'https://staging.bapacho.com/activateShop.php?')]
        