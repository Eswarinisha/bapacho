*** Settings ***
Library    SeleniumLibrary

Resource    Customerkeywords.robot 
Resource    CMSkeywords.robot
Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot

***Keyword***
Login as MultishopMerchant  
        BuiltIn.Sleep    2  
        Click Element    ${LoginasMerchant}  
        BuiltIn.Sleep    2
        SeleniumLibrary.Input Text    email    ${MultishopMerchantCredentials}[0]
        Input Password    password     ${MultishopMerchantCredentials}[1]  
        Click Button  ${LoginSubmit_Button}
        BuiltIn.Sleep    2   
        
Connect to Online payment
        Click Element    ${connect to online payment}  
        BuiltIn.Sleep    2
        Capture Page Screenshot    
        Go Back  
        BuiltIn.Sleep    2
        Execute JavaScript    ${scrollup}
        
#DASHBOARD

Print all Orders for TODAY
    Sleep    2     
    Click Element    ${printallorders}   
    BuiltIn.Sleep    2  
    Capture Page Screenshot 
     
Order/Product Details TODAY
    BuiltIn.Sleep    2  
    Capture Page Screenshot   
    Click Element    ${oredr/product_details}    
    BuiltIn.Sleep    2  
    Capture Page Screenshot 
        
#My Product Categories

Create new product category
     Click Element    ${MyproductCategories}
     Capture Page Screenshot        
     Click Element     ${AddCategory} 
     BuiltIn.Sleep    2      
     Run Keyword If    '${Language}'=='NL' or 'EN'     Input Text    titles[nl]    ${ProductCategoryName}       
     Run Keyword If    '${Language}'=='DE'     Input Text    titles[be]    ${ProductCategoryName} 
     Run Keyword If    '${Language}'=='IT' or 'EN'     Input Text    titles[it]    ${ProductCategoryName} 
     Run Keyword If    '${Language}'=='CZ'     Input Text    titles[cz]    ${ProductCategoryName} 
     Run Keyword If    '${Language}'=='DE'    Input Text    titles[en]    ${ProductCategoryName} 
     Capture Page Screenshot    
     Click Button    ${btn_SubmitCategory_${Language}}
     BuiltIn.Sleep    2    
     Click Element    ${OK}   
     BuiltIn.Sleep    2   
     Capture Page Screenshot  
     
Delete product category 
     Click Element    ${MyproductCategories}
     Capture Page Screenshot    
     BuiltIn.Sleep    2
     Click Element    ${DeleteCategory}  
     Capture Page Screenshot    
     BuiltIn.Sleep    2
     Click Element    ${delete}
     Capture Page Screenshot
     BuiltIn.Sleep    2
     Click Element    ${OK}    
     Page Should Not Contain    ${ProductCategoryName}     
     Capture Page Screenshot    

Delete product category Failing
     Sleep    2
     Execute Javascript    ${scrollup}
     Click Element    ${MyproductCategories}
     Run Keyword And Continue On Failure           Click Element   ${DeleteCategory}
     Capture Page Screenshot    
                 
#My Products
Create new own product 

    Click Element   ${MyProduct}
    Capture Page Screenshot
    Click Element    ${Addproduct}  
    Capture Page Screenshot
    Sleep    2
    Input Text    ${ProductTitle_${Language}}   ${Productname}  
    Input Text    ${Product_Subtitle_${Language}}      ${Productname}     
    Input Text    ${Product_Description_${Language}}      ${Productname}
    Input Text    ${Product_Ingredients_${Language}}     ${Productingredients} 
    Input Text    ${Product_unit_${Language}}    ${ProductUnit}
    Execute JavaScript    ${scrollup}
    Click Element    ${CopyfromEnglish}
    Capture Page Screenshot
    Select From List By Label    ${choosecategoryname}      ${ProductCategoryName}
    Select From List By Value    ${feature product}      1 
    Input Text    ${price}    ${PricewithVAT}
    Select From List By Value    ${productVAT}   2
    Capture Page Screenshot
    BuiltIn.Sleep    2    
    Input Text   ${productAvailablefrom}      26-09-2020 06:45  
    Input Text    ${productionquantity}     10
    Input Text    ${productpreparationtime}    01:00
    Click Element    //i[contains(@class,'far fa-clock')]    
    Capture Page Screenshot
    Sleep    2    
    Select Checkbox    productLocations[]
    Select From List By Value    ${chooseproductlocation}       1 
    # Input Text    name=nutritions[11]    0.5    
    #Select Checkbox    //input[@id='paymentMethod-5']      #Online payment
    #Scroll Element Into View    //input[contains(@value,'OK')]
    #Click Element    //input[contains(@value,'OK')]    
    #Scroll Element Into View    //input[@id='paymentMethod-6']
    #Select Checkbox    //input[@id='paymentMethod-6']      #Cash payment
    #Select Checkbox    //input[@id='paymentMethod-7']      #card payment
    Capture Page Screenshot
    Click Element    ${btn_inputsubmit} 
    BuiltIn.Sleep    5    
    Wait Until Page Contains     ${Productname}    
    Capture Page Screenshot        
   
