***Variables***

${Chrome}    chrome
${Firefox}    firefox
${Edge}    edge

#CustomerSite

@{LoginCredentials}    testemailcustomer001@gmail.com    bapachocustomerpwd

@{GuestUser_EN}    Eswari Nisha    Balakrishnan    nisha@inqadigital.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
@{GuestUser_NL}    Eswari Nisha    Balakrishnan    nisha@inqadigital.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
@{GuestUser_IT}    Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com    Ruga Vecchia S.Giovanni, 603     Venezia     30125     Italy     +31612809787
@{GuestUser_CZ}    Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com   Laubova 1689/4     Vinohrady     130 00     Czechia     +31612809787
@{GuestUser_DE}     Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com    Flughafen  204     Vinohrady     60549     Frankfurt am Main     +31612809787


@{RegisterCredentialsold}    automatedcustomer010@yopmail.com    Nisha's Automated Customer    010    bapachocustomerpwdold    bapachocustomerpwdold
@{RegisterCredentialsnew}    automatedcustomer010@yopmail.com    Nisha's Automated Customer    010    bapachocustomerpwd    bapachocustomerpwd
@{RegisterCredentialsCheckout}    automatedcustomer011@yopmail.com    bapachocustomerpwd 

@{FBCredentials}    eswarinisha.b@gmail.com    Nani@25032016

${Change_CurrentLoction_BDP_EN}    haarlem
${Change_CurrentLoction_BDP_NL}    haarlem
${Change_CurrentLoction_BDP_CZ}    prague
${Change_CurrentLoction_BDP_IT}    venice
${Change_CurrentLoction_BDP_DE}    frankfurt
${Change_CurrentLoction_BDP_GR}    santorini

${Choose_Change_CurrentLoction_BDP_EN}     //a[contains(.,'Haarlem, Netherlands')]
${Choose_Change_CurrentLoction_BDP_NL}     //a[contains(.,'Haarlem, Netherlands')]
${Choose_Change_CurrentLoction_BDP_CZ}    //a[contains(.,'Prague, Czechia')] 
${Choose_Change_CurrentLoction_BDP_DE}    //a[contains(.,'Frankfurt, Deutschland')]
${Choose_Change_CurrentLoction_BDP_GR}    //a[contains(.,'Santorini, Greece')]
${Choose_Change_CurrentLoction_BDP_IT}    //a[contains(.,'Venice, VE, Italia')] 


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