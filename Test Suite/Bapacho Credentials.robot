***Variables***

${Chrome}    chrome
${Firefox}    firefox
${Edge}    edge

#CustomerSite

@{LoginCredentials}    nisha@inqadigital.com    Nishabalki@123

@{GuestUser_EN}    Eswari Nisha    Balakrishnan    nisha@inqadigital.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
@{GuestUser_NL}    Eswari Nisha    Balakrishnan    nisha@inqadigital.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
@{GuestUser_IT}    Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com    Ruga Vecchia S.Giovanni, 603     Venezia     30125     Italy     +31612809787
@{GuestUser_CZ}    Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com   Laubova 1689/4     Vinohrady     130 00     Czechia     +31612809787
@{GuestUser_DE}     Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com    Flughafen  204     Vinohrady     60549     Frankfurt am Main     +31612809787
@{GuestUser_RO}     Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com    Calea Floreasca 111-113     Bucuresti     1455    Romania     +31612809787


@{RegisterCredentialsold}    testemailcustomer001+automated@gmail.com    Nisha's Automated Customer    012    bapachocustomerpwd    bapachocustomerpwd
@{RegisterCredentialsnew}    testemailcustomer001@gmail.com    Nisha's Automated Customer    012    bapachocustomerpwd    bapachocustomerpwd
@{RegisterCredentialsCheckout}    automatedcustomer012@yopmail.com    bapachocustomerpwd 

@{FBCredentials}    eswarinisha.b@gmail.com    Nani@25032016

${couponmailid}      nisha+customercoupon@inqadigital.com  


${Change_CurrentLoction_BDP_EN}    haarlem
${Change_CurrentLoction_BDP_NL}    haarlem
${Change_CurrentLoction_BDP_CZ}    prague
${Change_CurrentLoction_BDP_IT}    venice
${Change_CurrentLoction_BDP_DE}    frankfurt
${Change_CurrentLoction_BDP_GR}    santorini
${Change_CurrentLoction_BDP_RO}    Bucharest

${Choose_Change_CurrentLoction_BDP_EN}     //a[contains(.,'Haarlem, Nederland')]
${Choose_Change_CurrentLoction_BDP_NL}     //a[contains(.,'Haarlem, Netherlands')]
${Choose_Change_CurrentLoction_BDP_CZ}    //a[contains(.,'Prague, Czechia')] 
${Choose_Change_CurrentLoction_BDP_DE}    //a[contains(.,'Frankfurt, Deutschland')]
${Choose_Change_CurrentLoction_BDP_GR}    //a[contains(.,'Santorini, Greece')]
${Choose_Change_CurrentLoction_BDP_IT}    //a[contains(.,'Venice, VE, Italia')] 
${Choose_Change_CurrentLoction_BDP_Ro}    (//strong[contains(.,'Bucharest')])[1] 


#MerchantOnboarding

@{MerchantAddress_EN}    Justine de Gouwerhof    Haarlem    2011GP    Netherlands
@{MerchantAddress_NL}    Justine de Gouwerhof    Haarlem    2011GP    Netherlands
@{MerchantAddress_IT}    Ruga Vecchia S.Giovanni, 603     Venezia     30125     Italy
@{MerchantAddress_CZ}    Laubova 1689/4     Vinohrady     130 00     Czechia
@{MerchantAddress_DE}    SchleiheimerStr. 96    80797    Munich    Germany
@{MerchantAddress_GR}     Karterado     Fira-Karterado     847 00      Greece
@{MerchantAddress_RO}     Calea Floreasca 111-113     Bucuresti     1455    Romania

#Merchant without Online payment
${MerchantName without payment}    Nisha's Automated Bakery006
@{Merchant_Without_OnlinePayment_Credentials}     automatedmerchant006@yopmail.com    bapachomerchantpwd    +31612809787


#MultishopMerchant details

@{MultishopMerchantCredentials}    nisha+coffeeshop2@inqadigital.com     bapachomerchantpwd    31612809787    Netherlands
@{MultishopLocation1Credentials}     nisha+coffeeshop2+loc1@inqadigital.com     bapachomanagerpwd    31612809787    54,Justine de Gouwerhof    2011GP    Haarlem Netherlands
${MultishopMerchantName}    Nisha's Automated Coffeeshop2
${MultishopMerchantLoc1}    Nisha's Automated Coffeeshop2+ Loc1

${COC}    000000000  
${VAT_EN}    123456789B12 
${VAT_NL}    123456789B12  
${VAT_CZ}    54416485
${VAT_IT}    12345678901
${VAT_DE}    123456789
${VAT_GR}    123456789
${VAT_PL}    214585624
${VAT_RO}    1234567890

${IBAN}    NL39RABO0300065264

#Merchant with Online payment
${MerchantName_NL}    Nisha's Automated Bakery006
${MerchantName_EN}    Nisha's Bakery001
${MerchantName_IT}    Test Bakery 002 
${MerchantName_CZ}    Nisha's Automated Bakery001
${MerchantName_DE}    Nisha's Pastry001
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

#SalesAgentLogin
@{SalesAgentCredentials}    nisha@inqadigital.com    Jishannaresh29