Create new own product without choosing location 

    Click Element   ${MyProduct}
    Capture Page Screenshot
    Click Element    ${Addproduct}  
    Capture Page Screenshot
    Sleep    2
    Input Text    ${ProductTitle_${Language}}   ${Productname}  
    Input Text    ${Product_Subtitle_${Language}}      ${Productname}     
    Input Text    ${Product_Description_${Language}}      ${Productname}
    Input Text    ${Product_Ingredients_${Language}}     ${Productingredients} 
    Input Text    ${Product_unit_${Language}}    ${ProductUnit}
    Execute JavaScript    ${scrollup}
    Click Element    ${CopyfromEnglish}
    Capture Page Screenshot
    Select From List By Label    ${choosecategoryname}      ${ProductCategoryName}
    Select From List By Value    ${feature product}      1 
    Input Text    ${price}    ${PricewithVAT}
    Select From List By Value    ${productVAT}   2
    Capture Page Screenshot
    BuiltIn.Sleep    2    
    Input Text   ${productAvailablefrom}      26-09-2020 06:45  
    Input Text    ${productionquantity}     10
    Input Text    ${productpreparationtime}    01:00
    Click Element    //i[contains(@class,'far fa-clock')]    
    Capture Page Screenshot
    Sleep    2    
    #Select Checkbox    productLocations[]
    Select From List By Value    ${chooseproductlocation}       1 
    # Input Text    name=nutritions[11]    0.5    
    #Select Checkbox    //input[@id='paymentMethod-5']      #Online payment
    #Scroll Element Into View    //input[contains(@value,'OK')]
    #Click Element    //input[contains(@value,'OK')]    
    #Scroll Element Into View    //input[@id='paymentMethod-6']
    #Select Checkbox    //input[@id='paymentMethod-6']      #Cash payment
    #Select Checkbox    //input[@id='paymentMethod-7']      #card payment
    Capture Page Screenshot
    Click Element    ${btn_inputsubmit} 
    BuiltIn.Sleep    5      
    Capture Page Screenshot        
    Page Should Contain    Error
    Click Element    ${OK}        
                   

Delete created own category product
     Click Element   ${MyProduct}
     Capture Page Screenshot    
     BuiltIn.Sleep    2
     
     Click Element    ${Deleteproduct}   
     Capture Page Screenshot    
     Click Element    ${yes_delete}    
     Capture Page Screenshot         
     Click 'i' for product information
     Page Should Not Contain    ${Productname}  
     
Add Zeelandia product from library
     Click Element   ${MyProduct}
     Capture Page Screenshot
     Click Element    ${Addzeelandiaproduct} 
     BuiltIn.Sleep    2  
     Capture Page Screenshot
     Click Element   ${setzeelandiaproduct}
     Capture Page Screenshot  
     Input Text    ${inputprice_zeelandiaproduct}    2.00   
     Capture Page Screenshot       
     Click Element    ${btn_Save}  
     BuiltIn.Sleep    2  
     Capture Page Screenshot  
     
Edit Zeelandia product from library
     Click Element   ${MyProduct}
     Capture Page Screenshot
     Click Element    ${Editzeelandiaproduct} 
     BuiltIn.Sleep    2  
     Capture Page Screenshot
     Input Text    ${editzeelandiaproducttitle_${Language}}    Baker's own name
     Input Text    ${editzeelandiaproductsubtitle_${Language}}    Baker's own subtitle    
     Execute Javascript    ${scrolldown}
     Sleep    3
     Click Element   //input[@type='submit']
     BuiltIn.Sleep    2  
     Page Should Contain    Baker's own name    
     Page Should Contain    Baker's own subtitle    
     BuiltIn.Sleep    2  
     Capture Page Screenshot  
     
       
 
#My Location

