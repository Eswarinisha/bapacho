*** Settings ***
Library    SeleniumLibrary
      

Resource    CMSkeywords.robot
#Resource    Merchantkeywords.robot
Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot



***Keyword***

Open_CMS
    Open Browser    ${CMS_URL_${Language}}     ${Chrome}
    Maximize Browser Window
    
CMSAdmin_Login
    SeleniumLibrary.Input Text    name=email       nisha@inqadigital.com
    Input Password    name=password        Jishannaresh29
    Click Button    //button[@type='submit'][contains(.,'Login')]        
    Wait Until Page Contains    Nisha  
    Capture Page Screenshot  
   
#HomePage
Homepage details
        Sleep    5
        Page Should Contain Element    //div[contains(@id,'homechart')]            
        Page Should Contain Element    chart    
        Capture Page Screenshot


#OUTLET/STORES

Click_Outlets/Stores
    Click Element    //a[contains(.,'Outlets / stores')]  
    Capture Page Screenshot  
    Sleep    3
    
Create_NewMultishopMerchant
    Wait Until Page Contains Element    //button[@type='button'][contains(.,'New')]    
    Click Button   //button[@type='button'][contains(.,'New')]   
    Sleep     2
    Wait Until Page Contains Element    name=fields[title]    
    SeleniumLibrary.Input Text    name=fields[title]    ${MultishopMerchantName}
    Sleep     2
    SeleniumLibrary.Input Text    fields[email]    ${MultishopMerchantCredentials}[0]
    Capture Page Screenshot
    Sleep     2
    Click Button    //button[contains(.,'Save')]  
    Sleep     4
    
Search MultishopBakery in CMS
    Wait Until Page Contains Element    //input[contains(@type,'text')]      
    SeleniumLibrary.Input Text    //input[contains(@type,'text')]       ${MultishopMerchantName}  
    Press Keys      //input[contains(@type,'text')]    ENTER
    Sleep     2
    Wait Until Page Contains    ${MultishopMerchantName}
    Click Element    //a[contains(.,'edit')]  


