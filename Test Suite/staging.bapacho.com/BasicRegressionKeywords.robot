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
        
        SeleniumLibrary.Input Text    (//input[contains(@type,'text')])[2]     ${MerchantName without payment}
        Capture Page Screenshot    
        Click Element          ${search_button}
        BuiltIn.Sleep    2   
        
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
        SeleniumLibrary.Input Text    (//input[contains(@type,'text')])[2]     ${MerchantName_${language}}
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
   
Guest user placing a Cash pay order
         Open_Bapachosite
         Type_To_Search_bakery
         BuiltIn.Sleep    2    
         Select a bakery from list
         PDP_AddtoCart
         Set Browser Implicit Wait    5
         PDP_Click_Checkout
         Guestuser_Fill_Checkoutpage
         Cashpay_OrderNow
         Capture Page Screenshot    
         Close Browser           
         
Customer places an online order using Merchant with Online payment
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Select a bakery from list with Online Payment
        PDP_AddtoCart_Merchant with OnlinePayment
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        #Choose_delivery
        User_Fill_Checkoutpage    
        Onlinepay_Ordernow
        Card_Online_payment_process
        #iDEAL_Online_payment_process
        Close Browser        
        