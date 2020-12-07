***Variables***

${Language}     EN


#Stagings URL
${Bapacho_URL_NL}     https://staging.bapacho.nl/en/
${Bapacho_URL_EN}    https://bapacho:bapacho@staging.bapacho.com/
${Bapacho_URL_IT}    https://bapacho:bapacho@staging.bapacho.it/

#CMS URL
${CMS_URL_NL}    https://staging.bapacho.nl/admin
${CMS_URL_EN}    https://bapacho:bapacho@staging.bapacho.com/admin
${CMS_URL_IT}    https://bapacho:bapacho@staging.bapacho.it/admin

${SalePortal_NL}    https://bapacho:bapacho@sales.bapacho.com/nl/
${SalePortal_IT}     https://bapacho:bapacho@sales.bapacho.it

${activationmail_NL}      //a[contains(.,'{activeAccountURL}')]
${activationmail_EN}     //a[contains(.,'https://staging.bapacho.com/activateShop.php?')]
${activationmail_IT}     //a[contains(.,'https://staging.bapacho.it/activateShop.php?')]

#CustomerLogin 
${Login_Button}    (//i[contains(@class,'fas fa-user')])[1] 
@{LoginCredentials}    testemailcustomer001@gmail.com    bapachocustomerpwd
${Submit_Login}    //button[@onclick="$('#loginForm').submit()"]  

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
@{RegisterCredentials}    testemailcustomer001@gmail.com    Nisha's Automated Customer    001    bapachocustomerpwd    bapachocustomerpwd


#MerchantOnboarding
@{MerchantOnboardingCredentials}    automatedmerchant001@yopmail.com    bapachomerchantpwd    +31612809787

${MerchantName without payment}    Nisha's Automated Bakery003
@{Merchant_Without_OnlinePayment_Credentials}     automatedmerchant003@yopmail.com    bapachomerchantpwd    +31612809787

#Merchant with Online payment
${MerchantName_NL}    Nisha's Bakery001
${MerchantName_EN}    Nisha's Bakery001
${MerchanyName_IT}       testTest Bakery 002 	

@{Merchant with Online payment Credentials}     bapachotestmerchant001@gmail.com    bapachomerchantpwd

#Account_Number
${NL_Account_Number}    NL39RABO0300065264

#SalesAgentLogin
@{SalesAgentCredentials}    nisha@inqadigital.com    Jishannaresh29

#Product Category
${ProductCategoryName}    Beverages

#Add Product 
${Productname}     Apple Juice
${Productingredients}    Lemon,mint,salt,sugar,soda
${ProductUnit}    20ml
${PricewithVAT}    10.00



#Merchant Onboarding button
${Step1_Nextbutton_NL}    (//button[contains(.,'Next')])[1] 
${Step1_Nextbutton_EN}    (//button[contains(.,'Next')])[1] 
${Step1_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[1]


${Step2_Nextbutton_NL}    (//button[contains(.,'Next')])[2] 
${Step2_Nextbutton_EN}    (//button[contains(.,'Next')])[2] 
${Step2_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[2]

${Step3_Nextbutton_NL}    (//button[contains(.,'Next')])[3]
${Step3_Nextbutton_EN}    (//button[contains(.,'Next')])[3]  
${Step3_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[3]

${Step4_Nextbutton_NL}    (//button[contains(.,'Next')])[4] 
${Step4_Nextbutton_EN}    (//button[contains(.,'Next')])[4] 
${Step4_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[4]

${Step5_Nextbutton_NL}    (//button[contains(.,'Next')])[5] 
${Step5_Nextbutton_EN}    (//button[contains(.,'Next')])[5] 
${Step5_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[5]

${Step6_Nextbutton_NL}    (//button[contains(.,'Next')])[6] 
${Step6_Nextbutton_EN}    (//button[contains(.,'Next')])[6] 
${Step6_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[6]

${Step7_Nextbutton_NL}    (//button[contains(.,'Next')])[7] 
${Step7_Nextbutton_EN}    (//button[contains(.,'Next')])[7]
${Step7_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[7]

${Step8_Nextbutton_NL}    (//button[contains(.,'Next')])[8] 
${Step8_Nextbutton_EN}    (//button[contains(.,'Next')])[8] 
${Step8_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[8]

${Step9_Nextbutton_NL}    (//button[contains(.,'Next')])[9] 
${Step9_Nextbutton_EN}    (//button[contains(.,'Next')])[9] 
${Step9_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[9]

${Step10_Nextbutton_NL}    (//button[contains(.,'Next')])[10] 
${Step10_Nextbutton_EN}    (//button[contains(.,'Next')])[10] 
${Step10_Nextbutton_IT}    (//button[contains(.,'Prossimo')])[10]


#Step 1 

${LoginasMerchant_NL}        (//a[contains(.,'Login as Merchant')])[1] 
${LoginasMerchant_EN}        (//a[contains(.,'Login as Merchant')])[1] 
${LoginasMerchant_IT}        (//a[contains(.,'Accedi come negoziante')])[1]

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

${btn_Applytoall_NL}    (//button[contains(.,'Apply to all')])[1] 
${btn_Applytoall_EN}    (//button[contains(.,'Apply to all')])[1]
${btn_Applytoall_IT}    (//button[contains(.,'Applica a tutto')])[1]

#Step 3
${btn_Location_NL}     locationColumns_local[en][text]
${btn_Location_EN}     locationColumns_local[nl][text]
${btn_Location_IT}     locationColumns_local[it][text]

#Step 4
${category_EN}    Pies
${category_NL}    Snacks
${category_IT}    Pane

${Chooseproduct1_EN}     (//button[contains(.,'Choose product')])[4]
${Chooseproduct1_NL}     (//button[contains(.,'Choose product')])[4]
${Chooseproduct1_IT}    (//button[@onclick='setProductActive(this);'])[8]

${Chooseproduct2_EN}   (//button[contains(.,'Choose product')])[9] 
${Chooseproduct2_NL}   (//button[contains(.,'Choose product')])[6] 
${Chooseproduct2_IT}    (//button[@onclick='setProductActive(this);'])[9]

${btn_Applytoalldeliverytime_NL}        (//button[contains(.,'Apply to all')])[8] 
${btn_Applytoalldeliverytime_EN}        (//button[contains(.,'Apply to all')])[8] 
${btn_Applytoalldeliverytime_IT}     (//button[contains(.,'Applica a tutto')])[8]

${btn_Skip_NL}    //button[contains(.,'Skip')]
${btn_Skip_EN}    //button[contains(.,'Skip')]
${btn_Skip_IT}     //button[contains(.,'Salta')]

${MyproductCategories_NL}    //a[contains(.,'My product categories')]
${MyproductCategories_EN}    //a[contains(.,'My product categories')]
${MyproductCategories_IT}    //a[contains(.,'Le mie categorie di prodotti')]

${AddCategory_NL}    //div[@class='btn btn-default'][contains(.,'Add category')]
${AddCategory_EN}    //div[@class='btn btn-default'][contains(.,'Add category')]
${AddCategory_IT}    (//div[contains(.,'Aggiungi categoria')])[5]

${btn_SubmitCategory_NL}    //button[contains(.,'Submit')] 
${btn_SubmitCategory_EN}    //button[contains(.,'Submit')] 
${btn_SubmitCategory_IT}    //button[contains(.,'Invia')]

${MyProduct_NL}    //a[contains(.,'My products')]
${MyProduct_EN}    //a[contains(.,'My products')]
${MyProduct_IT}    //a[contains(.,'I miei prodotti')]

${Addproduct_NL}    (//a[contains(.,'Add product')])[2]
${Addproduct_EN}    (//a[contains(.,'Add product')])[3]  
${Addproduct_IT}    (//a[contains(.,'Aggiungi prodotto')])[3]


${ProductTitle_EN}     name=columns_local[nl][title] 
${ProductTitle_IT}     name=columns_local[it][title] 
${ProductTitle_NL}     name=columns_local[en][title] 

${Product_Subtitle_NL}   name=columns_local[en][subtitle]   
${Product_Subtitle_IT}   name=columns_local[it][subtitle]
${Product_Subtitle_EN}   name=columns_local[nl][subtitle]  
  
${Product_Description_NL}     name=columns_local[en][text]  
${Product_Description_IT}     name=columns_local[it][text]  
${Product_Description_EN}     name=columns_local[nl][text]  
   
${Product_Ingredients_NL}  name=columns_local[en][ingredientsText]   
${Product_Ingredients_IT}  name=columns_local[it][ingredientsText] 
${Product_Ingredients_EN}  name=columns_local[nl][ingredientsText] 

${Product_unit_NL}  name=columns_local[en][unit]
${Product_unit_IT}  name=columns_local[it][unit]
${Product_unit_EN}  name=columns_local[nl][unit]

  
${Yes_NL}    Yes

${MyLocations_NL}    //a[contains(.,'My Locations')] 
${MyLocations_EN}    //a[contains(.,'My Locations')] 
${MyLocations_IT}    //a[contains(.,'Le mie posizioni')]

${btn_Submit_NL}    //input[contains(@type,'submit')] 
${btn_Submit_EN}    //input[contains(@type,'submit')] 
${btn_Submit_IT}    //input[contains(@value,'Salva')]

${Settings_NL}    //a[contains(.,'Settings')]
${Settings_EN}    //a[contains(.,'Settings')]
${Settings_IT}    (//a[contains(.,'Impostazioni')])[1]

${MyOrders_NL}     //a[contains(.,'My orders')]
${MyOrders_EN}     //a[contains(.,'My orders')]
${MyOrders_IT}    //a[contains(.,'I miei ordini')]

${OpenOrder_EN}    //span[contains(.,'Open')]
${OpenOrder_NL}    (//span[contains(.,'oppakken')])[1]
${OpenOrder_IT}    (//span[contains(.,'consegnare')])[1]

${ShowmoreInfo_NL}    //a[contains(.,'Show more information')]
${ShowmoreInfo_EN}    //a[contains(.,'Show more information')]
${ShowmoreInfo_IT}    //a[contains(.,'Mostra ulteriori informazioni')]

${btn_OrderstatusSubmit_NL}    //button[contains(.,'Submit')]
${btn_OrderstatusSubmit_EN}    //button[contains(.,'Submit')]
${btn_OrderstatusSubmit_IT}    //button[contains(.,'Invia')]


#CustomerSite Buttons

${btn_Bakeries_EN}    //a[contains(text(),'Bakeries')] 
${btn_Bakeries_IT}    //a[contains(text(),'Bakeries')] 
${btn_Bakeries_NL}    //a[contains(.,'Shops')] 

${MyAccount_NL}    //li[contains(.,'My Account')] 
${MyAccount_EN}    //li[contains(.,'My Account')] 
${MyAccount_IT}    //span[contains(.,'Il mio profilo')]

${btn_Checkout_NL}    //button[contains(.,'Checkout')]
${btn_Checkout_EN}    //button[contains(.,'Checkout')]
${btn_Checkout_IT}    //button[contains(.,'Check-out')]

@{GuestUser_NL}    Eswari Nisha    Balakrishnan    eswarinisha.b@gmail.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
@{GuestUser_EN}    Eswari Nisha    Balakrishnan    eswarinisha.b@gmail.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
@{GuestUser_IT}    Eswari Nisha    Balakrishnan    eswarinisha.b@gmail.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
   
${btn_Close_NL}    (//button[contains(@type,'button')])[2]
${btn_Close_EN}    (//button[contains(@type,'button')])[2] 
${btn_Close_IT}    //button[contains(.,'Chiudi')]

${ChooseDeliver_NL}    //label[contains(.,'Deliver')] 
${ChooseDeliver_EN}    //label[contains(.,'Deliver')] 
${ChooseDeliver_IT}    //label[contains(.,'Consegna a domicilio')]

${Change_CurrentLoction_BDP_NL}    Haarlem
${Change_CurrentLoction_BDP_EN}    Utretch
${Change_CurrentLoction_BDP_IT}    Roma

${Choose_Change_CurrentLoction_BDP_NL}     //a[contains(.,'Utrecht, Nederland')]
${Choose_Change_CurrentLoction_BDP_EN}     //a[contains(.,'Utrecht, Nederland')]
${Choose_Change_CurrentLoction_BDP_IT}    //a[contains(.,'Roma, RM, Italia')]