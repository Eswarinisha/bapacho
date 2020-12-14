*** Settings ***
Library    SeleniumLibrary

Resource    Customerkeywords.robot 
Resource    CMSkeywords.robot
Resource    Merchantkeywords.robot
Resource    Bapacho Variables.robot

***Keyword***
# Login as Merchant

Login_as_Merchant
        
        Set Browser Implicit Wait    5 
        Click Element    (//a[contains(.,'Login as Merchant')])[1]    
        SeleniumLibrary.Input Text    //input[@id='name']    ${MerchantOnboardingCredentials}[0]
        Input Password    (//input[@id='name'])[2]     ${MerchantOnboardingCredentials}[1]  
        Click Button    ${Submit_Login}     
        BuiltIn.Sleep    2      
        
Login_as_Merchant without online payment
         Set Browser Implicit Wait    5 
        Click Element    ${LoginasMerchant_${Language}}   
        SeleniumLibrary.Input Text    //input[@id='name']    ${Merchant_Without_OnlinePayment_Credentials}[0]
        Input Password    (//input[@id='name'])[2]     ${Merchant_Without_OnlinePayment_Credentials}[1]  
        Click Button    ${Submit_Login}     
        BuiltIn.Sleep    2   
 
Login_as_Merchant with online payment
         Set Browser Implicit Wait    5 
        Click Element    ${LoginasMerchant_${Language}}    
        SeleniumLibrary.Input Text    //input[@id='name']    ${Merchant with Online payment Credentials}[0]
        Input Password    (//input[@id='name'])[2]     ${Merchant with Online payment Credentials}[1]  
        Click Button    ${Submit_Login}     
        BuiltIn.Sleep    2   

Type_To_Search_bakery_Merchant
        Click_bakeries
        Click Element    //button[2]/i
        SeleniumLibrary.Input Text    //input[@name='keywordInput']    ${MerchantName without payment}
        Click Element          //button[2]/i
 

#My Product Categories

Create new product category
     Click Element    ${MyproductCategories_${Language}}    
     Click Element     ${AddCategory_${Language}}   
     Input Text    name=titles[nl]    ${ProductCategoryName} 
     #Input Text    name=titles[en]    ${ProductCategoryName}             
     Input Text    name=titles[be]    ${ProductCategoryName} 
     Input Text    name=titles[it]    ${ProductCategoryName}     
     Click Button    ${btn_SubmitCategory_${Language}}  
     BuiltIn.Sleep    2    
     Click Element    //button[contains(.,'OK')]  
     BuiltIn.Sleep    2   
     Capture Page Screenshot  
     
Delete product category 
     Click Element    ${MyproductCategories_${Language}} 
     Click Element    (//div[contains(.,'delete')])[5]   
     Click Element    //button[contains(.,'Delete')] 
     Click Element    //button[contains(.,'OK')]    
     Page Should Not Contain    ${ProductCategoryName}     
     Capture Page Screenshot    

Delete product category Failing
     Click Element    ${MyproductCategories_${Language}}   
     Run Keyword And Continue On Failure           Click Element    (//div[contains(.,'delete')])[5] 
    Capture Page Screenshot    

#My products

Create new own product 

    Click Element   ${MyProduct_${Language}}
    Click Element    ${Addproduct_${Language}}  
    Input Text    ${ProductTitle_${Language}}   ${Productname}  
    Input Text    ${Product_Subtitle_${Language}}      ${Productname}     
    Input Text    ${Product_Description_${Language}}      ${Productname}
    Input Text    ${Product_Ingredients_${Language}}     ${Productingredients} 
    Input Text    ${Product_unit_${Language}}    ${ProductUnit}
    Click Element    //button[contains(.,'Copy information from English')]    
    Select From List By Label    name=category_id      ${ProductCategoryName}
    Select From List By Value    name=columns[featured]      1 
    Input Text    name=columns[price]    ${PricewithVAT}
    Select From List By Label    name=columns[vat_id]    9%
    BuiltIn.Sleep    2    
    Click Element    name=columns[availableFrom]    
    Input Text    name=columns[daily_production]     10
    Input Text    name=columns[customPreparationTime]    04:00
     
    Select From List By Value    name=columns[active]       1
   # Input Text    name=nutritions[11]    0.5    
   #Select Checkbox    //input[@id='paymentMethod-5']      #Online payment
   Scroll Element Into View    //input[contains(@value,'OK')]
   #Click Element    //input[contains(@value,'OK')]    
   Scroll Element Into View    //input[@id='paymentMethod-6']
    #Select Checkbox    //input[@id='paymentMethod-6']      #Cash payment
    #Select Checkbox    //input[@id='paymentMethod-7']      #card payment
    Click Element    //input[contains(@type,'submit')] 
    BuiltIn.Sleep    5    
    Wait Until Page Contains     ${Productname}    
    Capture Page Screenshot       
                 
Delete created own category product
     Click Element   ${MyProduct_${Language}}
     Capture Page Screenshot    
     Click Element    (//button[contains(.,'Remove')])[4]   
     Capture Page Screenshot    
     Click Mypage
     Page Should Not Contain    ${Productname}    
     


Add Zeelandia product from library
     Click Element   ${MyProduct_${Language}}
     Click Element    ${Addzeelandiaproduct_${Language}} 
     BuiltIn.Sleep    2  
     Click Element    (//button[contains(.,'Choose product')])[1]  
     Input Text    (//input[contains(@type,'number')])[1]    2.00   
     Capture Page Screenshot       
     Click Element    //input[contains(@type,'submit')]    
     Capture Page Screenshot     

#My Location       
   
Change Opening information & siesta time
    Click Element    ${MyLocations_${Language}}  
    Select From List By Label    //select[contains(@name,'openTimes[1][from]')]       11:00        
    Select From List By Value    //select[contains(@name,'openTimes[0][to]')]        23:30
    Capture Page Screenshot    
    Select From List By Label    openBreakTimes[0][from]         14:00
    Select From List By Label    openBreakTimes[0][to]        14:30 
    Capture Page Screenshot    
    Set Browser Implicit Wait    5 
    Click Element    ${btn_Submit_${Language}}   
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]     
    BuiltIn.Sleep    2
    
Edit opening time in Portal
     Click Element    ${MyLocations_${Language}}  
     Execute JavaScript    window.scrollBy(1000,247)
     Select From List By Label    //select[contains(@name,'openTimes[0][from]')]       06:00        
     Select From List By Value    //select[contains(@name,'openTimes[0][to]')]        23:59
     Select From List By Label    openBreakTimes[0][from]         12:00
     Select From List By Label    openBreakTimes[0][to]        12:30  
     Click Element    ${btn_Applytoall_${Language}}    
     # Select From List By Label    //select[contains(@name,'openTimes[1][from]')]       06:00        
     Select From List By Value    //select[contains(@name,'openTimes[1][to]')]        23:59
     Select From List By Label    openBreakTimes[1][from]         12:00
     Select From List By Label    openBreakTimes[1][to]        12:30  
     Select From List By Label    //select[contains(@name,'openTimes[2][from]')]       06:00        
     Select From List By Value    //select[contains(@name,'openTimes[2][to]')]        23:59
     Select From List By Label    openBreakTimes[2][from]         12:00
     Select From List By Label    openBreakTimes[2][to]        12:30  
     Select From List By Label    //select[contains(@name,'openTimes[3][from]')]       06:00        
     Select From List By Value    //select[contains(@name,'openTimes[3][to]')]        23:59
     Select From List By Label    openBreakTimes[3][from]         12:00
     Select From List By Label    openBreakTimes[3][to]        12:30  
     Select From List By Label    //select[contains(@name,'openTimes[4][from]')]       06:00        
     Select From List By Value    //select[contains(@name,'openTimes[4][to]')]        23:59
     Select From List By Label    openBreakTimes[4][from]         12:00
     Select From List By Label    openBreakTimes[4][to]        12:30  
     Select From List By Label    //select[contains(@name,'openTimes[5][from]')]       06:00        
     Select From List By Value    //select[contains(@name,'openTimes[5][to]')]        23:59
     Select From List By Label    openBreakTimes[5][from]         12:00
     Select From List By Label    openBreakTimes[5][to]        12:30  
     Select From List By Label    //select[contains(@name,'openTimes[6][from]')]       06:00        
     Select From List By Value    //select[contains(@name,'openTimes[6][to]')]        23:59
     Select From List By Label    openBreakTimes[6][from]         12:00
     # Select From List By Label    openBreakTimes[6][to]        12:30 
     Capture Page Screenshot    
     Click Element    ${btn_Submit_${Language}} 
     Click Element    //button[contains(.,'OK')]   
     BuiltIn.Sleep    2    


#Settings

Change preparation & delivery time
    Scroll Element Into View    ${Settings_${Language}}
    Click Element    ${Settings_${Language}}   
    Input Text    name=columns[pickupPreparationTime]    02:00    
    Input Text    name=columns[deliveryPreparationTime]    23:59
    Capture Page Screenshot   
    Sleep    2    
    Scroll Element Into View    name=deliveryTimes[0][from]    
    Select From List By Label    name=deliveryTimes[0][from]    06:00
    Select From List By Label    name=deliveryTimes[0][to]      23:59
    Select From List By Label    name=deliveryTimes[1][from]    06:00
     Select From List By Label     name=deliveryTimes[1][to]     23:59
     Select From List By Label    name=deliveryTimes[2][from]    06:00
    Select From List By Label    name=deliveryTimes[2][to]      23:59
    Select From List By Label    name=deliveryBreakTimes[2][from]      14:00
    Select From List By Label    name=deliveryBreakTimes[2][to]      14:30 
    Capture Page Screenshot    
    BuiltIn.Sleep    2
    Click Element    //input[contains(@type,'submit')]    
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]     
    BuiltIn.Sleep    2
    
Edit delivery time in Portal
    Click Element    ${Settings_${Language}}   
    Execute JavaScript    window.scrollBy(1000,247) 
    Select From List By Value    name=deliveryTimes[0][from]      06:00
    Select From List By Value    name=deliveryTimes[0][to]    23:59
    Select From List By Value    name=deliveryBreakTimes[0][from]     11:00
    Select From List By Value    name=deliveryBreakTimes[0][to]      11:30
    Click Element    ${btn_Applytoall_${Language}}    
    # Select From List By Value    name=deliveryTimes[1][from]      06:00
    # Select From List By Value    name=deliveryTimes[1][to]    23:59
    # Select From List By Value    name=deliveryBreakTimes[2][from]     11:00
    # Select From List By Value    name=deliveryBreakTimes[2][to]      11:30
    # Select From List By Value    name=deliveryTimes[3][from]      06:00
    # Select From List By Value    name=deliveryTimes[3][to]    23:59
    # Select From List By Value    name=deliveryBreakTimes[3][from]     11:00
    # Select From List By Value    name=deliveryBreakTimes[3][to]      11:30
    # Select From List By Value    name=deliveryTimes[4][from]      06:00
    # Select From List By Value    name=deliveryTimes[4][to]    23:59
    # Select From List By Value    name=deliveryBreakTimes[4][from]     11:00
    # Select From List By Value    name=deliveryBreakTimes[4][to]      11:30
    # Select From List By Value    name=deliveryTimes[5][from]      06:00
    # Select From List By Value    name=deliveryTimes[5][to]    23:59
    # Select From List By Value    name=deliveryBreakTimes[5][from]     11:00
    # Select From List By Value    name=deliveryBreakTimes[5][to]      11:30
    # Select From List By Value    name=deliveryTimes[6][from]      06:00
    # Select From List By Value    name=deliveryTimes[6][to]    23:59
    # Select From List By Value    name=deliveryBreakTimes[6][from]     11:00
    # Select From List By Value    name=deliveryBreakTimes[6][to]      11:30
    Capture Page Screenshot    
    Click Element    ${btn_Submit_${Language}} 
    Click Element    //button[contains(.,'OK')] 
    BuiltIn.Sleep    2 
    
    
#My Orders

View Orders for pickup today
    Click Element    (//div[@class='list-group'])[2]
    
View Orders for future today
   Double Click Element    //span[contains(text(),'15')] 
   
Scroll to Download Order Confirmation
     Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)   
     
Print all orders
     Click Element   //a[contains(.,'Print all orders')]

Select an order from Merchant's My order list
    Scroll Element Into View   ${MyOrders_${Language}}
    Capture Page Screenshot    
    Click Element    ${MyOrders_${Language}}
    Click Element    ${OpenOrder_${Language}}       
    
Change order status to Cancel
    BuiltIn.Sleep    2    
    Scroll Element Into View    name=orderStatus
    Select From List By Label    name=orderStatus    ${CancelOrder_${Language}}
    Input Text    name=status_comment    Automated order cancellation  
    Capture Page Screenshot      
    Click Button    ${btn_OrderstatusSubmit_${Language}}
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]  
    Capture Page Screenshot       
    BuiltIn.Sleep    2  
    
Change payment status to Refund
    Select From List By Label    name=lastStatus    ${RefundStatus_${Language}}
    Click Button    ${btn_PaymentStatusSubmit_${Language}}    
    Click Element    //button[contains(.,'OK')]  
    Page Should Contain    ${LabelRefund_${Language}}   
    
Change payment status to paid 
    Select From List By Label    name=lastStatus    ${PaidStatus_${Language}}
    Click Button    ${btn_PaymentStatusSubmit_${Language}}    
    Click Element    //button[contains(.,'OK')]  
    
    
Order Refund by Merchant 
    Click Element    //button[contains(.,'Refund')]
    Input Text    (//input[contains(@type,'text')])[2]    REFUND    
    Click Element    (//button[contains(.,'Refund')])[2]    
    Scroll Element Into View    //a[contains(.,'My orders')]
    Capture Page Screenshot    
    Click Element    //a[contains(.,'My orders')] 
    
Change order status to Preparing
    BuiltIn.Sleep    2    
    Scroll Element Into View    name=orderStatus
    Select From List By Label    name=orderStatus    ${Preparing_${Language}}
    Input Text    name=status_comment    Automated order Preparing 
    Capture Page Screenshot      
    Click Button    ${btn_OrderstatusSubmit_${Language}}
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]  
    Capture Page Screenshot       
    BuiltIn.Sleep    2  
     
Change order status to Ready for delivery
    BuiltIn.Sleep    2    
    Scroll Element Into View    name=orderStatus
    Select From List By Label    name=orderStatus    ${Readyfordelivery_${Language}}
    Input Text    name=status_comment    Automated order Ready for delivery 
    Capture Page Screenshot      
    Click Button    ${btn_OrderstatusSubmit_${Language}}
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]  
    Capture Page Screenshot       
    BuiltIn.Sleep    2  
    
Change order status to Delivered
    BuiltIn.Sleep    2    
    Scroll Element Into View    name=orderStatus
    Select From List By Label    name=orderStatus    ${Delivered_${Language}}
    Input Text    name=status_comment    Automated order Delivered  
    Capture Page Screenshot      
    Click Button    ${btn_OrderstatusSubmit_${Language}}
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]  
    Capture Page Screenshot       
    BuiltIn.Sleep    2  


  
     
#My Page
Click Mypage    
    Scroll Element Into View    ${MyPage_${Language}}     
    Click Element    ${MyPage_${Language}}
    BuiltIn.Sleep    2  
    Select Window    NEW  
  
    