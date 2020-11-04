*** Settings ***
Library    SeleniumLibrary
   

Resource    CMSkeywords.robot
Resource    MerchantOnboardingkeywords.robot
Resource    BapachoVariables.robot

***Keyword***

Login_as_Merchant
        
        Set Browser Implicit Wait    5 
        Click Element    (//a[contains(.,'Login as Merchant')])[1]    
        SeleniumLibrary.Input Text    //input[@id='name']    ${MerchantOnboardingCredentials}[0]
        Input Password    (//input[@id='name'])[2]     ${MerchantOnboardingCredentials}[1]  
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
        SeleniumLibrary.Input Text    name=columns_local[nl][title]    Test Automation Bakery    
        SeleniumLibrary.Input Text    name=locationColumns_local[nl][address]    Damstraat 20
        SeleniumLibrary.Input Text    name=locationColumns_local[nl][addressLine2]    Amsterdam    
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
        Click Element    //label[@for='paymentMethodPickup6'][contains(.,'Cash payment')]
        Click Element    //label[@for='paymentMethodPickup7'][contains(.,'Card payment')]
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
        Click Element    //label[@for='paymentMethodDelivery6'][contains(.,'Cash payment')]   
        Click Element    //label[@for='paymentMethodDelivery7'][contains(.,'Card payment')] 
        Capture Page Screenshot     
        Click Element    (//button[contains(.,'Next')])[5]                  
    
