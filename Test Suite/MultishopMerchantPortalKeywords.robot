*** Settings ***
Library    SeleniumLibrary

Resource    Customerkeywords.robot 
Resource    CMSkeywords.robot
Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot

***Keyword***
Login as MultishopMerchant  
        BuiltIn.Sleep    2  
        Click Element    ${LoginasMerchant_${Language}}  
        BuiltIn.Sleep    2
        SeleniumLibrary.Input Text    email    ${MultishopMerchantCredentials}[0]
        Input Password    password     ${MultishopMerchantCredentials}[1]  
        Click Button  ${LoginSubmit_Button}
        BuiltIn.Sleep    2   
        
Connect to Online payment
        Click Element    //a[contains(.,'Connectto online payments')]  
        BuiltIn.Sleep    2
        Capture Page Screenshot    
        Go Back  
        BuiltIn.Sleep    2
        Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
        
#DASHBOARD

Print all Orders for TODAY
    Sleep    2     
    Click Element    //a[contains(.,'Print all orders')]   
    BuiltIn.Sleep    2  
    Capture Page Screenshot 
     
Order/Product Details TODAY
    BuiltIn.Sleep    2  
    Capture Page Screenshot   
    Click Element    //a[contains(.,'Order/product details')]    
    BuiltIn.Sleep    2  
    Capture Page Screenshot 
        
#My Product Categories

Create new product category
     Click Element    ${MyproductCategories}
     Capture Page Screenshot        
     Click Element     ${AddCategory} 
     BuiltIn.Sleep    2
     Run Keyword If    '${Language}'=='EN'     Input Text    titles[nl]    ${ProductCategoryName}       
     Run Keyword If    '${Language}'=='NL'     Input Text    titles[en]    ${ProductCategoryName}            
     Run Keyword If    '${Language}'=='DE'     Input Text    titles[be]    ${ProductCategoryName} 
     Run Keyword If    '${Language}'=='EN'or 'IT'     Input Text    titles[it]    ${ProductCategoryName} 
     Run Keyword If    '${Language}'=='CZ'     Input Text    titles[cz]    ${ProductCategoryName} 
     Capture Page Screenshot    
     Click Button    ${btn_SubmitCategory_${Language}}
     BuiltIn.Sleep    2    
     Click Element    //button[contains(.,'OK')]  
     BuiltIn.Sleep    2   
     Capture Page Screenshot  
     