Choose Plan
    Click Element    ${MyLocations} 
    Run Keyword And Continue On Failure     Click Element    ${viewplans}   
    Sleep    2 
    Click Element    ${chooseplan}    
    Sleep    2 
    Select Checkbox   ${Accept T&C}
    Click Element    ${checkout}  
    Sleep    3
    Input Text    ${cardnumber}    4242 4242 4242 4242
    Input Text    ${cardExpiry}     02/22
    Input Text    ${cvc}        123
    Input Text    ${billingname}    Nisha 
    Sleep    2           
    Click Element    ${savecard}   
    Sleep    5
     
Add New Location
     Click Element    ${MyLocations} 
     Click Element    ${addnewlocation}    
     Sleep    2 
     Input Text    ${newlocationtitle}     ${MultishopMerchantLoc1}
     Input Text    ${newlocationaddress}    ${MultishopLocation1Credentials}[3]
     Input Text    ${newlocationZip}    ${MultishopLocation1Credentials}[4]
     Input Text    ${newlocationcity}    ${MultishopLocation1Credentials}[5]
     Input Text    ${newlocationphone}    ${MultishopLocation1Credentials}[2]
     Click Element    ${unchooseproduct1}    
     #Click Element    ${newlocationchooseproduct2}   
     Execute Javascript    ${scrolldown}              
     Click Element    ${btn_Save}                  
#Shop Address
    Sleep    2 
    Textfield Should Contain    ${newlocationshoptitle_${Language}}    ${MultishopMerchantLoc1}    
    #Textfield Should Contain    localized-it-title    ${MultishopMerchantLoc1}  
    Textfield Should Contain    ${newlocationshopaddress1_${Language}}    ${MultishopLocation1Credentials}[3]
    #Textfield Should Contain    localized[it][address_1]    ${MultishopLocation1Credentials}[3]
    Textfield Should Contain    ${newlocationshopzip_${Language}}    ${MultishopLocation1Credentials}[4]
    #Textfield Should Contain    localized[it][zip]    ${MultishopLocation1Credentials}[4]
    Textfield Should Contain     ${newlocationshopcity_${Language}}     ${MultishopLocation1Credentials}[5]
    #Textfield Should Contain    localized[it][city]      ${MultishopLocation1Credentials}[5]  
    Input Text    ${newlocationshopregion_${Language}}    Haarlem    
    #Input Text    localized[it][region]    Haarlem    
    Input Text    ${newlocationshopcountry_${Language}}    Netherlands                           
    #Input Text    localized[it][country]    Netherlands
    Input Text    ${newlocationemailorders}    ${MultishopLocation1Credentials}[0]     
    Input Text    ${newlocationphoneorders}    ${MultishopLocation1Credentials}[2]
    Input Text    ${newlocationphone2}    ${MultishopLocation1Credentials}[2]
    Select Checkbox    ${enablenotificationbyphone}
    Select Checkbox    ${enablenotificationbyemail}
    Click Element    ${saveShopAddress}    
    Sleep    2
    Click Element    ${OK}    
    
#Products
     Execute JavaScript    ${scrollup}
     Click Element    ${products}    
     Click Element    ${unchooseproduct1}
     Click Element    ${saveproducts}    
     Sleep    2
     Click Element    ${OK}   
     
#Pickup
     Execute JavaScript    ${scrollup}
     Click Element    ${pickup}
     Select Checkbox    ${setpickupactive}
     Sleep    2    
     Input Text    ${pickuppreparationtime}    02:00
     Input Text    ${pickupfee}    5.00
     Sleep    2    
     Execute JavaScript    window.scrollBy(1000,247)
     Select From List By Value    ${MondayOpening}    06:30
     Select From List By Value    ${MondayClosing}      23:30
     Select From List By Value    ${pickupbreaktime - from}    12:00
     Select From List By Value    ${pickupbreaktime - To}    12:30
     Click Element    ${pickupapplytoall}  
     #Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
     Select Checkbox        ${setpickuponlinepayment}
     Select Checkbox    ${setpickupcashpayment}
     Select Checkbox    ${setpickupcardpayment}
     Click Element    ${savepickupinformation}      
     Sleep  2
     Click Element    ${OK}   
     
     
