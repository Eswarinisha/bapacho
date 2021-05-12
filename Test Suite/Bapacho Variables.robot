***Variables***

${Language}     EN


#URLs
#Multishop Homepage
${Multishop_URL_EN}    https://multishop.bapacho.com/nl

#Stagings URL
#${Bapacho_URL_EN}     https://bapacho:bapacho@multishop.bapacho.com/
${Multishop_URL_NL}     https://staging.bapacho.nl/nl
${Multishop_URL_IT}     https://bapacho:bapacho@staging.bapacho.it/it
${Multishop_URL_CZ}     https://bapacho:bapacho@staging.bapacho.cz/cz
${Multishop_URL_GR}     https://bapacho:bapacho@staging.bapacho.gr/gr
${Multishop_URL_DE}     https://bapacho:bapacho@staging.bapacho.de/de
${Multishop_URL_ES}     https://bapacho:bapacho@staging.bapacho.es/es
${Multishop_URL_RO}     https://bapacho:bapacho@staging.bapacho.ro/ro
${Multishop_URL_PT}     https://bapacho:bapacho@staging.bapacho.pt/pt
${Multishop_URL_PL}     https://bapacho:bapacho@staging.bapacho.pl/pl

#Merchant Dashboard
${Multishop_MerchantDashboard_CZ}    (//a[@href='https://staging.bapacho.cz/cz/my-store/dashboard/'])[1]
${Multishop_MerchantDashboard_RO}    (//a[@href='https://staging.bapacho.ro/ro/my-store/dashboard/'])[1]


#CMS URL
${CMS_URL_EN}    https://bapacho:bapacho@multishop.bapacho.com/admin
${CMS_URL_NL}    https://bapacho:bapacho@staging.bapacho.nl/admin
${CMS_URL_IT}    https://bapacho:bapacho@staging.bapacho.it/admin
${CMS_URL_CZ}    https://bapacho:bapacho@staging.bapacho.cz/admin
${CMS_URL_GR}     https://bapacho:bapacho@staging.bapacho.gr/admin
${CMS_URL_DE}     https://bapacho:bapacho@staging.bapacho.de/admin
${CMS_URL_ES}     https://bapacho:bapacho@staging.bapacho.es/admin
${CMS_URL_RO}     https://bapacho:bapacho@staging.bapacho.ro/admin
${CMS_URL_PT}     https://bapacho:bapacho@staging.bapacho.pt/admin
${CMS_URL_PL}     https://bapacho:bapacho@staging.bapacho.pl/admin

#Sales Portal 
${SalePortal_EN}    https://bapacho:bapacho@sales.bapacho.com/nl/
${SalePortal_NL}    https://bapacho:bapacho@sales.bapacho.nl/
${SalePortal_IT}     https://bapacho:bapacho@sales.bapacho.it
${SalePortal_CZ}    https://bapacho:bapacho@sales.bapacho..cz/
${SalePortal_GR}     https://bapacho:bapacho@sales.bapacho.gr/
${SalePortal_DE}     https://bapacho:bapacho@sales.bapacho.de/
${SalePortal_ES}     https://bapacho:bapacho@sales.bapacho.es/
${SalePortal_RO}     https://bapacho:bapacho@sales.bapacho.ro/
${SalePortal_PT}     https://bapacho:bapacho@sales.bapacho.pt/
${SalePortal_PL}     https://bapacho:bapacho@sales.bapacho.pl/

#LandingpageURL
${BapachoLangingpage_URL_EN}    https://staging.bapacho.com/nl/city/haarlem 
${Subscribetonewsletter}    //input[@class='form-control']
${Signup}    (//button[contains(@type,'button')])[2] 
${Ordernow}    (//a[contains(.,'Order now')])[3]        
${OK_Button}    //button[contains(.,'OK')]

#MERCHANT ONBOARDING

#Merchant activation link in Mail
${activationmail_NL}      //a[contains(.,'{activeAccountURL}')]
${activationmail_EN}     //a[contains(.,'https://multishop.bapacho.com/activateShop.php?gu')]
${activationmail_IT}     //a[contains(.,'https://staging.bapacho.it/activateShop.php?')]
${activationmail_CZ}     //a[contains(.,'https://staging.bapacho.cz/activateShop.php?')]
${activationmail_GR}    //a[contains(.,'https://staging.bapacho.gr/activateShop.php?')]
${activationmail_DE}     //a[contains(.,'https://staging.bapacho.de/activateShop.php?')]
${activationmail_ES}     //a[contains(.,'https://staging.bapacho.es/activateShop.php?')]
${activationmail_RO}      //a[contains(.,'https://staging.bapacho.ro/activateShop.php?')]
${activationmail_PT}      //a[contains(.,'https://staging.bapacho.pt/activateShop.php?')]
${activationmail_PL}     //a[contains(.,'https://staging.bapacho.pl/activateShop.php?')]



${activationmailManager_CZ}    //a[contains(.,'https://staging.bapacho.cz/activateManager.php?gu')]
${activationmailManager_RO}    //a[contains(.,'https://staging.bapacho.ro/activateManager.php?gu')]



${Onboardingsavebutton}    //button[contains(@type,'button')]

#Step 1 
${LoginasMerchant}    (//a[contains(@role,'button')])[4]
#${LoginasMerchant_EN}     (//a[contains(.,'Login as Merchant')])[1]


#Step 2

${btn_MerchantTitle_NL}            name=columns_local[en][title]       
${btn_MerchantAddress_NL}            name=locationColumns_local[en][address]    
${btn_MerchantAddressline2_NL}            name=locationColumns_local[en][addressLine2]     
${btn_MerchantPostal_NL}            name=locationColumns_local[en][postal]    
${btn_MerchantCity_NL}           name=locationColumns_local[en][city]             
${btn_MerchantEmail_NL}            name=columns[emailOrders]                 
${btn_MerchantPhone_NL}            name=columns[phoneOrders]      
${btn_MerchantPhone2_NL}            name=columns[phone]

${btn_MerchantTitle_EN}            name=columns_local[nl][title]       
${btn_MerchantAddress_EN}            name=locationColumns_local[nl][address]    
${btn_MerchantAddressline2_EN}            name=locationColumns_local[nl][addressLine2]     
${btn_MerchantPostal_EN}            locationColumns_local[nl][postal]    
${btn_MerchantCity_EN}           name=locationColumns_local[nl][city]             
${btn_MerchantEmail_EN}            name=columns[emailOrders]                 
${btn_MerchantPhone_EN}            name=columns[phoneOrders]      
${btn_MerchantPhone2_EN}            name=columns[phone]       
        
${btn_MerchantTitle_IT}            name=columns_local[it][title]       
${btn_MerchantAddress_IT}            name=locationColumns_local[it][address]    
${btn_MerchantAddressline2_IT}            name=locationColumns_local[it][addressLine2]     
${btn_MerchantPostal_IT}            locationColumns_local[it][postal]    
${btn_MerchantCity_IT}           name=locationColumns_local[it][city]             
${btn_MerchantEmail_IT}            name=columns[emailOrders]                 
${btn_MerchantPhone_IT}            name=columns[phoneOrders]      
${btn_MerchantPhone2_IT}            name=columns[phone]  

${btn_MerchantTitle_CZ}            name=columns_local[cz][title]       
${btn_MerchantAddress_CZ}            name=locationColumns_local[cz][address]    
${btn_MerchantAddressline2_CZ}            name=locationColumns_local[cz][addressLine2]     
${btn_MerchantPostal_CZ}            locationColumns_local[cz][postal]    
${btn_MerchantCity_CZ}           name=locationColumns_local[cz][city]             
${btn_MerchantEmail_CZ}            name=columns[emailOrders]                 
${btn_MerchantPhone_CZ}            name=columns[phoneOrders]      
${btn_MerchantPhone2_CZ}            name=columns[phone]  

${btn_MerchantTitle_GR}            name=columns_local[gr][title]       
${btn_MerchantAddress_GR}            name=locationColumns_local[gr][address]    
${btn_MerchantAddressline2_GR}            name=locationColumns_local[gr][addressLine2]     
${btn_MerchantPostal_GR}            locationColumns_local[gr][postal]   
${btn_MerchantCity_GR}           name=locationColumns_local[gr][city]             
${btn_MerchantEmail_GR}            name=columns[emailOrders]                 
${btn_MerchantPhone_GR}            name=columns[phoneOrders]      
${btn_MerchantPhone2_GR}            name=columns[phone] 

${btn_MerchantTitle_DE}            name=columns_local[de][title]       
${btn_MerchantAddress_DE}            name=locationColumns_local[de][address]    
${btn_MerchantAddressline2_DE}            name=locationColumns_local[de][addressLine2]     
${btn_MerchantPostal_DE}            locationColumns_local[de][postal]   
${btn_MerchantCity_DE}           name=locationColumns_local[de][city]             
${btn_MerchantEmail_DE}            name=columns[emailOrders]                 
${btn_MerchantPhone_DE}            name=columns[phoneOrders]      
${btn_MerchantPhone2_DE}            name=columns[phone] 

${btn_MerchantTitle_ES}            name=columns_local[es][title]       
${btn_MerchantAddress_ES}            name=locationColumns_local[es][address]    
${btn_MerchantAddressline2_ES}            name=locationColumns_local[es][addressLine2]     
${btn_MerchantPostal_ES}            locationColumns_local[es][postal]   
${btn_MerchantCity_ES}           name=locationColumns_local[es][city]             
${btn_MerchantEmail_ES}            name=columns[emailOrders]                 
${btn_MerchantPhone_ES}            name=columns[phoneOrders]      
${btn_MerchantPhone2_ES}            name=columns[phone] 

${btn_MerchantTitle_RO}            name=columns_local[ro][title]       
${btn_MerchantAddress_RO}            name=locationColumns_local[ro][address]    
${btn_MerchantAddressline2_RO}            name=locationColumns_local[ro][addressLine2]     
${btn_MerchantPostal_RO}            locationColumns_local[ro][postal]   
${btn_MerchantCity_RO}           name=locationColumns_local[ro][city]             
${btn_MerchantEmail_RO}            name=columns[emailOrders]                 
${btn_MerchantPhone_RO}            name=columns[phoneOrders]      
${btn_MerchantPhone2_RO}            name=columns[phone] 

${btn_MerchantTitle_PT}            name=columns_local[pt][title]       
${btn_MerchantAddress_PT}             name=locationColumns_local[pt][address]    
${btn_MerchantAddressline2_PT}           name=locationColumns_local[pt][addressLine2]     
${btn_MerchantPostal_PT}             locationColumns_local[pt][postal]   
${btn_MerchantCity_PT}            name=locationColumns_local[pt][city]             
${btn_MerchantEmail_PT}            name=columns[emailOrders]                 
${btn_MerchantPhone_PT}           name=columns[phoneOrders]      
${btn_MerchantPhone2_PT}            name=columns[phone] 

${btn_MerchantTitle_PL}            name=columns_local[pl][title]       
${btn_MerchantAddress_PL}             name=locationColumns_local[pl][address]    
${btn_MerchantAddressline2_PL}           name=locationColumns_local[pl][addressLine2]     
${btn_MerchantPostal_PL}             locationColumns_local[pl][postal]   
${btn_MerchantCity_PL}            name=locationColumns_local[pl][city]             
${btn_MerchantEmail_PL}            name=columns[emailOrders]                 
${btn_MerchantPhone_PL}           name=columns[phoneOrders]      
${btn_MerchantPhone2_PL}            name=columns[phone] 


${btn_Applytoall}    (//button[contains(@onclick,'applyTimesToAll(this);')])[1]

#Step 3
${btn_Location_NL}     locationColumns_local[en][text]
${btn_Location_EN}     locationColumns_local[nl][text]
${btn_Location_IT}     locationColumns_local[it][text]
${btn_Location_CZ}     locationColumns_local[cz][text]
${btn_Location_GR}     locationColumns_local[gr][text]
${btn_Location_DE}     locationColumns_local[de][text]
${btn_Location_ES}     locationColumns_local[es][text]
${btn_Location_RO}     locationColumns_local[ro][text]
${btn_Location_PT}     locationColumns_local[pt][text]
${btn_Location_PL}     locationColumns_local[pl][text]


${AddOpeninghoursLunchbreak}    (//span[contains(.,'buttons.addLunchBreak')])[1]


${OpeninghoursSetActive}    operationTimes_day_active[1]
${OpeninghoursStartingtime}     operationTimes[1][start]
${OpeneninghoursEndtime}    operationTimes[1][end]
${OpeninghoursBreakStartingtime}     operationBreakTimes[1][start]
${OpeninghoursBreakEndtime}     operationBreakTimes[1][end]
${Openinghoursapplytoall}      (//button[@type='button'])[2]    


${AddPickupLunchbreak}    (//a[contains(.,'buttons.addLunchBreak')])[8]

${PickuphoursSetActive}    pickupTimes_day_active[1]
${PickuphoursStartingtime}    pickupTimes[1][start]
${PickuphoursEndtime}    pickupTimes[1][end]
${PickuphoursBreakStartingtime}    pickupBreakTimes[1][start]
${PickuphoursBreakEndtime}    pickupBreakTimes[1][end]


${AddDeliveryLunchbreak}    (//a[contains(.,'buttons.addLunchBreak')])[15]

${DeliveryhoursSetActive}    deliveryTimes_day_active[1]
${DeliveryhoursStartingtime}    deliveryTimes[1][start]
${DeliveryhoursEndtime}    deliveryTimes[1][end]
${DeliveryhoursBreakStartingtime}    deliveryBreakTimes[1][start]
${DeliveryhoursBreakEndtime}    deliveryBreakTimes[1][end]





#Step 4
${category_EN}       7
${category_NL}    Snacks
${category_IT}    Pane
${category_CZ}    12

${Chooseproduct1_EN}     (//button[contains(.,'Choose product')])[6]
${Chooseproduct1_NL}     (//button[contains(.,'Choose product')])[4]
${Chooseproduct1_IT}    (//button[@onclick='setProductActive(this);'])[8]
${Chooseproduct1_CZ}    (//button[contains(@type,'button')])[21]

${Chooseproduct2_EN}   (//button[contains(.,'Choose product')])[9] 
${Chooseproduct2_NL}   (//button[contains(.,'Choose product')])[6] 
${Chooseproduct2_IT}    (//button[@onclick='setProductActive(this);'])[9]
${Chooseproduct2_CZ}   (//button[contains(@type,'button')])[22] 

#Step 5
${btn_Applytoalldeliverytime}    (//button[contains(@onclick,'applyTimesToAll(this);')])[8]

#Step 6
${btn_Skip}    //button[contains(@onclick,'skipPaymentOnboarding()')]

#Merchant Onboarding button
${Step1_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[1]
${Step2_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[2]
${Step3_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[3]
${Step4_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[4]
${Step5_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[5]
${Step6_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[6]
${Step7_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[7]
${Step8_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[8]
${Step9_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[9]
${Step10_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[10]

#MERCHANT PORTAL

#Dashboard

${Onlinepaymentsettings}    //i[contains(@class,'fas fa-cog fa-fw')]
${connect to online payment}    //a[contains(@class,'btn btn-info btn-lg')]
${printallorders}    //a[contains(@class,'btn btn-info btn-block wrap')]
${oredr/product_details}    //a[contains(@class,'btn btn-default btn-block wrap')]


#My Categories
${MyproductCategories}    (//a[contains(@class,'list-group-item ')])[2]
${AddCategory}    //div[contains(@onclick,'showCategoryModal(null)')]

${btn_SubmitCategory}    //button[contains(@class,'btn btn-block btn-info-dark')]
${btn_SubmitCategory_NL}    //button[contains(.,'Submit')] 
${btn_SubmitCategory_EN}    //button[contains(.,'Submit')]
${btn_SubmitCategory_IT}    //button[contains(.,'Invia')]
${btn_SubmitCategory_CZ}    //button[contains(.,'Odeslat')]
${btn_SubmitCategory_DE}    //button[contains(.,'Senden')]


${DeleteCategory}    //div[contains(@onclick,'assertDeleteCategory(this)')]
${DeleteCategory_failing}    //div[contains(@data-toggle,'tooltip')]
${delete}    (//button[contains(@type,'button')])[2]

${CopyfromEnglish}    //button[contains(@class,'btn btn-xs btn-info')]

#My Products
${MyProduct}    (//a[contains(@class,'list-group-item ')])[3]
${Addproduct}   (//a[contains(@class,'btn btn-default')])[2]
${Addzeelandiaproduct}    (//a[contains(@class,'btn btn-default')])[1]
${Editzeelandiaproduct}    (//a[contains(@class,'btn btn-xs btn-info')])[1]

${choosecategoryname}    category_guid
${feature product}    name=columns[featured]
${price}    name=columns[price]
${productVAT}    columns[vat_id]
${productAvailablefrom}    name=columns[availableFrom]
${productionquantity}    name=columns[daily_production]
${productpreparationtime}    columns[preparation_time]
${productlocation}    productLocations[]
${chooseproductlocation}    name=columns[active]

${ProductTitle_EN}     name=columns_local[nl][title] 
${ProductTitle_IT}     name=columns_local[it][title] 
${ProductTitle_NL}     name=columns_local[en][title] 
${ProductTitle_CZ}     name=columns_local[cz][title] 
${ProductTitle_GR}     name=columns_local[gr][title] 
${ProductTitle_DE}     name=columns_local[de][title] 
${ProductTitle_ES}     name=columns_local[es][title] 
${ProductTitle_RO}     name=columns_local[ro][title] 
${ProductTitle_PT}     name=columns_local[pt][title] 
${Product_Subtitle_NL}   name=columns_local[en][subtitle]   
${Product_Subtitle_IT}   name=columns_local[it][subtitle]
${Product_Subtitle_EN}   columns_local[nl][subtitle]  
${Product_Subtitle_CZ}   name=columns_local[cz][subtitle]   
${Product_Subtitle_GR}   name=columns_local[gr][subtitle]
${Product_Subtitle_DE}   name=columns_local[de][subtitle]
${Product_Subtitle_ES}   name=columns_local[es][subtitle]   
${Product_Subtitle_RO}   name=columns_local[ro][subtitle]
${Product_Subtitle_PT}   name=columns_local[pt][subtitle]
${Product_Subtitle_PL}   name=columns_local[pl][subtitle]
  
${Product_Description_NL}     name=columns_local[en][text]  
${Product_Description_IT}     name=columns_local[it][text]  
${Product_Description_EN}     columns_local[nl][text]  
${Product_Description_CZ}     name=columns_local[cz][text]  
${Product_Description_GR}     name=columns_local[gr][text]  
${Product_Description_DE}     name=columns_local[de][text]  
${Product_Description_ES}     name=columns_local[es][text]  
${Product_Description_RO}     name=columns_local[ro][text]  
${Product_Description_PT}     name=columns_local[pt][text] 
${Product_Description_PL}     name=columns_local[pl][text]  

${Product_Ingredients_NL}  name=columns_local[en][ingredientsText]   
${Product_Ingredients_IT}  name=columns_local[it][ingredientsText] 
${Product_Ingredients_EN}  columns_local[nl][ingredientsText]
${Product_Ingredients_CZ}  name=columns_local[cz][ingredientsText]   
${Product_Ingredients_GR}  name=columns_local[gr][ingredientsText] 
${Product_Ingredients_DE}  name=columns_local[de][ingredientsText] 
${Product_Ingredients_ES}  name=columns_local[es][ingredientsText]   
${Product_Ingredients_RO}  name=columns_local[ro][ingredientsText] 
${Product_Ingredients_PT}  name=columns_local[pt][ingredientsText] 
${Product_Ingredients_PL}  name=columns_local[pl][ingredientsText] 

${Product_unit_NL}  name=columns_local[en][unit]
${Product_unit_IT}  name=columns_local[it][unit]
${Product_unit_EN}  columns_local[nl][unit]
${Product_unit_CZ}  name=columns_local[cz][unit]
${Product_unit_GR}  name=columns_local[gr][unit]
${Product_unit_DE}  name=columns_local[de][unit]
${Product_unit_ES}  name=columns_local[es][unit]
${Product_unit_RO}  name=columns_local[ro][unit]
${Product_unit_PT}  name=columns_local[pt][unit]
${Product_unit_PL}  name=columns_local[pl][unit]
  
${Yes_NL}    Yes

${Deleteproduct}    (//button[@onclick='deleteProduct(this);'])[2]
${yes_delete}    //button[contains(@class,'swal2-confirm swal2-styled')]


${setzeelandiaproduct}    (//span[contains(@class,'switchery switchery-small')])[1]
${inputprice_zeelandiaproduct}    (//input[contains(@type,'number')])[1]

${editzeelandiaproducttitle_EN}    columns_local[nl][title]
${editzeelandiaproductsubtitle_EN}    columns_local[nl][subtitle]

${editzeelandiaproducttitle_CZ}    columns_local[cz][title]
${editzeelandiaproductsubtitle_CZ}    columns_local[cz][subtitle]

${editzeelandiaproducttitle_RO}    columns_local[ro][title]
${editzeelandiaproductsubtitle_RO}    columns_local[ro][subtitle]


#My Location

${MyLocations}        (//a[contains(@class,'list-group-item ')])[4]
${ManagerMyLocations}    (//a[contains(@class,'list-group-item ')])[2]


${btn_Submit_NL}    //input[contains(@type,'submit')] 
${btn_Submit_EN}    //input[contains(@type,'submit')] 
${btn_Submit_IT}    //input[contains(@value,'Salva')]
${btn_Submit_CZ}    //button[contains(.,'Odeslat')]

#Add new location

${addnewlocation}    //i[contains(@class,'fas fa-plus-circle fa-2x')]
${newlocationtitle}    columns[title]
${newlocationaddress}    columns[address_1]
${newlocationZip}    columns[zip]
${newlocationcity}    columns[city]
${newlocationphone}    columns[phone]
${newlocationchooseproduct1}    (//button[contains(.,'Choose product')])[1]
${newlocationchooseproduct2}    (//button[contains(.,'Choose product')])[2]

#shop address
${newlocationshoptitle_EN}    localized[nl][title]
${newlocationshopaddress1_EN}    localized[nl][address_1]
${newlocationshopzip_EN}    localized[nl][zip]
${newlocationshopcity_EN}    localized[nl][city]
${newlocationshopregion_EN}    localized[nl][region]
${newlocationshopcountry_EN}    localized[nl][country]
${newlocationemailorders}    columns[emailOrders]
${newlocationphoneorders}    columns[phoneOrders]
${newlocationphone2}    columns[telephone_2]

${newlocationshoptitle_CZ}    localized[cz][title]
${newlocationshopaddress1_CZ}    localized[cz][address_1]
${newlocationshopzip_CZ}    localized[cz][zip]
${newlocationshopcity_CZ}    localized[cz][city]
${newlocationshopregion_CZ}    localized[cz][region]
${newlocationshopcountry_CZ}    localized[cz][country]

${newlocationshoptitle_RO}    localized[ro][title]
${newlocationshopaddress1_RO}    localized[ro][address_1]
${newlocationshopzip_RO}    localized[ro][zip]
${newlocationshopcity_RO}    localized[ro][city]
${newlocationshopregion_RO}    localized[ro][region]
${newlocationshopcountry_RO}    localized[ro][country]



${enablenotificationbyphone}    columns[notifications_phone]
${enablenotificationbyemail}    columns[notifications_email]

${saveShopAddress}    (//button[@type='submit'])[1]


${viewshop}    (//a[contains(@class,'btn btn-template')])[3]


#products
${products}    //a[contains(@data-smallstep,'2')]
${unchooseproduct1}    (//span[contains(@class,'switchery switchery-small')])[1]
${saveproducts}    (//button[@type='submit'])[2]

#Opening Hours
${OpeningHours}    //a[@data-smallstep='4']

${saveOpeninginformation}    (//button[@type='submit'])[3]

#Pickup
${pickup}    //a[@data-smallstep='5']
${setpickupactive}    acceptance_methods[pickup][active]
${pickuppreparationtime}    acceptance_methods[pickup][preparation_time]
${pickupfee}    acceptance_methods[pickup][fee]

# ${MondayPickupOpening}    pickupTimes[1][start]    
# ${MondayPickupClosing}    pickupTimes[1][end]
# ${pickupbreaktime - from}    pickupBreakTimes[1][start]
# ${pickupbreaktime - To}    pickupBreakTimes[1][end]
${pickupapplytoall}    (//button[@type='button'])[10]

${setpickuponlinepayment}    id=acceptance-methods-pickup-payment-Online
${setpickupcashpayment}    id=acceptance-methods-pickup-payment-Cash
${setpickupcardpayment}    id=acceptance-methods-pickup-payment-Card
${savepickupinformation}    (//button[@type='submit'])[4]

#Delivery
${delivery}    //a[@data-smallstep='6']
${setdeliveryactive}    acceptance_methods[deliver][active]
${deliveryprice}    acceptance_methods[deliver][price]
${minimumprice_for_delivery}    acceptance_methods[deliver][minimum]
${deliveryrange}    acceptance-methods-deliver-range
${deliveryfreeabove}    acceptance_methods[deliver][free_above]
${deliverypreparationtime}    acceptance_methods[deliver][preparation_time]
${deliveryhandlingfee}    acceptance_methods[deliver][fee]

# ${Mondaydelivery - from}    deliveryTimes[1][start]
# ${Mondaydelivery - to}    deliveryTimes[1][end]
# ${deliverybreaktime - from}    deliveryBreakTimes[1][start]
# ${deliverybreaktime - to}    deliveryBreakTimes[1][end]

${deliveryapplytoall}    (//button[@type='button'])[18]

${setdeliveryonlinepayment}   id=acceptance-methods-deliver-payment-Online
${setdeliverycashpayment}    id=acceptance-methods-deliver-payment-Cash
${setdeliverycardpayment}    id=acceptance-methods-deliver-payment-Card
${savedeliveryinformation}     (//button[@type='submit'])[5]


#ShopPageInformation

${shoppageinformation}    //a[contains(@data-smallstep,'7')]
${locationtitle}    localized[nl][text]
${saveshoppageinformation}    (//button[@type='submit'])[6]
${websitecolumn}     columns[website]


${Mypage}    //a[contains(@class,'btn btn-default')]

${btn_submit}    //button[@type='submit'][contains(.,'Save')]
${btn_Save}   //button[@type='submit'] 
${btn_inputsubmit}    //input[@type='submit']

#My Settings
${Settings}    (//a[contains(@class,'list-group-item ')])[6]

#My Orders
${MyOrders}    (//a[contains(@class,'list-group-item ')])[8]

${Acceptorder}    (//a[contains(@role,'button')])[4]
${viewOrder}    //a[contains(@class,'btn btn-template-inverse')]  
${Declineorder}    (//a[contains(@role,'button')])[5]
${orderstatus}    orderStatus
${orderstatuscomment}    status_comment
${OpenOrder}   (//span[contains(.,'new')])[1]
${CancelOrder}    cancelled
${Preparing}    preparing
${Readyfordelivery}    readyForDelivery
${Readyforpickup}    readyForPickup
${Delivered}    Delivered
${Pickedup}    pickedUp
${LabelRefund}    refunded
${RefundStatus}       refunded 
${RefundOrderButton}     refundOrderButton
${Refundamount}     partial_price
${refund_comment}    refund_comment
${Partialrefundcomment}    refund_comment
${proceedbutton}    //button[contains(@type,'submit')]
${Input REFUND}    //input[contains(@class,'swal2-input')]
${RefundButton}    //button[@type='button'][contains(.,'Refund')]


${paymentstatus}    lastStatus
${PaidStatus}    paid
${btn_OrderStatusSubmit}    (//button[contains(.,'Submit')])[1]
${btn_PaymentStatusSubmit}    //button[@onclick='setOrderLastStatus(this);']
${Cancellation_StatusComment}    Automated order cancellation 
${OrderFullfilment_StatusComment}    Automated Order fulfil

${saveorderstatus}    //button[contains(@onclick,'setOrderStatus(this);')]
${savepaymentstatus}    //button[contains(@onclick,'setOrderLastStatus(this);')]

#Team
${Myteam}    (//a[contains(@class,'list-group-item ')])[6]
${Addmanager}    //i[contains(@class,'fas fa-plus-circle fa-2x')]
${managerfirstname}    firstname
${managerlastname}    lastname
${manageremail}    email
${location1checkbox}    (//input[contains(@type,'checkbox')])[1]
${location2checkbox}    (//input[contains(@type,'checkbox')])[2]
${btn_SaveManager}     //button[contains(@class,'btn btn-block btn-template')]

#Plan

${viewplans}    (//a[contains(@class,'btn btn-template')])[3]
${chooseplan}    //div[contains(@onclick,'supplier.showPlanCheckout(this)')]
${Accept T&C}    acceptTermsAndConditions
${checkout}    //button[contains(.,'Checkout')]

#AccountSettings
${accountsettings}    //a[contains(.,'Accoutn settings')]
${accountoptions}    //a[contains(.,'buttons.AccountOptions')]


#My Page
#${MyPage}        (//a[contains(@class,'list-group-item')])[9]
${ShowmoreInfo}    (//a[contains(@role,'button')])[2]


#Account option
${AccountOption}    //i[contains(@class,'fas fa-check-double fa-fw')]

#CUSTOMER SITE

${BapachoLOGO}    //img[@src='/img/original/Bapacho-white.svg']
${carticon}    //a[@class='toCartBtn']

${FBLoginButton}    //a[contains(text(),'Login using Facebook')]
${Login_Button}    (//i[contains(@class,'fas fa-user')])[1] 
${LoginSubmit_Button}    //button[contains(@class,'btn btn-block btn-success')]
${forgotpassword}    (//a[contains(@role,'button')])[4]
${newpassword}    name=password
${newpasswordcheck}    name=password_chk

#Facebook_Login
${Login_using_Facebook}    //a[contains(@class,'btn btn-info btn-lg btn-block')]
${FBemailid}    //input[@id='email']
${FBpassword}    //input[@id='pass']
${FBSubmit}    //button[@id='loginbutton']
${acceptcookieslabel}    Accept cookies from Facebook on this browser?
${fbcookiesaccept}    //*[@id="u_0_g"]  

#Create_Account
${CreateAccount_Button}    //button[@onclick="openCleanAjaxModal('/pages/modals/ajax/createAccount.php')"]
${emailid}    //input[@id='name']
${Registerpassword}    (//input[@id='name'])[2]
${firstname}    //input[@id='firstname'] 
${lastname}    //input[@id='lastname'] 
${inputpassword}      //input[@id='password']
${inputpasswordcheck}     password_chk
${CreateAccount_SubmitButton}    //button[@onclick="$('#loginForm').submit()"]

${ForgotPasswordMailLink_EN}    //a[contains(text(),'https://staging.bapacho.com/nl/reset-password/cust')] 
${ForgotPasswordMailLink_NL}     //a[contains(text(),'https://staging.bapacho.nl/nl/reset-password/cust')]
${ForgotPasswordMailLink_IT}     //a[contains(text(),'https://staging.bapacho.it/it/reset-password/cust')]
${ForgotPasswordMailLink_CZ}    //a[contains(text(),'https://staging.bapacho.cz/cz/reset-password/cust')]
${ForgotPasswordMailLink_DE}    //a[contains(text(),'https://staging.bapacho.de/de/reset-password/cust')]

#Home Page

${homelocationtitle}    //input[@id='homeLocationTitle']
${getcurrentlocationicon}    //i[contains(@class,'fas fa-lg fa-map-marker-alt')]
${serachusinglocation}    (//span[contains(@class,'hidden-xs')])[2]

${Appicon_playstore}    (//a[contains(@target,'_blank')])[2]
${Appicon_Appstore}    (//a[contains(@target,'_blank')])[1]

${btn_Bakeries_EN}    //a[contains(text(),'Bakeries')] 
${btn_Bakeries_IT}    //a[contains(text(),'Bakeries')] 
${btn_Bakeries_NL}    //a[contains(.,'Winkels')]
${btn_Bakeries_CZ}    //a[@data-slug='pekarstvi']
${btn_Bakeries_GR}    //a[@data-slug='bakeries']
${btn_Bakeries_DE}    //a[contains(@data-slug,'backereien')]
${btn_Bakeries_ES}    //a[@data-slug='panaderias']
${btn_Bakeries_RO}    //a[contains(.,'Magazine')]
${btn_Bakeries_PT}    //a[contains(.,'Lojas')]
#${btn_Bakeries_PL}

${favhearticon}    //i[@class='far fa-heart'] 
${guestclickfav}    //i[contains(@class,'far fa-heart fa-2x')]
${viewfavorites}    (//i[contains(@class,'far fa-heart text-muted')])[1]
${search_button}    (//span[contains(@class,'hidden-xs')])[2]
${btn_MyAccount}    (//span[contains(@class,'hidden-xs')])[1]

${Open your shop}    (//a[@role='button'])[3]
${company}    company
${name}    name
${phone}    phone
${email}    //input[contains(@name,'email')]
${comments}    comments
    

#Account
${submitaccountdetails}    (//button[contains(@type,'button')])[2]
${Fav_tab}    (//a[contains(@class,'list-group-item ')])[2]
${view fav}    (//div[contains(@class,'info')])[1]
${myorder_tab}    (//a[contains(@class,'list-group-item ')])[5]
${Managermyorder_tab}    //i[contains(@class,'fas fa-euro-sign fa-fw')]
${view myorder}    //a[contains(@class,'btn btn-template-inverse')]
${download_orderconfirmation}    //i[contains(@class,'far fa-file-pdf fa-fw')]
${repeatorder}    //button[contains(@onclick,'repeatOrder();')]
${logout}    //a[@href='/logout.php']

${Searchbakeryinputfield}    //input[contains(@id,'keyword')]
${Clearsearchbakeryfield}    //button[contains(@onclick,'clearSearchByKeyword();')]
${changelocation_in_search}    user-address
${filterbycategory_1}    (//img[contains(@src,'120x70.jpg')])[4]
${filterbycategory_2}    (//img[contains(@src,'120x70.jpg')])[7]
${filterbycategory_3}     (//img[contains(@src,'120x70.jpg')])[5]
${Range}    //div[contains(@id,'slider-range')]
${pickupcheckbox}    //input[@value='pickup']
${deliverycheckbox}    //input[@value='deliver']
${nowopencheckbox}    //input[@name='nowOpen']
${noworderonline}    //input[@name='orderOnline']

${choosebakery_multiplefilter}    (//a[contains(@class,'quickAddToCart')])[1]
${choosebakery}    (//div[@class='text-success'])[1]


#Bakery display Page

${clickbakersphonenumber}    (//a[contains(@role,'button')])[3]
${filterproductbycategory}    (//a[contains(@class,'supplierCategoriesFilter ')])[2]
${i}    (//div[contains(@class,'title')])[3]
${Addtocart +}    (//i[@class='fas fa-plus fa-fw'])
${Addtocartproductlevel}    //button[@onclick='addToCart(this)']
${btn_Close}    (//button[contains(@type,'button')])[5]
${btn_Checkout}    //button[@id='toCheckoutBtn']
${closeloginpopup}    //button[@aria-label='Close']


#Cart

${+}    //div[@id='cartSummaryBody']/div[2]/table/tbody/tr/td[2]/div[4]/i
${-}    //div[@id="cartSummaryBody"]/div[2]/table/tbody/tr/td[2]/div[3]/i
${inputproductprice}    //input[contains(@type,'number')]
${deleteproduct_in_cart}    //i[contains(@class,'fas fa-trash fa-lgf fa-fw text-lightmuted')]

#Checkout Page

${inputproductpricecheckout}    (//div[contains(@class,'updateQButton')])[3]
${orderacceptance}    orderAcceptance
${ChooseDeliver}    //input[contains(@value,'deliver')]
${AboutUs_EN}    //a[contains(text(),'About us')]     
#${T&C_EN}    //a[contains(text(),'Terms and conditions')]  
#${T&C_CZ}    (//a[contains(@target,'_blank')])[1] 
${T&C_MerchantOnboarding}    (//a[contains(@target,'_blank')])[1] 

${T$C Checkbox}    //input[contains(@name,'terms')]
${PrivacyStatement_EN}    //a[contains(text(),'Privacy statement')]
${Checkout_LoginButton}    //button[contains(@class,'btn btn-white')]
${clicklogin_in_checkout}    //input[contains(@type,'tel')] 
${fill_in_email}    email

${fill_in_date}    //select[@id='date']
${fill_in_time}    //select[@id='time']
${fill_in_firstname}    //input[@id='firstname']
${fill_in_lastname}    //input[@id='lastname']
#${fill_in_email}    //input[@id='email']
${fill_in_address}    name=address
${fill_in_postal}    name=postal
${fill_in_city}    name=city
${fill_in_phone}    //input[@id='phone']

${T&C link}    (//a[contains(@target,'_blank')])[1]
${paymentmethod}    payment_method
${paymentmethod1}    payment_method1
${paymentmethod2}    payment_method2
${payment_method_cash}    payment_method_cash
${payment_method_card}    payment_method_card
${payment_method_online}    payment_method0

${T&C}    //input[@id='terms']
${submitbutton}    //button[contains(@type,'submit')]
${OK}    //button[contains(.,'OK')]
${clickback}    //span[contains(text(),'Back')]

${label_Order incomplete}    Order incomplete
${addtocalender}    (//a[contains(@target,'blank')])[1]

#IDEAL

${idealtab}    //button[contains(@id,'ideal-tab')]
${selectideal}    //select[contains(@id,'idealBank')]
${billingname}    name=billingName
${pay}    //div[contains(@class,'SubmitButton-IconContainer')]
${authorizetestpayment}    //button[contains(.,'Authorize Test Payment')]
${cardnumber}    name=cardNumber
${cardExpiry}    name=cardExpiry
${cvc}    name=cardCvc
${billingcountry}    //select[@id='billingCountry']
    
${savecard}    //div[contains(@class,'SubmitButton-CheckmarkIcon')]

#Footer

${support}    (//a[contains(@role,'button')])[2]
${supportquestion}    //textarea[contains(@name,'comments')]
${submitsupportform}    //button[contains(@class,'btn btn-block btn-info-dark')]
${loginmerchantfooter}    (//a[@role='button'])[4]
${FAQ}    //a[contains(text(),'FAQ')]
${Supportfooter}    (//a[contains(@role,'button')])[5]
${support-fill in name}    //input[contains(@name,'name')]
${support-fill in phone}    //input[contains(@name,'phone')]
${support-fill in email}    //input[contains(@name,'email')]
${support-fill in comments}    //textarea[contains(@name,'comments')]

#Blog

${blog}    //a[contains(.,'Blog')]
${click a blogpost}    (//img[contains(@class,'media-object')])[1]
${click a blogpost2}    (//h4[contains(@class,'media-heading')])[2]

${bapachofb}    (//a[contains(@class,'socialLink')])[1]
${bapachoinstagram}    (//a[contains(@class,'socialLink')])[2]

#GMAIL

${inputgmailid}    identifierId
${gmailid_submit}    //div[contains(@class,'VfPpkd-RLmnJb')]
${inputgmailpassword}    //input[contains(@type,'password')]
${gmailpwd_submit}    (//div[contains(@class,'VfPpkd-RLmnJb')])[1]

${choosemail_EN}    //tr[contains(@id,':27')]
${choosemail_CZ}    //tr[contains(@id,':1u')] 
${choosemail_RO}    (//tr[contains(@role,'row')])[1]


${scrollup}      window.scrollTo(document.body.scrollHeight,0)
${scrolldown}    window.scrollTo(0, document.body.scrollHeight)



#ARCHIEVE

# ${Step1_Nextbutton_NL}    (//button[contains(.,'Next')])[1] 
# ${Step1_Nextbutton_EN}    (//button[contains(.,'Next')])[1] 
# ${Step1_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[1]

# ${Step2_Nextbutton_NL}    (//button[contains(.,'Next')])[2] 
# ${Step2_Nextbutton_EN}    (//button[contains(.,'Next')])[2] 
# ${Step2_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[2]

# ${Step3_Nextbutton_NL}    (//button[contains(.,'Next')])[3]
# ${Step3_Nextbutton_EN}    (//button[contains(.,'Next')])[3]  
# ${Step3_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[3]

# ${Step4_Nextbutton_NL}    (//button[contains(.,'Next')])[4] 
# ${Step4_Nextbutton_EN}    (//button[contains(.,'Next')])[4] 
# ${Step4_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[4]

# ${Step5_Nextbutton_NL}    (//button[contains(.,'Next')])[5] 
# ${Step5_Nextbutton_EN}    (//button[contains(.,'Next')])[5] 
# ${Step5_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[5]

# ${Step6_Nextbutton_NL}    (//button[contains(.,'Next')])[6] 
# ${Step6_Nextbutton_EN}    (//button[contains(.,'Next')])[6] 
# ${Step6_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[6]

# ${Step7_Nextbutton_NL}    (//button[contains(.,'Next')])[7] 
# ${Step7_Nextbutton_EN}    (//button[contains(.,'Next')])[7]
# ${Step7_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[7]
    
# ${Step8_Nextbutton_NL}    (//button[contains(.,'Next')])[8] 
# ${Step8_Nextbutton_EN}    (//button[contains(.,'Next')])[8] 
# ${Step8_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[8]

# ${Step9_Nextbutton_NL}    (//button[contains(.,'Next')])[9] 
# ${Step9_Nextbutton_EN}    (//button[contains(.,'Next')])[9] 
# ${Step9_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[9]

# ${Step10_Nextbutton_NL}    (//button[contains(.,'Next')])[10] 
# ${Step10_Nextbutton_EN}    (//button[contains(.,'Next')])[10] 
# ${Step10_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[10]


# ${LoginasMerchant_NL}        (//a[contains(.,'Login as Merchant')])[1] 
# ${LoginasMerchant_EN}        (//a[contains(.,'Login as Merchant')])[1] 
# ${LoginasMerchant_IT}        (//a[contains(.,'Accedi come negoziante')])[1]

# ${btn_Applytoalldeliverytime_NL}        (//button[contains(.,'Apply to all')])[8] 
# ${btn_Applytoalldeliverytime_EN}        (//button[contains(.,'Apply to all')])[8] 
# ${btn_Applytoalldeliverytime_IT}     (//button[contains(.,'Applica a tutto')])[8]

# ${btn_Skip_NL}    //button[contains(.,'Skip')]
# ${btn_Skip_EN}    //button[contains(.,'Skip')]
# ${btn_Skip_IT}     //button[contains(.,'Salta')]

# ${MyproductCategories_NL}    //a[contains(.,'My product categories')]
# ${MyproductCategories_EN}    //a[contains(.,'My product categories')]
# ${MyproductCategories_IT}    //a[contains(.,'Le mie categorie di prodotti')]

# ${AddCategory_NL}    //div[@class='btn btn-default'][contains(.,'Add category')]
# ${AddCategory_EN}    //div[@class='btn btn-default'][contains(.,'Add category')]
# ${AddCategory_IT}    (//div[contains(.,'Aggiungi categoria')])[5]



# ${MyProduct_NL}    //a[contains(.,'My products')]
# ${MyProduct_EN}    //a[contains(.,'My products')]
# ${MyProduct_IT}    //a[contains(.,'I miei prodotti')]

# ${MyAccount_EN}    //li[contains(.,'My Account')] 
# ${MyAccount_NL}    //span[contains(.,'Mijn rekening')]
# ${MyAccount_IT}    //span[contains(.,'Il mio profilo')]
# ${MyAccount_GR}    (//span[contains(@class,'hidden-xs')])[1]
# ${MyAccount_DE}    (//span[contains(@class,'hidden-xs')])[1]
# ${MyAccount_ES}    (//span[contains(@class,'hidden-xs')])[1]
# ${MyAccount_RO}    (//span[contains(@class,'hidden-xs')])[1]
# ${MyAccount_PT}    (//span[contains(@class,'hidden-xs')])[1]
# #${MyAccount_PL}

# ${MyLocations_NL}    //a[contains(.,'My Locations')] 
# ${MyLocations_EN}    //a[contains(.,'My Locations')] 
# ${MyLocations_IT}    //a[contains(.,'Le mie posizioni')]

# ${Settings_NL}    //a[contains(.,'Settings')]
# ${Settings_EN}    //a[contains(.,'Settings')]
# ${Settings_IT}    (//a[contains(.,'Impostazioni')])[1]

# ${MyOrders_NL}     //a[contains(.,'My orders')]
# ${MyOrders_EN}     //a[contains(.,'My orders')]
# ${MyOrders_IT}    //a[contains(.,'I miei ordini')]

# ${btn_Checkout_EN}    //button[contains(.,'Checkout')]
# ${btn_Checkout_NL}    //button[contains(.,'Checkout')]
# ${btn_Checkout_IT}    //button[contains(.,'Check-out')]

# ${btn_Close_EN}    (//button[contains(@type,'button')])[2] 
# ${btn_Close_IT}    //button[contains(.,'Chiudi')]

# ${ChooseDeliver_EN}    //label[contains(.,'Deliver')] 
# ${ChooseDeliver_IT}    //label[contains(.,'Consegna a domicilio')]

# ${OpenOrder_NL}    (//span[contains(.,'open')])[1]
# ${OpenOrder_EN}    (//span[contains(.,'orderLastStatus.open')])[1]
# ${OpenOrder_IT}    (//span[contains(.,'consegnare')])[1]

# ${ShowmoreInfo_NL}    //a[contains(.,'Show more information')]
# ${ShowmoreInfo_EN}    //a[contains(.,'Show more information')]
# ${ShowmoreInfo_IT}    //a[contains(.,'Mostra ulteriori informazioni')]

# ${btn_OrderstatusSubmit_NL}    //button[contains(.,'Submit')]
# ${btn_OrderstatusSubmit_EN}    //button[contains(.,'Submit')]
# ${btn_OrderstatusSubmit_IT}    //button[contains(.,'Invia')]

# ${btn_Applytoall_NL}    (//button[contains(.,'Apply to all')])[1] 
# ${btn_Applytoall_EN}    (//button[contains(.,'Apply to all')])[1]
# ${btn_Applytoall_IT}    (//button[contains(.,'Applica a tutto')])[1]

# ${CancelOrder_EN}    orderStatus.cancelled
# ${CancelOrder_IT}    orderStatus.cancelled