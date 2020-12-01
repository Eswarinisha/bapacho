*** Settings ***
Library    SeleniumLibrary
Library           pyautogui
Library           ImageHorizonLibrary
      

Resource    Customerkeywords.robot 
Resource    CMSkeywords.robot
Resource    Merchantkeywords.robot
Resource    BapachoVariables.robot

***Keyword***

Login_as_Merchant
        
        Set Browser Implicit Wait    5 
        Click Element    (//a[contains(.,'Login as Merchant')])[1]    
        SeleniumLibrary.Input Text    //input[@id='name']    ${MerchantOnboardingCredentials}[0]
        Input Password    (//input[@id='name'])[2]     ${MerchantOnboardingCredentials}[1]  
        Click Button    ${Submit_Login}     
        Wait Until Page Contains    My Account   
        
Login_as_Merchant without online payment
         Set Browser Implicit Wait    5 
        Click Element    (//a[contains(.,'Login as Merchant')])[1]    
        SeleniumLibrary.Input Text    //input[@id='name']    ${Merchant_Without_OnlinePayment_Credentials}[0]
        Input Password    (//input[@id='name'])[2]     ${Merchant_Without_OnlinePayment_Credentials}[1]  
        Click Button    ${Submit_Login}     
        Wait Until Page Contains    My Account
 
Login_as_Merchant with online payment
         Set Browser Implicit Wait    5 
        Click Element    (//a[contains(.,'Login as Merchant')])[1]    
        SeleniumLibrary.Input Text    //input[@id='name']    ${Merchant with Online payment Credentials}[0]
        Input Password    (//input[@id='name'])[2]     ${Merchant with Online payment Credentials}[1]  
        Click Button    ${Submit_Login}     
        Wait Until Page Contains    My Account
               

Step_1
        Maximize Browser Window
        Scroll Element Into View    name=password  
        Input Password    name=password    ${MerchantOnboardingCredentials}[1] 
        Input Password    name=password_chk    ${MerchantOnboardingCredentials}[1] 
        Select Checkbox    //input[@id='acceptTermsAndConditions']
        Capture Page Screenshot    
        Click Element    (//button[contains(.,'Next')])[1]    
        Wait Until Page Contains    Step 2: Company Information
        
Click_Step1 Need Help?
        Click Element    (//button[contains(.,'Need help?')])[1]
        Wait Until Page Contains    FAQ
        Capture Page Screenshot            
        
T&C_Merchant Step 1
    
        Click Element    //a[contains(.,'Terms and Conditions for Merchants')]   
        Set Browser Implicit Wait    20 
        Select Window    NEW
        Capture Page Screenshot        
        
Step_2
        SeleniumLibrary.Input Text    name=columns_local[nl][title]    ${MerchantName}     
        SeleniumLibrary.Input Text    name=locationColumns_local[nl][address]    Justine de Gouwerhof
        SeleniumLibrary.Input Text    name=locationColumns_local[nl][addressLine2]    Haarlem    
        SeleniumLibrary.Input Text    locationColumns_local[nl][postal]    2011GP
        SeleniumLibrary.Input Text    name=locationColumns_local[nl][city]    Netherlands
        Click Button    (//button[contains(.,'Copy information from English')])[1]    
        SeleniumLibrary.Input Text    name=columns[emailOrders]     ${MerchantOnboardingCredentials}[0]                
        SeleniumLibrary.Input Text    name=columns[phoneOrders]     ${MerchantOnboardingCredentials}[2]   
        SeleniumLibrary.Input Text    name=columns[phone]    ${MerchantOnboardingCredentials}[2]    
        Checkbox Should Be Selected    name=columns[notification_sms]
        Checkbox Should Be Selected    name=columns[notification_email]
        Execute JavaScript    window.scrollBy(1000,247)
        Select From List By Label    //select[contains(@name,'openTimes[0][from]')]       06:00        
        Select From List By Value    //select[contains(@name,'openTimes[0][to]')]        23:30
        Select From List By Label    openBreakTimes[0][from]         12:00
        Select From List By Label    openBreakTimes[0][to]        12:30
        Click Button    (//button[contains(.,'Apply to all')])[1]    
        Set Browser Implicit Wait    5 
        Click Element    (//button[contains(.,'Next')])[2]     
        
Step_3
        Input Text    locationColumns_local[nl][text]    "Nisha's Automated Bakery Number 1"   
        Click Element    (//button[contains(.,'Copy information from English')])[2]    
        Input Text    name=columns[website]    https://www.multivlaai.nl/
        Input Text    name=columns[facebook]    https://www.multivlaai.nl/    
        Click Element    (//button[contains(.,'Next')])[3]
      #  Choose File    (//button[contains(.,'Next')])[3]    file_path
        Wait Until Page Contains       Step 4: Product Assortment     
        
Step_4
        Select From List By Label    //select[contains(@name,'category_id')]    Pies
         Double Click Element    (//button[contains(.,'Choose product')])[5]
        Set Browser Implicit Wait    10     
         Double Click Element    (//button[contains(.,'Choose product')])[9] 
         Set Browser Implicit Wait    10              
         Double Click Element    (//button[contains(.,'Choose product')])[19]  
         Set Browser Implicit Wait    10  
        Capture Page Screenshot    
        Set Focus To Element    (//button[contains(.,'Next')])[4] 
        Click Element    (//button[contains(.,'Next')])[4]        
        Wait Until Page Contains    Allergen information
        Click Element    //button[contains(.,'OK')]   
        
Step_4_click next
         Set Focus To Element    (//button[contains(.,'Next')])[4] 
        Click Element    (//button[contains(.,'Next')])[4]        
        Wait Until Page Contains    Allergen information
        Click Element    //button[contains(.,'OK')]   
        
                         
       
Step_5
        Wait Until Page Contains Element    name=columns[hasPickup]    
        Select Checkbox    name=columns[hasPickup] 
        Input Text    name=handlingFee[pickup]    5.00    
        
      # Click Element    //input[@id='paymentMethodPickup6']
     #  Click Element    //input[@id='paymentMethodPickup7']
        Select Checkbox    name=columns[hasDelivery]
        Input Text    name=columns[deliveryPrice]    10.00
        Input Text    name=columns[deliveryAbove]    30.00
        Input Text    name=columns[deliveryFreeAbove]    70.00    
        Input Text    name=handlingFee[deliver]    6.00    
        Select From List By Value    name=deliveryTimes[0][from]      06:00
        Select From List By Value    name=deliveryTimes[0][to]    23:30
        Select From List By Value    name=deliveryBreakTimes[0][from]     06:00
        Select From List By Value    name=deliveryBreakTimes[0][to]      23:30
        Click Element    (//button[contains(.,'Apply to all')])[8]    
     #   Click Element    //input[@id='paymentMethodDelivery6']   
     #   Click Element    //input[@id='paymentMethodDelivery7'] 
        Capture Page Screenshot     
        Click Element    (//button[contains(.,'Next')])[5]    
        
Step_6
    
        Wait Until Page Contains Element    name=tos    
        Select Checkbox    name=tos
        Capture Page Screenshot    
        Click Element    (//button[contains(.,'Next')])[6]
        
Step_7
        Wait Until Page Contains Element    name=tax_id  
        Input Text    name=tax_id    000000000
        Input Text    name=vat_id    123456789B12
        Capture Page Screenshot    
        Click Element    (//button[contains(.,'Next')])[7] 
         BuiltIn.Sleep    10    
        
Step_8  
       
        Click Element   //button[contains(.,'Add person')]       
        Wait Until Page Contains    Add or edit person    
        Input Text   name=first_name    Representative
        Input Text    name=last_name    001
        Input Text    name=email    ${MerchantOnboardingCredentials}[0]    
        Input Text    name=phone      ${MerchantOnboardingCredentials}[2]
        Input Text    name=relationship[title]     Representative
        Input Text    name=dob[day]    28
        Select From List By Label    name=dob[month]    December    
        Input Text    name=dob[year]    1993
        Select Checkbox    name=relationship[executive]
        Input Text    name=address[line1]    Haarlem    
        Input Text    name=address[postal_code]    2011GP    
        Input Text    name=address[city]    Netherlands  
        Click Element    (//button[contains(.,'Upload')])[2]    
        Set Browser Implicit Wait    10
        pyautogui.Typewrite     chef.jpg
        Capture Page Screenshot    
        pyautogui.Key Down  'enter'
        ImageHorizonLibrary.Press Combination   Key.enter      
        Capture Page Screenshot             
        Click Element    //button[contains(text(),'Save')]    
        
# incomplete because of the upload file 

Step_8_Click next
        BuiltIn.Sleep    4        
        Scroll Element Into View    (//button[contains(.,'Next')])[8]  
        Click Element    (//button[contains(.,'Next')])[8]  

Step_9
        
        Wait Until Page Contains    Financial Information    
        Input Text    account_holder_name    ${MerchantName}
        Input Text    account_number    ${NL_Account_Number}
        Click Element    (//button[contains(.,'Next')])[9]            

Step_10
        Wait Until Page Contains    Done    
        Click Element    (//button[contains(.,'Next')])[10]                         
       
        
Step_1_Merchant without online payment    
        Maximize Browser Window
        Scroll Element Into View    name=password  
        Input Password    name=password    ${Merchant_Without_OnlinePayment_Credentials}[1] 
        Input Password    name=password_chk    ${Merchant_Without_OnlinePayment_Credentials}[1] 
        Select Checkbox    //input[@id='acceptTermsAndConditions']
        Capture Page Screenshot    
        Click Element    (//button[contains(.,'Next')])[1]    
        Wait Until Page Contains    Step 2: Company Information
    
Step_2_Merchant without online payment
        SeleniumLibrary.Input Text    name=columns_local[nl][title]    ${MerchantName without payment}     
        SeleniumLibrary.Input Text    name=locationColumns_local[nl][address]    Damstraat 20
        SeleniumLibrary.Input Text    name=locationColumns_local[nl][addressLine2]    Amsterdam    
        SeleniumLibrary.Input Text    locationColumns_local[nl][postal]    2011GP
        SeleniumLibrary.Input Text    name=locationColumns_local[nl][city]    Netherlands
        Click Button    (//button[contains(.,'Copy information from English')])[1]    
        SeleniumLibrary.Input Text    name=columns[emailOrders]     ${Merchant_Without_OnlinePayment_Credentials}[0]                
        SeleniumLibrary.Input Text    name=columns[phoneOrders]     ${Merchant_Without_OnlinePayment_Credentials}[2]   
        SeleniumLibrary.Input Text    name=columns[phone]    ${Merchant_Without_OnlinePayment_Credentials}[2]    
        Checkbox Should Be Selected    name=columns[notification_sms]
        Checkbox Should Be Selected    name=columns[notification_email]
        Execute JavaScript    window.scrollBy(1000,247)
        Select From List By Label    //select[contains(@name,'openTimes[0][from]')]       06:00        
        Select From List By Value    //select[contains(@name,'openTimes[0][to]')]        23:30
        Select From List By Label    openBreakTimes[0][from]         12:00
        Select From List By Label    openBreakTimes[0][to]        12:30
        Click Button    (//button[contains(.,'Apply to all')])[1]    
        Set Browser Implicit Wait    5 
        Click Element    (//button[contains(.,'Next')])[2]  
        
Step_3_Merchant without online payment
        Input Text    locationColumns_local[nl][text]    "Nisha's Automated Bakery Number 1"   
        Click Element    (//button[contains(.,'Copy information from English')])[2]    
        Input Text    name=columns[website]    https://www.multivlaai.nl/
        Input Text    name=columns[facebook]    https://www.multivlaai.nl/    
        Click Element    (//button[contains(.,'Next')])[3]
       # Choose File    (//button[contains(.,'Next')])[3]    ${CURDIR}\\chef.jpg
        Wait Until Page Contains       Step 4: Product Assortment   
        
Step_4_Merchant without online payment
        BuiltIn.Sleep    5    
        Capture Page Screenshot    
        Select From List By Label    //select[contains(@name,'category_id')]    Pies
        Capture Page Screenshot    
        BuiltIn.Sleep    2    
        Scroll Element Into View    (//button[contains(.,'Choose product')])[4]       
        Double Click Element    (//button[contains(.,'Choose product')])[4]
        Set Browser Implicit Wait    10     
        Double Click Element    (//button[contains(.,'Choose product')])[9] 
        Set Browser Implicit Wait    10    
        Capture Page Screenshot    
        Set Focus To Element    (//button[contains(.,'Next')])[4] 
        Click Element    (//button[contains(.,'Next')])[4]        
        Wait Until Page Contains    Allergen information
        Click Element    //button[contains(.,'OK')]   
        BuiltIn.Sleep    5           
                                                          
Step_5_Merchant without online payment
       
        Wait Until Page Contains Element    name=columns[hasPickup]    
        Select Checkbox    name=columns[hasPickup] 
        Input Text    name=handlingFee[pickup]    5.00    
        
       Click Element    //input[@id='paymentMethodPickup6']
       Click Element    //input[@id='paymentMethodPickup7']
        Select Checkbox    name=columns[hasDelivery]
        Input Text    name=columns[deliveryPrice]    10.00
        Input Text    name=columns[deliveryAbove]    30.00
        Input Text    name=columns[deliveryFreeAbove]    70.00    
        Input Text    name=handlingFee[deliver]    6.00    
        Select From List By Value    name=deliveryTimes[0][from]      06:00
        Select From List By Value    name=deliveryTimes[0][to]    23:30
        Select From List By Value    name=deliveryBreakTimes[0][from]     06:00
        Select From List By Value    name=deliveryBreakTimes[0][to]      23:30
        Click Element    (//button[contains(.,'Apply to all')])[8]    
        Click Element    //input[@id='paymentMethodDelivery6']   
        Click Element    //input[@id='paymentMethodDelivery7'] 
        Capture Page Screenshot     
        Click Element    (//button[contains(.,'Next')])[5]    
        
Step_6_Merchant without online payment
        BuiltIn.Sleep    2    
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)       
        Scroll Element Into View    //button[contains(.,'Skip')]
        Click Element    //button[contains(.,'Skip')]
    
Step_10_Merchant without online payment
        BuiltIn.Sleep    2       
        Click Element    (//button[contains(.,'Next')])[10] 

Merchant Activation (Without Online payment)
        CMSAdmin_Login
        Click_Outlets/Stores
        Create_NewMerchant_without Payment
        Send activation mail from CMS to Merchant       
        Capture Page Screenshot  
        OpenYopMailinchrome
        Check Merchant Activation mail_without Payment  
        #Wait Until Page Contains    Setup your online Shop     
        Select Window    NEW 
        Step_1_Merchant without online payment
        Close All Browsers

Merchant Onboarding without Online Payment
        Login_as_Merchant without online payment
        Step_1_Merchant without online payment
        Step_2_Merchant without online payment
        Step_3_Merchant without online payment
        Step_4_Merchant without online payment
        Step_5_Merchant without online payment
        Step_6_Merchant without online payment    
        Step_10_Merchant without online payment
        Capture Page Screenshot


Type_To_Search_bakery_Merchant
        Click_bakeries
        Click Element    //button[2]/i
        SeleniumLibrary.Input Text    //input[@name='keywordInput']    ${MerchantName without payment}
        Click Element          //button[2]/i
 
View Orders for pickup today
    Click Element    (//div[@class='list-group'])[2]
    
View Orders for future today
   Double Click Element    //span[contains(text(),'15')] 
   
Scroll to Download Order Confirmation
     Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)   
     
Print all orders
     Click Element   //a[contains(.,'Print all orders')]
     
Create new product category
     Click Element    //a[contains(.,'My product categories')]    
     Click Element     //div[@class='btn btn-default'][contains(.,'Add category')]
     Input Text    name=titles[nl]    ${ProductCategoryName}     
     Input Text    name=titles[be]    ${ProductCategoryName} 
     Input Text    name=titles[it]    ${ProductCategoryName}     
     Click Button    //button[contains(.,'Submit')]   
     BuiltIn.Sleep    2    
     Click Element    //button[contains(.,'OK')]  
     BuiltIn.Sleep    2   
     Capture Page Screenshot  
     

Create new own product 

    Click Element   //a[contains(.,'My products')]
    Click Element    (//a[contains(.,'Add product')])[3]    
    Input Text    name=columns_local[nl][title]    ${Productname}  
    Input Text    name=columns_local[nl][subtitle]    ${Productname}     
    Input Text    name=columns_local[nl][text]        ${Productname}
    Input Text    name=columns_local[nl][ingredientsText]    ${Productingredients} 
    Input Text    name=columns_local[nl][unit]    ${ProductUnit}
    Click Element    //button[contains(.,'Copy information from English')]    
    Select From List By Label    name=category_id      ${ProductCategoryName}
    Select From List By Label    name=columns[featured]    Yes
    Input Text    name=columns[price]    ${PricewithVAT}
    Select From List By Label    name=columns[vat_id]    9%
    Click Element    name=columns[availableFrom]    
    Input Text    name=columns[daily_production]     10
    Input Text    name=columns[customPreparationTime]    04:00 
    Select From List By Label    name=columns[active]       Yes
    Input Text    name=nutritions[11]    0.5    
   # Select Checkbox    //input[@id='paymentMethod-5']      #Online payment
   # Select Checkbox    //input[@id='paymentMethod-6']      #Cash payment
   # Select Checkbox    //input[@id='paymentMethod-7']      #card payment
    Click Element    //input[contains(@type,'submit')] 
    BuiltIn.Sleep    5    
    Wait Until Page Contains     ${Productname}    
    Capture Page Screenshot       
                        
   
Change Opening information & siesta time
    Click Element    //a[contains(.,'My Locations')]   
    Select From List By Label    //select[contains(@name,'openTimes[1][from]')]       11:00        
    Select From List By Value    //select[contains(@name,'openTimes[0][to]')]        23:30
    Capture Page Screenshot    
    Select From List By Label    openBreakTimes[0][from]         14:00
    Select From List By Label    openBreakTimes[0][to]        14:30 
    Capture Page Screenshot    
    Set Browser Implicit Wait    5 
    Click Element    //input[contains(@type,'submit')]    
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]     
    BuiltIn.Sleep    2
    
Change preparation & delivery time
    Scroll Element Into View    //a[contains(.,'Settings')]
    Click Element    //a[contains(.,'Settings')]    
    Input Text    name=columns[pickupPreparationTime]    02:00    
    Input Text    name=columns[deliveryPreparationTime]    24:00
    Capture Page Screenshot    
    Select From List By Label    deliveryBreakTimes[0][from]      14:00
    Select From List By Label    deliveryBreakTimes[0][to]      14:30 
    Capture Page Screenshot    
    Set Browser Implicit Wait   5
    Click Element    //input[contains(@type,'submit')]    
    Wait Until Page Contains Element    //button[contains(.,'OK')]    
    Click Element    //button[contains(.,'OK')]     
    BuiltIn.Sleep    2
    
Select an order from Merchant's My order list
    Scroll Element Into View    //a[contains(.,'My orders')]
    Capture Page Screenshot    
    Click Element    //a[contains(.,'My orders')] 
    Click Element    (//span[contains(.,'oppakken')])[1]       
    
Change order status to Cancel
    BuiltIn.Sleep    2    
    Scroll Element Into View    name=orderStatus
    Select From List By Label    name=orderStatus    orderStatus.cancelled
    Input Text    name=status_comment    Automated order cancellation  
    Capture Page Screenshot      
    Click Button    //button[contains(.,'Submit')]
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
    

     