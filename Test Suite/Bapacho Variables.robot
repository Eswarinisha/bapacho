***Variables***

${Language}     CZ

${Chrome}    chrome
${Firefox}    firefox
${Edge}    edge

#Stagings URL
${Bapacho_URL_EN}    https://bapacho:bapacho@staging.bapacho.com/
${Bapacho_URL_NL}     https://staging.bapacho.nl/en/
${Bapacho_URL_IT}    https://bapacho:bapacho@staging.bapacho.it/it
${Bapacho_URL_CZ}    https://bapacho:bapacho@staging.bapacho.cz/cz
${Bapacho_URL_GR}     https://bapacho:bapacho@staging.bapacho.gr/gr
${Bapacho_URL_DE}     https://bapacho:bapacho@staging.bapacho.de/de
${Bapacho_URL_ES}     https://bapacho:bapacho@staging.bapacho.es/es
${Bapacho_URL_RO}     https://bapacho:bapacho@staging.bapacho.ro/ro
${Bapacho_URL_PT}     https://bapacho:bapacho@staging.bapacho.pt/pt
${Bapacho_URL_PL}     https://bapacho:bapacho@staging.bapacho.pl/pl

#CMS URL
${CMS_URL_EN}    https://bapacho:bapacho@staging.bapacho.com/admin
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

#Merchant activation link in Mail
${activationmail_NL}      //a[contains(.,'{activeAccountURL}')]
${activationmail_EN}     //a[contains(.,'https://staging.bapacho.com/activateShop.php?')]
${activationmail_IT}     //a[contains(.,'https://staging.bapacho.it/activateShop.php?')]
${activationmail_CZ}     //a[contains(.,'https://staging.bapacho.cz/activateShop.php?')]
${activationmail_GR}    //a[contains(.,'https://staging.bapacho.gr/activateShop.php?')]
${activationmail_DE}     //a[contains(.,'https://staging.bapacho.de/activateShop.php?')]
${activationmail_ES}     //a[contains(.,'https://staging.bapacho.es/activateShop.php?')]
${activationmail_RO}      //a[contains(.,'https://staging.bapacho.ro/activateShop.php?')]
${activationmail_PT}      //a[contains(.,'https://staging.bapacho.pt/activateShop.php?')]
${activationmail_PL}     //a[contains(.,'https://staging.bapacho.pl/activateShop.php?')]


#SalesAgentLogin
@{SalesAgentCredentials}    nisha@inqadigital.com    Jishannaresh29