Delete product category 
     Click Element    ${MyproductCategories}
     Capture Page Screenshot    
     BuiltIn.Sleep    2
     Click Element    (//div[@onclick='assertDeleteCategory(this)'])[1]  
     Capture Page Screenshot    
     BuiltIn.Sleep    2
     Click Element    (//button[contains(@type,'button')])[2]
     Capture Page Screenshot
     BuiltIn.Sleep    2
     Click Element    //button[contains(.,'OK')]    
     Page Should Not Contain    ${ProductCategoryName}     
     Capture Page Screenshot    

Delete product category Failing
     Click Element    ${MyproductCategories}
     Run Keyword And Continue On Failure           Click Element   (//div[@onclick='assertDeleteCategory(this)'])[1]
     Capture Page Screenshot    
                 
#My Products
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
    Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
    Click Element    //button[contains(.,'Copy information from English')]
    Capture Page Screenshot
    Select From List By Label    category_guid      ${ProductCategoryName}
    Select From List By Value    name=columns[featured]      1 
    Input Text    name=columns[price]    ${PricewithVAT}
    Select From List By Value    columns[vat_id]   2
    Capture Page Screenshot
    BuiltIn.Sleep    2    
    Input Text   name=columns[availableFrom]      26-09-2020 06:45  
    Input Text    name=columns[daily_production]     10
    Input Text    columns[preparation_time]    01:00
    Capture Page Screenshot
    Select Checkbox    productLocations[]
    Select From List By Value    name=columns[active]       1 
    # Input Text    name=nutritions[11]    0.5    
    #Select Checkbox    //input[@id='paymentMethod-5']      #Online payment
    #Scroll Element Into View    //input[contains(@value,'OK')]
    #Click Element    //input[contains(@value,'OK')]    
    #Scroll Element Into View    //input[@id='paymentMethod-6']
    #Select Checkbox    //input[@id='paymentMethod-6']      #Cash payment
    #Select Checkbox    //input[@id='paymentMethod-7']      #card payment
    Capture Page Screenshot
    Click Element    //input[contains(@type,'submit')] 
    BuiltIn.Sleep    5    
    Wait Until Page Contains     ${Productname}    
    Capture Page Screenshot       
    
    Click 'i' for product information
   
                 
Delete created own category product
     Click Element   ${MyProduct}
     Capture Page Screenshot    
     BuiltIn.Sleep    2
     Click Element    (//button[contains(.,'Remove')])[2]   
     Capture Page Screenshot    
     Click Element    //button[contains(.,'Yes, delete it!')]    
     Capture Page Screenshot    
     
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
     Input Text    (//input[contains(@type,'number')])[1]    2.00   
     Capture Page Screenshot       
     Click Element    //input[contains(@type,'submit')]  
     BuiltIn.Sleep    2  
     Capture Page Screenshot  
       
 
#My Location

Choose Plan
    Click Element    ${MyLocations} 
    Run Keyword And Continue On Failure     Click Element    //a[contains(.,'button.ViewPlans')]   
    Sleep    2 
    Click Element    //i[contains(@class,'fas fa-plus fa-fw')]    
    Sleep    2 
    Select Checkbox   acceptTermsAndConditions
    Click Element    //button[contains(.,'Checkout')]  
    Sleep    2
    Input Text    cardNumber    4242 4242 4242 4242
    Input Text    cardExpiry     02/22
    Input Text    cardCvc        123
    Input Text    billingName    Nisha        
    Click Element    //button[contains(@type,'submit')]    
    Sleep    5
     
Add New Location
     Click Element    ${MyLocations} 
     Click Element    //i[contains(@class,'fas fa-plus-circle fa-2x')]    
     Sleep    2 
     Input Text    columns[title]     ${MultishopMerchantLoc1}
     Input Text    columns[address_1]    ${MultishopLocation1Credentials}[3]
     Input Text    columns[zip]    ${MultishopLocation1Credentials}[4]
     Input Text    columns[city]    ${MultishopLocation1Credentials}[5]
     Input Text    columns[phone]    ${MultishopLocation1Credentials}[2]
     Click Element    (//button[contains(.,'Choose product')])[1]    
     Click Element    (//button[contains(.,'Choose product')])[2]                 
     Click Element    //button[@type='submit'][contains(.,'Save')]                  
#Shop Address
    Sleep    2 
    Textfield Should Contain    localized[nl][title]    ${MultishopMerchantLoc1}    
    Textfield Should Contain    localized-it-title    ${MultishopMerchantLoc1}  
    Textfield Should Contain    localized[nl][address_1]    ${MultishopLocation1Credentials}[3]
    Textfield Should Contain    localized[it][address_1]    ${MultishopLocation1Credentials}[3]
    Textfield Should Contain    localized[nl][zip]    ${MultishopLocation1Credentials}[4]
    Textfield Should Contain    localized[it][zip]    ${MultishopLocation1Credentials}[4]
    Textfield Should Contain     localized[nl][city]     ${MultishopLocation1Credentials}[5]
    Textfield Should Contain    localized[it][city]      ${MultishopLocation1Credentials}[5]  
    Input Text    localized[nl][region]    Haarlem    
    Input Text    localized[it][region]    Haarlem    
    Input Text    localized[nl][country]    Netherlands                           
    Input Text    localized[it][country]    Netherlands
    Input Text    columns[emailOrders]    ${MultishopLocation1Credentials}[0]     
    Input Text    columns[phoneOrders]    ${MultishopLocation1Credentials}[2]
    Input Text    columns[telephone_2]    ${MultishopLocation1Credentials}[2]
    Select Checkbox    columns[notifications_phone]
    Select Checkbox    columns[notifications_email]
    Click Element    (//button[contains(.,'Save')])[1]    
    Sleep    2
    Click Element    //button[@type='button'][contains(.,'OK')]    
    
#Products
     Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
     Click Element    //a[contains(.,'Products')]    
     Select Checkbox    (//input[contains(@name,'active[]')])[2]
     Click Element    (//button[contains(.,'Save')])[2]    
     Sleep    2
     Click Element    //button[@type='button'][contains(.,'OK')]   
     
#Pickup
     Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
     Click Element    //a[contains(.,'Pick-up')]
     Select Checkbox    acceptance_methods[pickup][active]
     Sleep    2    
     Input Text    acceptance_methods[pickup][preparation_time]    02:00
     Input Text    acceptance_methods[pickup][fee]    5.00
     Sleep    2    
     Execute JavaScript    window.scrollBy(1000,247)
     Select From List By Value    pickupTimes[0][start]    06:30
     Select From List By Value    pickupTimes[0][end]      23:30
     Select From List By Value    pickupBreakTimes[0][start]    12:00
     Select From List By Value    pickupBreakTimes[0][end]    12:30
     Click Element    (//button[contains(.,'Apply to all')])[1]  
     #Execute JavaScript    window.scrollTo(0, document.body.scro llHeight)
     Select Checkbox    id=acceptance-methods-pickup-payment-Online    
     Select Checkbox    id=acceptance-methods-pickup-payment-Cash
     Select Checkbox    id=acceptance-methods-pickup-payment-Card
     Click Element    (//button[@type='submit'][contains(.,'Save')])[3]      
     Sleep  2
     Click Element    //button[@type='button'][contains(.,'OK')]   
     
     
#Delivery
     Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
     Click Element    //a[contains(.,'Delivery')]    
     Select Checkbox    acceptance_methods[deliver][active]
     Input Text    acceptance_methods[deliver][price]    10.00  
     Input Text   acceptance_methods[deliver][minimum]    50.00
     Input Text    acceptance-methods-deliver-range    20    
     Input Text    acceptance_methods[deliver][free_above]    75.00
     Input Text    acceptance_methods[deliver][preparation_time]       02:00
     Input Text    acceptance_methods[deliver][fee]        5.00    
     Select From List By Value   deliveryTimes[0][start]    06:30
     Select From List By Value    deliveryTimes[0][end]       23:30
     Select From List By Value    deliveryBreakTimes[0][start]    12:00
     Select From List By Value    deliveryBreakTimes[0][end]    12:30
     Click Element    (//button[contains(.,'Apply to all')])[8]  
     Select Checkbox    id=acceptance-methods-deliver-payment-Online    
     Select Checkbox    id=acceptance-methods-deliver-payment-Cash
     Select Checkbox    id=acceptance-methods-deliver-payment-Card 
     Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)   
     Click Element    (//button[@type='submit'][contains(.,'Save')])[4] 
     Sleep  2
     Click Element    //button[@type='button'][contains(.,'OK')]   
     
    
#Shop Information
     Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
     Click Element    //a[contains(.,'Shop-page information')]    
     Execute JavaScript    window.scrollBy(1000,247) 
     Sleep    2 
     Page Should Contain       ${MultishopMerchantLoc1}   
     Input Text    localized[nl][text]    Nisha's Multishop location 1     
     Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)  
     Click Element    (//button[contains(.,'Save')])[5] 
     Sleep  2
     Click Element    //button[@type='button'][contains(.,'OK')]   
     
     
Open Location1 - my page 
    Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
    Click Element    //a[contains(.,'My Page')]    
    Sleep    2 
    Page Should Contain       ${MultishopMerchantLoc1}  
           
View My locations
    Click Element    ${MyLocations} 

My Orders
    
    Click Element    //a[contains(.,'My orders')]  
     Sleep    2  
    
#Accept and view Order
    Click Element    (//a[contains(.,'Accept')])[1] 
    Sleep    2
    Click Element    //button[contains(.,'OK')]    
    Sleep    2
    Click Element    (//a[contains(.,'View order')])[1]
    Sleep    2
    Select From List By Value    orderStatus     preparing
    Sleep    2
    Input Text    status_comment       Automated Test Comment for preparing
    Click Element    //button[contains(.,'Save order status')]  
    Sleep    2
    Click Element    //button[contains(.,'OK')]    
    Sleep    2
    Select From List By Value    lastStatus    paid
    Click Element    //button[contains(.,'Save payment status')] 
    Sleep    2   
    Click Element    //button[contains(.,'OK')]    
    Sleep    2
    
My Teams
    Click Element    //a[contains(.,'My team')]    
    Click Element    (//div[contains(.,'Add manager')])[6]  
    Sleep    2    
    Input Text    firstname    AutomatedManager        
    Input Text    lastname    1    
    Input Text    email    ${MultishopLocation1Credentials}[0]    
    Click Element    (//input[contains(@type,'checkbox')])[1]    
    Click Element    (//input[contains(@type,'checkbox')])[2]    
    Click Element    //button[contains(.,'Submit')]   
    Sleep    2 
    Click Element    //button[contains(.,'OK')]    
    Sleep    2
    
Online Payment Settings
    Click Element    //a[contains(.,'Online paymentsettings')]   
    Click Element    //a[contains(.,'Connectto online payments')]  
    Sleep     2  
    Go Back 
   
Account Settings
    Click Element    //a[contains(.,'Accoutn settings')]    
    
Account Options
    Click Element    //a[contains(.,'buttons.AccountOptions')]    
    
   