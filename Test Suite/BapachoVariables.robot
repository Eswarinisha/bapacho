***Variables***
${Bapacho_URL}     https://bapacho:bapacho@staging.bapacho.com/nl/

#CustomerLogin 
${Login_Button}    //*/text()[normalize-space(.)='Login']/parent::* 
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
@{RegisterCredentials}    testemailcustomer003@yopmail.com    bapachocustomer    007    bapachocustomerpwdold    bapachocustomerpwdold


#MerchantOnboarding
@{MerchantOnboardingCredentials}    automatedmerchant003@yopmail.com    bapachomerchantpwd    +31612809787

${MerchantName without payment}    Nisha's Automated Bakery003
@{Merchant_Without_OnlinePayment_Credentials}     automatedmerchant003@yopmail.com    bapachomerchantpwd    +31612809787

#Merchant with Online payment
${MerchantName}    Nisha's Bakery001
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



