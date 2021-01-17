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
        Click Element    ${LoginasMerchant}  
        SeleniumLibrary.Input Text    //input[@id='name']    ${Merchant with Online payment Credentials}[0]
        Input Password    (//input[@id='name'])[2]     ${Merchant with Online payment Credentials}[1]  
        Click Button    ${Submit_Login}     
        BuiltIn.Sleep    2      
        
Login_as_Merchant without online payment
         Set Browser Implicit Wait    5 
        Click Element    ${LoginasMerchant} 
        SeleniumLibrary.Input Text    //input[@id='name']    ${Merchant_Without_OnlinePayment_Credentials}[0]
        Input Password    (//input[@id='name'])[2]     ${Merchant_Without_OnlinePayment_Credentials}[1]  
        Capture Page Screenshot
        Click Button    ${Submit_Login}     
        BuiltIn.Sleep    2   
 
Login_as_Merchant with online payment
         Set Browser Implicit Wait    5 
        Click Element    ${LoginasMerchant}   
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
     Click Element    ${MyproductCategories}
     Capture Page Screenshot        
     Click Element     ${AddCategory}  
     Input Text    name=titles[nl]    ${ProductCategoryName} 
     #Input Text    name=titles[en]    ${ProductCategoryName}             
     Input Text    name=titles[be]    ${ProductCategoryName} 
     Input Text    name=titles[it]    ${ProductCategoryName} 
     #Input Text    name=titles[cz]    ${ProductCategoryName} 
     Capture Page Screenshot    
     Click Button    ${btn_SubmitCategory_${Language}}
     BuiltIn.Sleep    2    
     Click Element    //button[contains(.,'OK')]  
     BuiltIn.Sleep    2   
     Capture Page Screenshot  
     
Delete product category 
     Click Element    ${MyproductCategories}
     Capture Page Screenshot    
     Click Element    (//div[@onclick='assertDeleteCategory(this)'])[1]  
     Capture Page Screenshot    
     Click Element    (//button[contains(@type,'button')])[3]
     Capture Page Screenshot
     Click Element    //button[contains(.,'OK')]    
     Page Should Not Contain    ${ProductCategoryName}     
     Capture Page Screenshot    

Delete product category Failing
     Click Element    ${MyproductCategories}
     Run Keyword And Continue On Failure           Click Element   (//div[@onclick='assertDeleteCategory(this)'])[1]
     Capture Page Screenshot    

#My products

Create new own product 

    Click Element   ${MyProduct}
    Capture Page Screenshot
    Click Element    ${Addproduct}  
    Capture Page Screenshot
    Input Text    ${ProductTitle_${Language}}   ${Productname}  
    Input Text    ${Product_Subtitle_${Language}}      ${Productname}     
    Input Text    ${Product_Description_${Language}}      ${Productname}
    Input Text    ${Product_Ingredients_${Language}}     ${Productingredients} 
    Input Text    ${Product_unit_${Language}}    ${ProductUnit}
    Capture Page Screenshot
    Click Element    (//button[contains(@type,'button')])[2]   
    Select From List By Label    name=category_id      ${ProductCategoryName}
    Select From List By Value    name=columns[featured]      1 
    Input Text    name=columns[price]    ${PricewithVAT}
    Select From List By Value    name=columns[vat_id]   2
    Capture Page Screenshot
    BuiltIn.Sleep    2    
    Click Element    name=columns[availableFrom]    
    Input Text    name=columns[daily_production]     10
    Input Text    name=columns[customPreparationTime]    04:00
     Capture Page Screenshot
    Select From List By Value    name=columns[active]       1
   # Input Text    name=nutritions[11]    0.5    
   #Select Checkbox    //input[@id='paymentMethod-5']      #Online payment
   Scroll Element Into View    //input[contains(@value,'OK')]
   #Click Element    //input[contains(@value,'OK')]    
   Scroll Element Into View    //input[@id='paymentMethod-6']
    #Select Checkbox    //input[@id='paymentMethod-6']      #Cash payment
    Select Checkbox    //input[@id='paymentMethod-7']      #card payment
    Capture Page Screenshot
    Click Element    //input[contains(@type,'submit')] 
    BuiltIn.Sleep    5    
    Wait Until Page Contains     ${Productname}    
    Capture Page Screenshot       
    Click Mypage
    Click 'i' for product information
   
                 
Delete created own category product
     Click Element   ${MyProduct}
     Capture Page Screenshot    
     Click Element    (//button[contains(.,'Remove')])[2]   
     Capture Page Screenshot    
     Click Element    //button[contains(.,'Yes, delete it!')]    
     Capture Page Screenshot    
     Click Mypage
     Click 'i' for product information
     Page Should Not Contain    ${Productname}    
     


Add Zeelandia product from library
     Click Element   ${MyProduct}
     Capture Page Screenshot
     Click Element    ${Addzeelandiaproduct} 
     BuiltIn.Sleep    2  
     Capture Page Screenshot
     Click Element   (//button[@onclick='setProductActive(this);'])[1]
     Capture Page Screenshot  
    # Input Text    (//input[contains(@type,'number')])[1]    2.00   
    # Capture Page Screenshot       
     Click Element    //input[contains(@type,'submit')]  
     BuiltIn.Sleep    2  
     Capture Page Screenshot  
     Click Mypage
    
#My Location       
   
Change Opening information & siesta time
    Click Element    ${MyLocations}  
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
     Click Element    ${MyLocations} 
     Capture Page Screenshot 
     Execute JavaScript    window.scrollBy(1000,247)
     Scroll Element Into View    //select[contains(@name,'openTimes[4][from]')]
     Capture Page Screenshot    
     Select From List By Label    //select[contains(@name,'openTimes[0][from]')]       09:00        
     Select From List By Value    //select[contains(@name,'openTimes[0][to]')]        22:00
     Select From List By Label    openBreakTimes[0][from]         13:00
     Select From List By Label    openBreakTimes[0][to]        13:30  
     Capture Page Screenshot
     Click Element    ${btn_Applytoall_${Language}}    
     
     # Select From List By Label    //select[contains(@name,'openTimes[1][from]')]       06:00        
     # Select From List By Value    //select[contains(@name,'openTimes[1][to]')]        23:59
     # Select From List By Label    openBreakTimes[1][from]         12:00
     # Select From List By Label    openBreakTimes[1][to]        12:30  
     # Select From List By Label    //select[contains(@name,'openTimes[2][from]')]       06:00        
     # Select From List By Value    //select[contains(@name,'openTimes[2][to]')]        23:59
     # Select From List By Label    openBreakTimes[2][from]         12:00
     # Select From List By Label    openBreakTimes[2][to]        12:30  
     # Select From List By Label    //select[contains(@name,'openTimes[3][from]')]       06:00        
     # Select From List By Value    //select[contains(@name,'openTimes[3][to]')]        23:59
     # Select From List By Label    openBreakTimes[3][from]         12:00
     # Select From List By Label    openBreakTimes[3][to]        12:30  
     # Select From List By Label    //select[contains(@name,'openTimes[4][from]')]       06:00        
     # Select From List By Value    //select[contains(@name,'openTimes[4][to]')]        23:59
     # Select From List By Label    openBreakTimes[4][from]         12:00
     # Select From List By Label    openBreakTimes[4][to]        12:30  
     # Select From List By Label    //select[contains(@name,'openTimes[5][from]')]       06:00        
     # Select From List By Value    //select[contains(@name,'openTimes[5][to]')]        23:59
     # Select From List By Label    openBreakTimes[5][from]         12:00
     # Select From List By Label    openBreakTimes[5][to]        12:30  
     # Select From List By Label    //select[contains(@name,'openTimes[6][from]')]       06:00        
     # Select From List By Value    //select[contains(@name,'openTimes[6][to]')]        23:59
     # Select From List By Label    openBreakTimes[6][from]         12:00
      # Select From List By Label    openBreakTimes[6][to]        12:30 
     Capture Page Screenshot    
     Click Element    ${btn_Save_${Language}}
      Capture Page Screenshot
     Click Element    //button[contains(.,'OK')]   
     BuiltIn.Sleep    5  
     Capture Page Screenshot  


#Settings

Change preparation & delivery time
    Scroll Element Into View    ${Settings}
    Click Element    ${Settings}   
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
    Click Element    ${Settings}  
     Capture Page Screenshot
    Execute JavaScript    window.scrollBy(1000,247) 
    Capture Page Screenshot
    Scroll Element Into View    name=deliveryTimes[0][from]
    Capture Page Screenshot
    Select From List By Value    name=deliveryTimes[0][from]      10:00
    Select From List By Value    name=deliveryTimes[0][to]    23:59
    Select From List By Value    name=deliveryBreakTimes[0][from]     12:00
    Select From List By Value    name=deliveryBreakTimes[0][to]      13:30
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
    Click Element    ${btn_Save_${Language}} 
    Capture Page Screenshot
    Click Element    //button[contains(.,'OK')] 
    BuiltIn.Sleep    2 
    
    
#My Orders

View Orders for pickup today
    Click Element    (//div[@class='list-group'])[1]
    
View Orders for future today
   BuiltIn.Sleep    2   
   Click Element    (//td[contains(.,'20')])[2] 
   Capture Page Screenshot    
   
Scroll to Download Order Confirmation
      BuiltIn.Sleep    2 
    Capture Page Screenshot
     Scroll Element Into View    //button[contains(.,'Download Order Confirmation')]
     Capture Page Screenshot     
     Click Element    //button[contains(.,'Download Order Confirmation')] 
      BuiltIn.Sleep    4 
     Capture Page Screenshot    
     
Print all orders
    Capture Page Screenshot    
     Click Element   //i[contains(@class,'fas fa-print')]
      BuiltIn.Sleep    7 
     Capture Page Screenshot  

Select an order from Merchant's My order list
    Scroll Element Into View   ${MyOrders}
    Capture Page Screenshot    
    Click Element    ${MyOrders}
    Capture Page Screenshot
    Click Element    ${OpenOrder} 
    Capture Page Screenshot     
    
Change order status to Cancel
    BuiltIn.Sleep    2    
    Capture Page Screenshot
    Scroll Element Into View    name=orderStatus
    Capture Page Screenshot
    Select From List By Value    name=orderStatus    ${CancelOrder}
    Capture Page Screenshot
    Input Text    name=status_comment    Automated order cancellation  
    Capture Page Screenshot      
    Click Button    ${btn_Submit_${Language}}
    Capture Page Screenshot
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]  
    Capture Page Screenshot       
    BuiltIn.Sleep    2  
    
Change payment status to Refund
    Select From List By Value    name=lastStatus    ${RefundStatus}
    Capture Page Screenshot
    Click Button    ${btn_PaymentStatusSubmit}  
    Capture Page Screenshot  
    Click Element    //button[contains(.,'OK')]  
    BuiltIn.Sleep    2  
    
Change payment status to paid 
    Select From List By Value    name=lastStatus    ${PaidStatus}
    Capture Page Screenshot    
    Click Button    ${btn_PaymentStatusSubmit}    
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
    Select From List By Value   name=orderStatus    ${Preparing}
    Input Text    name=status_comment    Automated order Preparing 
    Capture Page Screenshot      
    Click Button    ${btn_Submit_${Language}}
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]  
    Capture Page Screenshot       
    BuiltIn.Sleep    2  
    
Change order status to Ready for pickup
    BuiltIn.Sleep    2    
    Scroll Element Into View    name=orderStatus
    Select From List By Value    name=orderStatus    ${Readyforpickup}
    Input Text    name=status_comment    Automated order Ready for pickup 
    Capture Page Screenshot      
    Click Button    ${btn_Submit_${Language}}
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]  
    Capture Page Screenshot       
    BuiltIn.Sleep    2
     
Change order status to Ready for delivery
    BuiltIn.Sleep    2    
    Scroll Element Into View    name=orderStatus
    Select From List By Value    name=orderStatus    ${Readyfordelivery}
    Input Text    name=status_comment    Automated order Ready for delivery 
    Capture Page Screenshot      
    Click Button   ${btn_Submit_${Language}}
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]  
    Capture Page Screenshot       
    BuiltIn.Sleep    2 
    
Change order status to Picked up
    BuiltIn.Sleep    2    
    Scroll Element Into View    name=orderStatus
    Select From List By Value    name=orderStatus    ${Pickedup}
    Input Text    name=status_comment    Automated order Picked up
    Capture Page Screenshot      
    Click Button    ${btn_Submit_${Language}}
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]  
    Capture Page Screenshot       
    BuiltIn.Sleep    2   
    
Change order status to Delivered
    BuiltIn.Sleep    2    
    Scroll Element Into View    name=orderStatus
   Select From List By Value   name=orderStatus    ${Delivered}
    Input Text    name=status_comment    Automated order Delivered  
    Capture Page Screenshot      
    Click Button    ${btn_Submit_${Language}}
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]  
    Capture Page Screenshot       
    BuiltIn.Sleep    2  


  
     
#My Page
Click Mypage    
      
    Scroll Element Into View    ${MyPage}    
    Capture Page Screenshot 
    Click Element    ${MyPage}
    BuiltIn.Sleep    2  
   Select Window    NEW 
   #Scroll Element Into View    (//div[@class='productCard'])[1] 
    # Capture Page Screenshot  
  
    