*** Settings ***
Library    SeleniumLibrary
      

Resource    CMSkeywords.robot
#Resource    Merchantkeywords.robot
Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot

***Keyword***
Step1 : Account
    Select Window    NEW 
    Input Password    password    ${MultishopMerchantCredentials}[1] 
    Sleep    2  
    Input Password    password_chk    ${MultishopMerchantCredentials}[1]  
    Sleep    2    
    Click Element    //a[contains(.,'Terms and Conditions')]    
    Sleep    2
    Capture Page Screenshot
    Select Window    CURRENT 
    Sleep    2
    Click Element    acceptTermsAndConditions   
    Sleep    2 
    Click Element    //button[contains(@type,'button')] 
    
TEMP:Step1
    Input Password    password    ${MultishopMerchantCredentials}[1] 
    Sleep    2  
    Input Password    password_chk    ${MultishopMerchantCredentials}[1]  
    Sleep    2    
    Click Element    acceptTermsAndConditions   
    Sleep    2 
    Click Element    //button[contains(@type,'button')] 
    
Step 2: Business information
    Sleep    2 
    Input Text    columns[address_1]    ${MerchantAddress_${Language}}[0]
    Input Text    columns[zip]    ${MerchantAddress_${Language}}[2]
    Input Text    columns[city]    ${MerchantAddress_${Language}}[1]
    Input Text    columns[phone]   ${MultishopMerchantCredentials}[2]  
    Input Text    tax_id    ${COC}    
    Input Text    vat_id    ${VAT}
    Click Element    //label[contains(.,'labels.No.NotNow')]    
    # Input Text    account_holder_name    ${MultishopMerchantName}
    # Input Text    account_number    ${IBAN}
    #Click Element    tos            
    Sleep    2 
    Click Element    //button[contains(@type,'button')]                  
    
# Step 3: Ownership Information
    # Sleep    10
    # Click Element    //button[contains(.,'Add person')]
    # Sleep    2
    # Input Text    first_name    Representative
    # Input Text    last_name    1    
    # Input Text    email    nisha@inqadigital.com    
    # Input Text    phone    +31612809787    
    # Input Text    relationship[title]    Representative        
    # Input Text    address[line1]    Haarlem
    # Input Text    address[postal_code]    2011GP    
    # Input Text    address[city]    Haarlem    
    # Input Text    dob[day]    28
    # Input Text    dob[year]    1993    
    # Click Element    executive   
    # Sleep    2   
    # #Click Element      (//button[@type='button'][contains(.,'Upload')])[1]   
    # Select Frame    __privateStripeMetricsController0120 
    # Choose File    (//input[contains(@type,'file')])[1]    C:\Users\Nisha\git\ta-bapacho\Bapacho\TestImages\2017-Scrum-Guide-US.pdf  
    # Choose File    (//input[contains(@type,'file')])[2]    C:\Users\Nisha\git\ta-bapacho\Bapacho\TestImages\2017-Scrum-Guide-US.pdf      
    # Choose File    (//input[contains(@type,'file')])[3]    C:\Users\Nisha\git\ta-bapacho\Bapacho\TestImages\2017-Scrum-Guide-US.pdf      
    # Choose File    (//input[contains(@type,'file')])[4]    C:\Users\Nisha\git\ta-bapacho\Bapacho\TestImages\2017-Scrum-Guide-US.pdf 
    # Click Element    //button[@type='button'][contains(.,'Save')]  
    

Step 4 : Shop  
    Sleep    2 
    Textfield Should Contain    columns[title]    ${MultishopMerchantName}
    Textfield Should Contain    columns[address_1]    ${MerchantAddress_${Language}}[0]    
    Textfield Should Contain    columns[zip]    ${MerchantAddress_${Language}}[2]
    Textfield Should Contain    columns[city]    ${MerchantAddress_${Language}}[1]
    Textfield Should Contain    columns[telephone_1]   ${MultishopMerchantCredentials}[2]
    Input Text    columns[region]    ${MerchantAddress_${Language}}[1] 
    Input Text    columns[country]           ${MerchantAddress_${Language}}[3] 
    Input Text    columns[phoneOrders]     ${MultishopMerchantCredentials}[2]
    Input Text    columns[emailOrders]    ${MultishopMerchantCredentials}[0]    
    Select Checkbox    columns[notifications_phone]    
    Select Checkbox    columns[notifications_email]
    
    Click Element    //button[contains(@type,'button')]   
    
#Pickup
     Sleep    2 
     Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
     Scroll Element Into View    acceptance_methods_pickup
     Select Checkbox    acceptance_methods_pickup    
     Input Text    acceptance_methods[pickup][preparation_time]    02:00
     Sleep    2    
     Select Checkbox    id=acceptance-methods-pickup-payment-Online    
     Input Text    acceptance_methods[pickup][fee]    5.00
     Select Checkbox    id=acceptance-methods-pickup-payment-Online    
     Select Checkbox    id=acceptance-methods-pickup-payment-Cash
     Select Checkbox    id=acceptance-methods-pickup-payment-Card
     Execute JavaScript    window.scrollBy(1000,247)
     Select From List By Value    pickupTimes[0][start]    06:30
     Select From List By Value    pickupTimes[0][end]      23:30
     Select From List By Value    pickupBreakTimes[0][start]    12:00
     Select From List By Value    pickupBreakTimes[0][end]    12:30
     Click Element    (//button[contains(.,'Apply to all')])[1]  
      Execute JavaScript    window.scrollTo(0, document.body.scrollHeight) 
     Click Element    (//button[contains(.,'Next')])[2] 
     
#Delivery
     Sleep    2 
     Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
     Select Checkbox    acceptance_methods_deliver
     Input Text    acceptance_methods[deliver][price]    10.00  
     Input Text   acceptance_methods[deliver][minimum]    50.00
     Input Text    acceptance_methods[deliver][free_above]    75.00
     Input Text    acceptance_methods[deliver][preparation_time]       02:00
     Input Text    acceptance_methods[deliver][fee]        5.00    
     Select Checkbox    id=acceptance-methods-deliver-payment-Online    
     Select Checkbox    id=acceptance-methods-deliver-payment-Cash
     Select Checkbox    id=acceptance-methods-deliver-payment-Card 
     Select From List By Value   deliveryTimes[0][start]    06:30
     Select From List By Value    deliveryTimes[0][end]       23:30
     Select From List By Value    deliveryBreakTimes[0][start]    12:00
     Select From List By Value    deliveryBreakTimes[0][end]    12:30
     Click Element    (//button[contains(.,'Apply to all')])[8]  
     Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)   
     Click Element    (//button[contains(.,'Next')])[3] 
                 
#Shop Page Information
    Sleep    2 
    Execute JavaScript    window.scrollBy(1000,247) 
    Sleep    2 
    Textfield Should Contain    localized[nl][title]    ${MultishopMerchantName}   
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)  
    Click Element    (//button[contains(.,'Next')])[4] 
    

Step 5 : Products
    Sleep    2 
    Select From List By Value   category_id    3
    Sleep    2 
    Click Element    (//input[contains(@type,'checkbox')])[5]    
    Click Element    (//input[contains(@type,'checkbox')])[6]
    Sleep    1    
    #Click Element    (//button[contains(.,'Choose product')])[20]  
    Sleep    2      
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight) 
    Click Element    //button[contains(.,'Next')]
    Sleep     2   
    Click Element    //button[@type='button'][contains(.,'OK')]    
    
Step 6 : Done
    Sleep    2 
    Click Element    //button[@type='button']    
     
    

            
        