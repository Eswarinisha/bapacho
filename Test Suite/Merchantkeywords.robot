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
     Input Text    name=titles[en]    ${ProductCategoryName}             
     #Input Text    name=titles[be]    ${ProductCategoryName} 
    # Input Text    name=titles[it]    ${ProductCategoryName}     
     Click Button    ${btn_SubmitCategory_${Language}}  
     BuiltIn.Sleep    2    
     Click Element    //button[contains(.,'OK')]  
     BuiltIn.Sleep    2   
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
    Sleep    2    
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
    
   
Order Refund by Merchant 
    Click Element    //button[contains(.,'Refund')]
    Input Text    (//input[contains(@type,'text')])[2]    REFUND    
    Click Element    (//button[contains(.,'Refund')])[2]    
    Scroll Element Into View    //a[contains(.,'My orders')]
    Capture Page Screenshot    
    Click Element    //a[contains(.,'My orders')] 
    

     