#CustomerLogin 
${Login_Button}    (//i[contains(@class,'fas fa-user')])[1] 
@{LoginCredentials}    testemailcustomer001@gmail.com    bapachocustomerpwd
${Submit_Login}    //button[@onclick="$('#loginForm').submit()"]  



#MerchantOnboarding

@{MerchantAddress_EN}    Justine de Gouwerhof    Haarlem    2011GP    Netherlands
@{MerchantAddress_NL}    Justine de Gouwerhof    Haarlem    2011GP    Netherlands
@{MerchantAddress_IT}    Ruga Vecchia S.Giovanni, 603     Venezia     30125     Italy
@{MerchantAddress_CZ}    Laubova 1689/4     Vinohrady     130 00     Czechia
@{MerchantAddress_DE}    SchleiheimerStr. 96    80797    Munich    Germany
@{MerchantAddress_GR}     Karterado     Fira-Karterado     847 00      Greece


#Merchant without Online payment
${MerchantName without payment}    Nisha's Automated Bakery001
@{Merchant_Without_OnlinePayment_Credentials}     automatedmerchant001@yopmail.com    bapachomerchantpwd    +31612809787


#Merchant with Online payment
${MerchantName_NL}    Nisha's Automated Bakery004
${MerchantName_EN}    Nisha's Bakery001
${MerchantName_IT}    Test Bakery 002 
${MerchantName_CZ}    Nisha's Automated Bakery001
${MerchantName_DE}    Nisha's Automated Bakery001
@{Merchant with Online payment Credentials}     bapachotestmerchant001@gmail.com    bapachomerchantpwd    +31612809787




#Account_Number
${NL_Account_Number}    NL39RABO0300065264

#Product Category
${ProductCategoryName}    Beverages

#Add Product 
${Productname}     Apple Juice
${Productingredients}    Lemon,mint,salt,sugar,soda
${ProductUnit}    20ml
${PricewithVAT}    10.00






#Step 1 

${LoginasMerchant}     (//a[contains(@role,'button')])[5]

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

# ${btn_Applytoall_NL}    (//button[contains(.,'Apply to all')])[1] 
# ${btn_Applytoall_EN}    (//button[contains(.,'Apply to all')])[1]
# ${btn_Applytoall_IT}    (//button[contains(.,'Applica a tutto')])[1]
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

#Step 4
${category_EN}       7
${category_NL}    Snacks
${category_IT}    Pane
${category_CZ}    12

${Chooseproduct1_EN}     (//button[contains(.,'Choose product')])[4]
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

#Merchant Portal

#My Categories
${MyproductCategories}    (//a[contains(@class,'list-group-item ')])[3]

${AddCategory}    //div[contains(@onclick,'showCategoryModal(null)')]

${btn_SubmitCategory_NL}    //button[contains(.,'Submit')] 
${btn_SubmitCategory_EN}    //button[contains(.,'Submit')]
${btn_SubmitCategory_IT}    //button[contains(.,'Invia')]
${btn_SubmitCategory_CZ}    //button[contains(.,'Odeslat')]



#My Products
${MyProduct}    (//a[contains(@class,'list-group-item ')])[4]

${Addproduct}   (//a[contains(@class,'btn btn-default')])[2]

${Addzeelandiaproduct}    (//a[contains(@class,'btn btn-default')])[1]

${ProductTitle_EN}     name=columns_local[nl][title] 
${ProductTitle_IT}     name=columns_local[it][title] 
${ProductTitle_NL}     name=columns_local[en][title] 
${ProductTitle_CZ}     name=columns_local[cz][title] 
${ProductTitle_GR}     name=columns_local[gr][title] 
${ProductTitle_DE}     name=columns_local[de][title] 
${ProductTitle_ES}     name=columns_local[es][title] 
${ProductTitle_RO}     name=columns_local[ro][title] 
${ProductTitle_PT}     name=columns_local[pt][title] 
${ProductTitle_PL}     name=columns_local[pl][title] 


${Product_Subtitle_NL}   name=columns_local[en][subtitle]   
${Product_Subtitle_IT}   name=columns_local[it][subtitle]
${Product_Subtitle_EN}   name=columns_local[nl][subtitle]  
${Product_Subtitle_CZ}   name=columns_local[cz][subtitle]   
${Product_Subtitle_GR}   name=columns_local[gr][subtitle]
${Product_Subtitle_DE}   name=columns_local[de][subtitle]
${Product_Subtitle_ES}   name=columns_local[es][subtitle]   
${Product_Subtitle_RO}   name=columns_local[ro][subtitle]
${Product_Subtitle_PT}   name=columns_local[pt][subtitle]
${Product_Subtitle_PL}   name=columns_local[pl][subtitle]
  
${Product_Description_NL}     name=columns_local[en][text]  
${Product_Description_IT}     name=columns_local[it][text]  
${Product_Description_EN}     name=columns_local[nl][text]  
${Product_Description_CZ}     name=columns_local[cz][text]  
${Product_Description_GR}     name=columns_local[gr][text]  
${Product_Description_DE}     name=columns_local[de][text]  
${Product_Description_ES}     name=columns_local[es][text]  
${Product_Description_RO}     name=columns_local[ro][text]  
${Product_Description_PT}     name=columns_local[pt][text] 
${Product_Description_PL}     name=columns_local[pl][text]  

${Product_Ingredients_NL}  name=columns_local[en][ingredientsText]   
${Product_Ingredients_IT}  name=columns_local[it][ingredientsText] 
${Product_Ingredients_EN}  name=columns_local[nl][ingredientsText]
${Product_Ingredients_CZ}  name=columns_local[cz][ingredientsText]   
${Product_Ingredients_GR}  name=columns_local[gr][ingredientsText] 
${Product_Ingredients_DE}  name=columns_local[de][ingredientsText] 
${Product_Ingredients_ES}  name=columns_local[es][ingredientsText]   
${Product_Ingredients_RO}  name=columns_local[ro][ingredientsText] 
${Product_Ingredients_PT}  name=columns_local[pt][ingredientsText] 
${Product_Ingredients_PL}  name=columns_local[pl][ingredientsText] 


${Product_unit_NL}  name=columns_local[en][unit]
${Product_unit_IT}  name=columns_local[it][unit]
${Product_unit_EN}  name=columns_local[nl][unit]
${Product_unit_CZ}  name=columns_local[cz][unit]
${Product_unit_GR}  name=columns_local[gr][unit]
${Product_unit_DE}  name=columns_local[de][unit]
${Product_unit_ES}  name=columns_local[es][unit]
${Product_unit_RO}  name=columns_local[ro][unit]
${Product_unit_PT}  name=columns_local[pt][unit]
${Product_unit_PL}  name=columns_local[pl][unit]
  
${Yes_NL}    Yes

#My Location
${MyLocations}        (//a[contains(@class,'list-group-item ')])[5]

${btn_Submit_NL}    //input[contains(@type,'submit')] 
${btn_Submit_EN}    //input[contains(@type,'submit')] 
${btn_Submit_IT}    //input[contains(@value,'Salva')]
${btn_Submit_CZ}    //button[contains(.,'Odeslat')]


${btn_Save_NL}    //input[contains(@type,'submit')] 
${btn_Save_EN}    //input[contains(@type,'submit')] 
${btn_Save_IT}    //input[contains(@type,'submit')]
${btn_Save_CZ}    //input[contains(@type,'submit')]


#My Settings
${Settings}    (//a[contains(@class,'list-group-item ')])[6]


#My Orders
${MyOrders}    (//a[contains(@class,'list-group-item ')])[8]

${OpenOrder}    (//a[contains(@class,'list-group-item')])[11]

${CancelOrder}    cancelled
${Preparing}    preparing
${Readyfordelivery}    readyForDelivery
${Readyforpickup}    readyForPickup
${Delivered}    Delivered
${Pickedup}    pickedUp
${LabelRefund}    refunded
${RefundStatus}       refunded 
${PaidStatus}    paid
${btn_PaymentStatusSubmit}    //button[@onclick='setOrderLastStatus(this);']

${Cancellation_StatusComment}    Automated order cancellation 

${OrderFullfilment_StatusComment}    Automated Order fulfil

#My Page
${MyPage}        (//a[contains(@class,'list-group-item')])[9]

${ShowmoreInfo}    (//a[contains(@role,'button')])[2]

#${btn_PaymentstatusSubmit_NL}    


#CustomerSite

#Facebook_Login
${Login_using_Facebook}    //*/text()[normalize-space(.)='Login using Facebook']/parent::*
${FBemailid}    //input[@id='email']
${FBpassword}    //input[@id='pass']
@{FBCredentials}    eswarinisha.b@gmail.com    Nani@25032016
${FBSubmit}    //button[@id='loginbutton']

#Create_Account
${CreateAccount_Button}    //button[@onclick="openCleanAjaxModal('/pages/modals/ajax/createAccount.php')"]
${emailid}    //input[@id='name']
${firstname}    //input[@id='firstname'] 
${lastname}    //input[@id='lastname'] 
${inputpassword}      //input[@id='password']
${inputpasswordcheck}     name=password_chk
${CreateAccount_SubmitButton}    //button[@onclick="$('#loginForm').submit()"]
@{RegisterCredentialsold}    automatedcustomer008@yopmail.com    Nisha's Automated Customer    008    bapachocustomerpwdold    bapachocustomerpwdold
@{RegisterCredentialsnew}    automatedcustomer008@yopmail.com    Nisha's Automated Customer    008    bapachocustomerpwdnew    bapachocustomerpwdnew


@{GuestUser_EN}    Eswari Nisha    Balakrishnan    nisha@inqadigital.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
@{GuestUser_NL}    Eswari Nisha    Balakrishnan    nisha@inqadigital.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
@{GuestUser_IT}    Eswari Nisha    Balakrishnan    nisha@inqadigital.com    Ruga Vecchia S.Giovanni, 603     Venezia     30125     Italy     +31612809787
@{GuestUser_CZ}    Eswari Nisha    Balakrishnan    nisha@inqadigital.com   Laubova 1689/4     Vinohrady     130 00     Czechia     +31612809787

${ForgotPasswordMailLink_EN}    //a[contains(text(),'https://staging.bapacho.com/nl/reset-password/cust')] 
${ForgotPasswordMailLink_NL}     //a[contains(text(),'https://staging.bapacho.nl/reset-password/cust')]
${ForgotPasswordMailLink_IT}     //a[contains(text(),'https://staging.bapacho.it/reset-password/cust')]
${ForgotPasswordMailLink_CZ}    //a[contains(text(),'https://staging.bapacho.cz/reset-password/cust')]

#Home Page

${Appicon_playstore}    (//a[contains(@target,'_blank')])[2]
${Appicon_Appstore}    (//a[contains(@target,'_blank')])[1]

${Change_CurrentLoction_BDP_NL}    Haarlem
${Change_CurrentLoction_BDP_EN}    Utretch
${Change_CurrentLoction_BDP_IT}    Roma
${Change_CurrentLoction_BDP_CZ}    Prague, Czechia

${Choose_Change_CurrentLoction_BDP_NL}     //a[contains(.,'Haarlem, Netherlands')]
${Choose_Change_CurrentLoction_BDP_EN}     //a[contains(.,'Utrecht, Nederland')]
${Choose_Change_CurrentLoction_BDP_IT}    //a[contains(.,'Roma, RM, Italia')]
${Choose_Change_CurrentLoction_BDP_CZ}    //a[contains(.,'Prague, Czechia')]

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


${btn_MyAccount}    (//span[contains(@class,'hidden-xs')])[1]

#Bakery display Page

${btn_Close}    (//button[contains(@type,'button')])[2]

${btn_Checkout}    //button[@id='toCheckoutBtn']


#Checkout Page

${ChooseDeliver}    //input[contains(@value,'deliver')]

${AboutUs_EN}    //a[contains(text(),'About us')]  


${T&C_EN}    //a[contains(text(),'Terms and conditions')]  
${T&C_CZ}    //a[contains(text(),'Terms and conditions')] 
${T$C Checkbox}    //input[contains(@name,'terms')]

${PrivacyStatement_EN}    //a[contains(text(),'Privacy statement')]



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



# ${CancelOrder_EN}    orderStatus.cancelled
# ${CancelOrder_IT}    orderStatus.cancelled