Delete store
        Click Element    (//a[contains(.,'delete')])[1]    

 
    
Edit Store 
    Click Element    //a[contains(.,'edit')]     

Search products of Merchant
    BuiltIn.Sleep    2    
    Click Element    (//a[contains(.,'Products')])[2]    
    Capture Page Screenshot    
        
Enter Multishop email address in CMS
    Wait Until Page Contains Element    name=columns[emailOrders]    
    Input Text    name=columns[emailOrders]     ${MultishopMerchantCredentials}[0]  
    Click Element    //button[@type='button'][contains(.,'Save')] 
           
Send activation mail from CMS to Merchant
    
    Sleep     2
    Click Element    //button[contains(.,'Send activation email')]   
    Capture Page Screenshot
    Wait Until Page Contains Element    //button[contains(.,'Yes, send it!')]  
    Capture Page Screenshot  
    Sleep     2
    Click Element    //button[contains(.,'Yes, send it!')]  
    Sleep     6
    Wait Until Page Contains Element    //button[contains(.,'OK')]       
    Click Element    //button[contains(.,'OK')]    
   

   
View Client
      Click Element    (//a[contains(.,'Clients')])[1]
      Capture Page Screenshot        

Search Client
    Wait Until Page Contains Element    //input[contains(@type,'text')]      
    SeleniumLibrary.Input Text    //input[contains(@type,'text')]       ${FBCredentials}[1] 
    Capture Page Screenshot  
    Press Keys      //input[contains(@type,'text')]    ENTER
    Wait Until Page Contains     ${FBCredentials}[1] 
    Capture Page Screenshot    
    
   
View Product Attribute in CMS
     Click Element    //a[contains(.,'Product attributes')]    
     Capture Page Screenshot   
     
View Product Nutrition in CMS  
    Click Element    //a[contains(.,'Product nutritions')]    
    

View Product Category in CMS
     Click Element    (//a[contains(.,'Product categories')])[1]
     Wait Until Page Contains    ${ProductCategoryName}    
     Page Should Contain    ${ProductCategoryName}     
     Capture Page Screenshot 
     
    
     
View Product Name in CMS
     Click Element    //a[contains(.,'Products')]  
     Wait Until Page Contains     ${Productname}      
     Page Should Contain    ${Productname}    
     Capture Page Screenshot     
     
View Cancelled Orders under Orders
     
    Click Element    (//a[contains(.,'Orders')])[1]    
    BuiltIn.Sleep    3 
    Click Element    (//a[contains(.,'view')])[1] 
    BuiltIn.Sleep    3 
    Element Should Contain    niks    cancelled  
    Capture Page Screenshot        
#FAQ

CMS FAQ
    Click Element    (//a[contains(.,'FAQ')])[1]
    Click Element    //a[@href='/admin/faq/view']    
    Capture Page Screenshot       
    Click Element    //a[contains(.,'FAQ Groups')]  
    Capture Page Screenshot
    Click Element    //a[contains(.,'FAQ Topics')]    
    Capture Page Screenshot  
    
CMS Language
     Click Element    (//a[contains(.,'Languages')])[1]     
     Capture Page Screenshot  
     
CMS Sales Agent
    Click Element    //a[contains(.,'Sales agents')]    
    Capture Page Screenshot  
    Sleep    4  
    
CMS Users
    Click Element    (//a[contains(.,'CMS users')])[1]    
    Capture Page Screenshot   
    

Settings    
    Click Element    //a[contains(.,'Settings')]    
    Capture Page Screenshot    
    
Global Settings
    Click Element    //a[contains(.,'Global settings')]
    Capture Page Screenshot    
    
VAT settings
    Click Element    //a[contains(.,'VAT settings')]    
    Capture Page Screenshot    
    
Delivery Options
    Click Element    //a[contains(.,'Delivery options')]    
    Capture Page Screenshot    

Payment Methods
     Click Element    //a[contains(.,'Payment Methods')]    
     Capture Page Screenshot        
    
#Sales Agent
Add bakery salesagent 
    Click Element     //a[@href='/admin/accountmanagers/edit/46E63596-DABD-4DD2-312C-9E6CFE029DB2']
    Sleep     3
    Input Text    //input[contains(@class,'select2-search__field')]    ${MultishopMerchantName} 
    Sleep    2    
    Click Element      (//li[contains(@role,'treeitem')])[1]
    Capture Page Screenshot    
    Click Element    //button[contains(.,'Save')]    
    Capture Page Screenshot   

#ARCHIEVE

Create_NewMerchant
    Wait Until Page Contains Element    //button[@type='button'][contains(.,'New')]    
    Click Button   //button[@type='button'][contains(.,'New')]   
    Wait Until Page Contains    New  
    Wait Until Page Contains Element    name=fields[title]    
    SeleniumLibrary.Input Text    name=fields[title]    ${MerchantName_${Language}}
    SeleniumLibrary.Input Text    name=fields[username]    ${Merchant_Without_OnlinePayment_Credentials}[0]
    Capture Page Screenshot
    Click Button    //button[contains(.,'Save')]  
       
Create_NewMerchant_without Payment
    Sleep    4    
    Click Button   //button[contains(.,'New')]  
    Wait Until Page Contains    New  
    Wait Until Page Contains Element    name=fields[title]    
    SeleniumLibrary.Input Text    name=fields[title]   ${MerchantName without payment}
    SeleniumLibrary.Input Text    name=fields[username]    ${Merchant_Without_OnlinePayment_Credentials}[0]
    Capture Page Screenshot
    Click Button    //button[contains(.,'Save')]   
            
Search myBakery in CMS
    Wait Until Page Contains Element    //input[contains(@type,'text')]      
    SeleniumLibrary.Input Text    //input[contains(@type,'text')]       ${MerchantName_${Language}}  
    Press Keys      //input[contains(@type,'text')]    ENTER
    Wait Until Page Contains    ${MerchantName_${Language}}
    Click Element    //a[contains(.,'edit')] 
    
Search myBakery in CMS_without Payment
    BuiltIn.Sleep    2    
    Wait Until Page Contains Element    //input[contains(@type,'text')] 
    Input Text    //input[contains(@type,'text')]     ${MerchantName without payment} 
    Capture Page Screenshot  
    Press Keys      //input[contains(@type,'text')]    ENTER
    Wait Until Page Contains    ${MerchantName without payment}
    Sleep    2    
    Capture Page Screenshot  


Enter email address in CMS
    Wait Until Page Contains Element    name=columns[emailOrders]    
    Input Text    name=columns[emailOrders]     ${Merchant_Without_OnlinePayment_Credentials}[0]    
    Click Element    //button[@type='button'][contains(.,'Save')]     
    
Check Merchant Activation mail
      SeleniumLibrary.Input Text    name=login    ${Merchant_Without_OnlinePayment_Credentials}[0]
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
      Click Element    ${activationmail_${Language}} 
      
Check Merchant Activation mail_with Payment
      SeleniumLibrary.Input Text    name=login    ${Merchant_Without_OnlinePayment_Credentials}[0]
      Click Button    //input[contains(@class,'sbut')]    
      Wait Until Page Contains    Inbox    
      Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)         
      Select Frame    //iframe[@id='ifmail']
      Capture Page Screenshot
      Click Element    ${activationmail_${Language}} 