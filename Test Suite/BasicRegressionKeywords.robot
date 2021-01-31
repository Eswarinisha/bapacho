*** Settings ***
Library    SeleniumLibrary
   

Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot
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
        BuiltIn.Sleep    2    
        Capture Page Screenshot
        
Select a bakery from list_MerchantwithoutOnlinePayment
         BuiltIn.Sleep    2       
         Click Element    (//div[@class='text-success'])[1]
        
PDP_AddtoCart_MerchantwithoutOnlinePayment
        Scroll Element Into View    (//div[@class='productCard'])[1]  
        Click Element    (//i[@class='fas fa-plus fa-fw'])[1]  
        Click Element    (//i[@class='fas fa-plus fa-fw'])[1] 
        Click Element    (//i[@class='fas fa-plus fa-fw'])[1] 
        BuiltIn.Sleep     2 
        
Type_To_Search_bakery_Merchant with Online Payment
        Click_bakeries
        Click Element    //button[2]/i
        SeleniumLibrary.Input Text    //input[@name='keywordInput']     ${MerchantName_${language}}
        Click Element          //button[2]/i
    
Select a bakery from list with Online Payment
         BuiltIn.Sleep    2       
         Click Element    (//div[@class='text-success'])[1]
         
PDP_AddtoCart_Merchant with OnlinePayment
        Scroll Element Into View    (//div[@class='productCard'])[1]  
        Click Element    (//i[@class='fas fa-plus fa-fw'])[1]  
        Click Element    (//i[@class='fas fa-plus fa-fw'])[1]  
        

Order fulfillment with emailid login and cashpay
        Open_Bapachosite     
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery_MerchantwithoutOnlinePayment
        Select a bakery from list_MerchantwithoutOnlinePayment
        Click show more information
        PDP_AddtoCart_MerchantwithoutOnlinePayment
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        Choose_delivery
        #Guestuser_Fill_Checkoutpage
        User_Fill_Checkoutpage  
        Cashpay_OrderNow
        Capture Page Screenshot      
        Close Browser
        
        