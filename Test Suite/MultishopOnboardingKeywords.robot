*** Settings ***
Library    SeleniumLibrary
      

Resource    CMSkeywords.robot
#Resource    Merchantkeywords.robot
Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot

***Keyword***
Step1 : Account
    Select Window    NEW 
    Input Password    ${newpassword}    ${MultishopMerchantCredentials}[1] 
    Sleep    2  
    Input Password    ${newpasswordcheck}    ${MultishopMerchantCredentials}[1]  
    Sleep    2    
    Click Element    ${T&C_MerchantOnboarding}   
    Sleep    2
    Capture Page Screenshot
    Select Window    CURRENT 
    Sleep    2
    Click Element    ${Accept T&C}   
    Sleep    2 
    Click Element    ${Onboardingsavebutton} 
    
TEMP:Step1
    Input Password    ${newpassword}    ${MultishopMerchantCredentials}[1] 
    Sleep    2  
    Input Password    ${newpasswordcheck}    ${MultishopMerchantCredentials}[1]  
    Sleep    2    
    Click Element    ${Accept T&C}   
    Sleep    2 
    Click Element    ${Onboardingsavebutton} 
    
Step 2: Business information
    Sleep    2 
    Input Text    ${newlocationaddress}    ${MerchantAddress_${Language}}[0]
    Input Text    ${newlocationZip}    ${MerchantAddress_${Language}}[2]
    Input Text    ${newlocationcity}    ${MerchantAddress_${Language}}[1]
    Input Text    ${newlocationphone}   ${MultishopMerchantCredentials}[2]  
    Input Text    tax_id    ${COC}    
    Input Text    vat_id    ${VAT_${Language}}
    Select Radio Button    setupOnlinePayment    0    
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
    
#Opening hours

     Select From List By Value    ${OpeninghoursStartingtime}      06:30
     Select From List By Value    ${OpeneninghoursEndtime}    23:30
     Select From List By Value    ${OpeninghoursBreakStartingtime}     12:00
     Select From List By Value    ${OpeninghoursBreakEndtime}    12:30         
     Click Element    ${Openinghoursapplytoall}  
     Execute JavaScript    window.scrollTo(0, document.body.scrollHeight) 
     Click Element    (//button[contains(@type,'button')])[9] 

    
#Pickup
     Sleep    2 
     Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
     Scroll Element Into View    acceptance_methods_pickup
     Select Checkbox    acceptance_methods_pickup   
     Sleep    2    
     Input Text    acceptance_methods[pickup][preparation_time]    02:00
     Sleep    2    
     Select Checkbox    id=acceptance-methods-pickup-payment-Online    
     Input Text    acceptance_methods[pickup][fee]    5.00
     Select Checkbox    ${setpickuponlinepayment}    
     Select Checkbox    ${setpickupcashpayment}
     Select Checkbox    ${setpickupcardpayment}
     Execute JavaScript    window.scrollBy(1000,247)
     Select From List By Value    ${PickuphoursStartingtime}    06:30
     Select From List By Value    ${PickuphoursEndtime}      23:30
     Select From List By Value    ${PickuphoursBreakStartingtime}    12:00
     Select From List By Value    ${PickuphoursBreakEndtime}    12:30
     Click Element    ${pickupapplytoall}  
      Execute JavaScript    window.scrollTo(0, document.body.scrollHeight) 
     Click Element    (//button[contains(@type,'button')])[9] 
     
#Delivery
     Sleep    2 
     Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
     Select Checkbox    acceptance_methods_deliver
     Input Text    ${deliveryprice}    10.00  
     Input Text   ${minimumprice_for_delivery}     50.00
     Input Text    ${deliveryfreeabove}    75.00
     Input Text    ${deliverypreparationtime}       02:00
     Input Text    ${deliveryhandlingfee}        5.00    
     Select Checkbox    ${setdeliveryonlinepayment}    
     Select Checkbox    ${setdeliverycashpayment}
     Select Checkbox    ${setdeliverycardpayment} 
     Select From List By Value   ${DeliveryhoursStartingtime}    06:30
     Select From List By Value    ${DeliveryhoursEndtime}       23:30
     Select From List By Value    ${DeliveryhoursBreakStartingtime}    12:00
     Select From List By Value    ${DeliveryhoursBreakEndtime}    12:30
     Click Element    ${deliveryapplytoall}  
     Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)   
     Click Element    (//button[@type='button'])[17] 
                 
#Shop Page Information
    Sleep    2 
    Execute JavaScript    window.scrollBy(1000,247) 
    Sleep    2 
    Textfield Should Contain    ${newlocationshoptitle_${Language}}    ${MultishopMerchantName}   
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)  
    Click Element    (//button[@type='button'])[21] 
    

Step 5 : Products
    Sleep    4 
    Select From List By Value   category_id    4
    Sleep    2 
    Click Element    (//span[contains(@class,'switchery switchery-small')])[2]    
    Click Element    (//span[contains(@class,'switchery switchery-small')])[3]
    Sleep    1    
    #Click Element    (//button[contains(.,'Choose product')])[20]  
    Sleep    2      
    Execute JavaScript    ${scrolldown} 
    Click Element    //button[contains(@type,'button')]
    Sleep     2   
    Click Element    //button[@type='button'][contains(.,'OK')]    
    
Step 6 : Done
    Sleep    2 
    Click Element    //button[@type='button']    
     
    
Check onboarded mail received
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    nisha@inqadigital.com  
        Click Element    ${gmailid_submit}    
        Sleep    2
        Input Password    ${inputgmailpassword}    Vinikrish_1   
        Sleep    2 
        Click Element    ${gmailpwd_submit}    
        Sleep    20
        Click Element    ${choosemail_CZ}    
        BuiltIn.Sleep    2    
        Capture Page Screenshot
        Page Should Contain Element     ${Multishop_MerchantDashboard_${Language}}
            
        