#Delivery
     Execute JavaScript    ${scrollup}
     Click Element    ${delivery}    
     Select Checkbox    ${setdeliveryactive}
     Input Text    ${deliveryprice}    10.00  
     Input Text   ${minimumprice_for_delivery}    50.00
     Input Text    ${deliveryrange}    20    
     Input Text    ${deliveryfreeabove}    75.00
     Input Text    ${deliverypreparationtime}       02:00
     Input Text    ${deliveryhandlingfee}        5.00    
     Select From List By Value   ${Mondaydelivery - from}    06:30
     Select From List By Value    ${Mondaydelivery - to}       23:30
     Select From List By Value    ${deliverybreaktime - from}    12:00
     Select From List By Value    ${deliverybreaktime - to}    12:30
     Click Element    ${deliveryapplytoall}  
     Sleep    2       
     Select Checkbox    ${setdeliveryonlinepayment} 
      Sleep    2    
     Select Checkbox    ${setdeliverycashpayment}
      Sleep    2 
     Select Checkbox    ${setdeliverycardpayment} 
     Sleep    2 
     Click Element    ${savedeliveryinformation} 
     Sleep  2
     Click Element    ${OK}   
     
    
#Shop Information
     Execute JavaScript    ${scrollup}
     Click Element    ${shoppageinformation}    
     Execute JavaScript    window.scrollBy(1000,247) 
     Sleep    2 
     Page Should Contain       ${MultishopMerchantLoc1}   
     Input Text    ${websitecolumn}    https://lefournil.nl/en/     
     Execute JavaScript    ${scrolldown}  
     Click Element    ${saveshoppageinformation} 
     Sleep  2
     Click Element    ${OK}   
     
     
Open Location1 - my page 
    Execute JavaScript    ${scrollup}
    Click Element    ${Mypage}    
    Sleep    2 
    Page Should Contain       ${MultishopMerchantLoc1}  
    Capture Page Screenshot    
           
View My locations
    Click Element    ${MyLocations} 

My Orders
    
    Click Element    ${myorder_tab}  
     Sleep    2  
    
Accept and view Order
    Click Element    ${Accept order} 
    Sleep    2
    Click Element    ${OK}    
    Sleep    2
    Click Element    ${viewOrder}    
    Sleep    2
    Select From List By Value    ${orderstatus}     ${Preparing}
    Sleep    2
    Input Text    ${orderstatuscomment}       Automated Test Comment for preparing
    Click Element    ${saveorderstatus}  
    Sleep    2
    Click Element    ${OK}    
    Sleep    2
    Select From List By Value    ${paymentstatus}    ${PaidStatus}
    Click Element    ${savepaymentstatus} 
    Sleep    2   
    Click Element    ${OK}    
    Sleep    2

Decline the new order   
    Click Element    ${Declineorder}    
    Sleep    2
    Click Element    ${delete}
    Sleep    2   
    Click Element    ${OK}    
    Sleep    2    
    Click Element    ${viewOrder}    
    Sleep    2  
    Capture Page Screenshot    

Refund order
    Click Element    ${Acceptorder} 
    Sleep    2
    Click Element    ${OK}    
    Sleep    2
    Click Element    ${viewOrder}
    Sleep    2
    Click Element    ${RefundorderButton}  
    Sleep    2  
    #Select Radio Button     groupname   wholeamount
    Input Text    ${Input REFUND}    REFUND 
    Click Element    ${Refundbutton}   
    Sleep    2
    Page Should Contain    Order refunded
    #Click Element    ${UNDObutton}    
    
Partial Order    
    Click Element    ${Acceptorder} 
    Sleep    2
    Click Element    ${OK}    
    Sleep    2
    Click Element    ${viewOrder}
    Sleep    2
    Click Element    ${RefundorderButton}
    Sleep     2
    #Select Radio Button    group_name    partialrefund
    # Input Text    ${Refundamount}        5.00
    # Input Text    ${Partialrefundcomment}    Automated partial refund 
    #Click Element    ${proceedbutton}          
    Sleep    2
    Page Should Contain    Order refunded
    #Click Element    ${UNDObutton}    
    
  
My Teams
    Click Element    ${Myteam}    
    Click Element    ${Addmanager}  
    Sleep    2    
    Input Text    ${managerfirstname}    AutomatedManager        
    Input Text    ${managerlastname}    1    
    Input Text    ${manageremail}    ${MultishopLocation1Credentials}[0]    
    Click Element    ${location1checkbox}    
    Click Element    ${location2checkbox}    
    Click Element    ${btn_SaveManager}   
    Sleep    2 
    Click Element    ${OK}    
    Sleep    2
    
Online Payment Settings
    Click Element    ${Onlinepaymentsettings}   
    Click Element    ${connect to online payment}  
    Sleep     2  
    Go Back 
   
Account Settings
    Click Element    ${accountsettings}    
    
Account Options
    Click Element    ${accountoptions}    
    
View Multishop plan
    Click Element    ${AccountOption}
    Capture Page Screenshot    
   