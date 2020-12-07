*** Settings ***
Library    SeleniumLibrary

Resource    Bapacho Variables.robot
Resource     Merchantkeywords.robot

***Keyword***



                # Home Page



Open_Bapachosite
        Open Browser   ${Bapacho_URL_${Language}}  chrome
        Maximize Browser Window
        
login_Using_RegisteredMailid      
        Set Browser Implicit Wait    5    
        SeleniumLibrary.Input Text    //input[@id='name']    ${RegisterCredentials}[0]    
        Input Password    (//input[@id='name'])[2]    ${RegisterCredentials}[3]
        Click Button    ${Submit_Login}  
        Wait Until Page Contains    My Account 

Click_login   
       Wait Until Element Is Visible    ${Login_Button}   
       Click Element     ${Login_Button}
       BuiltIn.Sleep    2    
Click_FacebookLogin
        Set Browser Implicit Wait    5
        Click Element     ${Login_using_Facebook} 

FacebookLogin
        Click_login
        Set Browser Implicit Wait    5
        Click Element     ${Login_using_Facebook} 
        Wait Until Page Contains    Accept cookies from Facebook on this browser?
        Set Selenium Implicit Wait    10
        Click Button    //*[@id="u_0_g"]              
        SeleniumLibrary.Input Text      ${FBemailid}    ${FBCredentials}[0]    
        Input Password    ${FBpassword}    ${FBCredentials}[1]    
        Click Element    ${FBSubmit}  
        Handle Alert    Allow
        Handle Alert    OK     
        BuiltIn.Sleep    2  
        
FacebookLogin_in_Checkoutpage
        Wait Until Page Contains    Accept cookies from Facebook on this browser?
        Set Selenium Implicit Wait    10
        Click Button    //*[@id="u_0_g"]              
        SeleniumLibrary.Input Text      ${FBemailid}    ${FBCredentials}[0]    
        Input Password    ${FBpassword}    ${FBCredentials}[1]    
        Click Element    ${FBSubmit}       
        Set Browser Implicit Wait    10   

EmailLogin   
        Set Browser Implicit Wait    5    
        SeleniumLibrary.Input Text    //input[@id='name']    ${LoginCredentials}[0]    
        Input Password    (//input[@id='name'])[2]    ${LoginCredentials}[1]
        Click Button    ${Submit_Login}  
        BuiltIn.Sleep    2    

MerchantLogin_Form
        Set Browser Implicit Wait    5 
        SeleniumLibrary.Input Text    //input[@id='name']    bapachotestmerchant001@gmail.com
        Input Password    (//input[@id='name'])[2]    bapachomerchantpwd  
        Click Button    ${Submit_Login}     
       BuiltIn.Sleep    2          


Email_Registration
        Set Browser Implicit Wait    5
        Click Element       ${CreateAccount_Button}     
        SeleniumLibrary.Input Text      ${emailid}     ${RegisterCredentials}[0]
        SeleniumLibrary.Input Text     ${firstname}  ${RegisterCredentials}[1]
        SeleniumLibrary.Input Text     ${lastname}  ${RegisterCredentials}[2]
        Input Password   ${inputpassword}     ${RegisterCredentials}[3]
        Input Password   ${inputpasswordcheck}     ${RegisterCredentials}[4]        
        Click Button    ${CreateAccount_SubmitButton}   
        BuiltIn.Sleep    2  
        Capture Page Screenshot         
    
Click_ForgotPassword
        Wait Until Page Contains    Login     
        Capture Element Screenshot     (//a[@role='button'])[3] 
        Click Element    (//a[@role='button'])[3]
              
        Wait Until Page Contains    Forgot password
        SeleniumLibrary.Input Text      ${emailid}     ${RegisterCredentials}[0]
        Click Button    //button[contains(text(),'Submit')]    
        

ResetPassword
        Input Password    name=password      ${LoginCredentials}[1]    
        Input Password    name=password_chk    ${LoginCredentials}[1]   
        Click Element    //input[contains(@type,'submit')]    
   

Click_bakeries       
        Maximize Browser Window
        Click Element     ${btn_Bakeries_${Language}}
        BuiltIn.Sleep    2   


Click_favourites
        Set Browser Implicit Wait    5
        Click Element    //i[@class='far fa-heart']  
        Wait Until Page Contains Element    //a[@href='/nl/173-nisha-s-bakery002/nisha-s-bakery002-34-ouderkerkerlaan-amstelveen/']    

Guestuser_Click_favourites
         Click Element    //*[@id="supplierLocations"]/div[1]/div[2]/div/div[1]    
         Click Element    //*[@id="infoCover"]/div/div/div/div[1]/div[1]/button/i
         Wait Until Page Contains    Login     
         Click Button    //button[@aria-label='Close']    
        
View_favourites
        Click Element    //a[@href='/nl/173-nisha-s-bakery002/nisha-s-bakery002-34-ouderkerkerlaan-amstelveen/'] 
        BuiltIn.Sleep    2       
    
Get_CurrrentLocation_Home   
        Scroll Element Into View    //input[@id='homeLocationTitle']  
        Capture Element Screenshot    //input[@id='homeLocationTitle']    
        Clear Element Text    //input[@id='homeLocationTitle']
        Capture Element Screenshot    //input[@id='homeLocationTitle']   
        Set Selenium Implicit Wait    10 seconds
        Click Element    //i[contains(@class,'fas fa-location-arrow')]
        Capture Element Screenshot    //input[@id='homeLocationTitle']  
        Set Selenium Implicit Wait    10 seconds
        Click Element    (//i[contains(@class,'fas fa-search')])[2]    
        Wait Until Page Contains    Filter by category    

Change_CurrentLocation_Home              
        Scroll Element Into View    //input[@id='homeLocationTitle']  
        Capture Element Screenshot    //input[@id='homeLocationTitle']    
        Clear Element Text    //input[@id='homeLocationTitle']
        Capture Element Screenshot    //input[@id='homeLocationTitle']   
        Set Selenium Implicit Wait    10 seconds
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        SeleniumLibrary.Input Text    //input[@id='homeLocationTitle']    Hoofddorp
        Click Element    //a[contains(.,'Hoofddorp, Nederland')]     
        Capture Element Screenshot    //input[@id='homeLocationTitle'] 
        Set Selenium Implicit Wait    10 seconds  
        Wait Until Page Contains    Filter by category    
 


                    # Bakery Display Page
 
Type_To_Search_bakery
        Click_bakeries
        Click Element    //button[2]/i
        SeleniumLibrary.Input Text    //input[@name='keywordInput']     ${MerchantName_${Language}}
        Click Element          //button[2]/i
 
Type_to_search_bakery_nonhappy
        Click Element    //button[2]/i
        SeleniumLibrary.Input Text    //input[@name='keywordInput']    Hello
        Click Element          //button[2]/i
        Wait Until Page Contains    We're sorry, we couldn't find bakeries near you   
        
Clear search bakery field 
        Capture Page Screenshot
        Click Element    //button[contains(@onclick,'clearSearchByKeyword();')]           

Change_CurrentLoction_BDP
        SeleniumLibrary.Input Text    //input[contains(@placeholder,'Address')]       ${Change_CurrentLoction_BDP_${Language}} 
        Set Browser Implicit Wait    5
        Click Element    ${Choose_Change_CurrentLoction_BDP_${Language}}    
     
Filter Bakeries_by_Category
        Click Element    (//img[contains(@src,'120x70.jpg')])[4]   
        Set Selenium Implicit Wait    10       
        Capture Page Screenshot     
        
Filter_by_Range from my location     
        
        Drag And Drop By Offset  //div[contains(@id,'slider-range')]       107    393  
        BuiltIn.Sleep    1    
        Capture Page Screenshot
          
Filter_by_Deliver
        Click Element    //input[@value='pickup']
         
            
Filter_by_pickup
        Click Element    //input[@value='deliver']    
        
Filter_by_NowOpen
        Set Focus To Element    //input[@name='nowOpen']
        Scroll Element Into View    //input[@name='nowOpen']
        Click Element    //input[@name='nowOpen']    

Filter_by_OrderOnline
        Set Focus To Element    //input[@name='orderOnline']
        Click Element    //input[@name='nowOpen'] 
        Click Element    //input[@name='orderOnline']    

Select bakery using multiple filter
        Set Selenium Implicit Wait    10
        Scroll Element Into View    //div[@data-href='/nl/122-nisha-s-bakery011/nisha-s-bakery011-hooghiemstraplein-51-netherlands/']
        Set Focus To Element    //div[@data-href='/nl/122-nisha-s-bakery011/nisha-s-bakery011-hooghiemstraplein-51-netherlands/']
        Click Element          //div[@data-href='/nl/122-nisha-s-bakery011/nisha-s-bakery011-hooghiemstraplein-51-netherlands/']   

Select a bakery from list
         BuiltIn.Sleep    2       
         Click Element    (//div[@class='text-success'])[1]

         
PDP_AddtoCart
      
        Scroll Element Into View    (//div[@class='productCard'])[1]  
        Click Element    (//i[@class='fas fa-plus fa-fw'])[1]  
          BuiltIn.Sleep    1   
         Click Element    (//i[@class='fas fa-plus fa-fw'])[2] 
           BuiltIn.Sleep    1    
    Click Element    (//i[@class='fas fa-plus fa-fw'])[2]
      BuiltIn.Sleep    2  
    Click Element    (//i[@class='fas fa-plus fa-fw'])[1]
            

        

                        # Product Display page
Capture show more information
      Capture Element Screenshot    //a[contains(.,'Show more information')]                     
   
Click show more information

        
        Scroll Element Into View    ${ShowmoreInfo_${Language}}
        Set Focus To Element    ${ShowmoreInfo_${Language}}
        Click Element    ${ShowmoreInfo_${Language}}
        Sleep    2      
        Capture Page Screenshot    
        Set Browser Implicit Wait    5
        Click Element  ${btn_Close_${Language}}     
       
Click bakery phone number
    
         Click Element    (//a[contains(@role,'button')])[3]
         Capture Page Screenshot                  
    
Filter products by Category
         Click Element    //a[contains(@data-categoryid,'5')]
         Capture Page Screenshot    
         Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)        
         
Click 'i' for product information
         Click Element    (//i[contains(@class,'fas fa-info fa-fw')])[1]    

Click add to cart button
         Set Browser Implicit Wait    5
         Click Element    //button[@onclick='addToCart(this)']       


                      # Cart 



PDP_Add product Quantity
         Set Browser Implicit Wait    5
         Click Element    //div[@id='cartSummaryBody']/div[2]/table/tbody/tr/td[2]/div[4]/i    
         
PDP_Minus product Quantity
          Set Browser Implicit Wait    5
         Click Element    //div[@id="cartSummaryBody"]/div[2]/table/tbody/tr/td[2]/div[3]/i

Type Product quantity
          BuiltIn.Sleep    1       
          Input Text    //input[contains(@type,'number')]    6 
          Press Keys      //input[contains(@type,'number')]     ENTER 
          Capture Page Screenshot     
          BuiltIn.Sleep    1     
          Click Element    //button[contains(.,'Checkout')]
          
Delete Product Quantity
        Set Browser Implicit Wait    5
        Click Element    //i[contains(@class,'fas fa-trash fa-lgf fa-fw text-lightmuted')]    


PDP_Click_Checkout
        
         Click Element   //div[@id='cartSummaryBody']/div[2]/table/tbody/tr/td[2]/div[4]/i
         Click Element    ${btn_Checkout_${Language}}
       
                


                   # Checkout page
                   
Choose_delivery
        BuiltIn.Sleep    2    
        Click Element    ${ChooseDeliver_${Language}}
       


Guestuser_Fill_Checkoutpage
         BuiltIn.Sleep    2  
         Select From List By Index     //select[@id='date']   7  
         BuiltIn.Sleep    2    
         Select From List By Index      //select[@id='time']    0
         BuiltIn.Sleep    2       
         SeleniumLibrary.Input Text    //input[@id='firstname']    ${GuestUser_${Language}}[0]    
         SeleniumLibrary.Input Text    //input[@id='lastname']     ${GuestUser_${Language}}[1]     
         SeleniumLibrary.Input Text    //input[@id='email']        ${GuestUser_${Language}}[2]    
         Input Text    name=address    ${GuestUser_${Language}}[3]  
        # Input Text    name=addressLine2        ${GuestUser_${Language}}[4]  
         Input Text    name=postal    ${GuestUser_${Language}}[5]      
         Input Text    name=city    ${GuestUser_${Language}}[6]              
         SeleniumLibrary.Input Text    //input[@id='phone']    ${GuestUser_${Language}}[7]   

User_Fill_Checkoutpage
         BuiltIn.Sleep    2 
       # Wait Until Element Is Visible    //select[@id='date']               
         BuiltIn.Sleep    2 
         Select From List By Index     //select[@id='date']   3 
         BuiltIn.Sleep    2          
        # Wait Until Page Contains Element    //select[@id='time']    
         Select From List By Index      //select[@id='time']    4
         Input Text    //input[contains(@id,'address')]   ${GuestUser_${Language}}[3]  
         Input Text    //input[contains(@id,'postal')]    ${GuestUser_${Language}}[4] 
         Input Text   //input[contains(@id,'city')]     ${GuestUser_${Language}}[5]
         Input Text    //input[contains(@type,'tel')]    ${GuestUser_${Language}}[7]    
            
         
Guestuser_Login_in_Checkoutpage         
         Wait Until Page Contains    Choose pickup or delivery   
         Wait Until Page Contains    Choose a date for Pickup   
         Select From List By Index     //select[@id='date']   0  
         Select From List By Index      //select[@id='time']    4   
         Scroll Element Into View    //a[contains(text(),'Login using Facebook')]
         Click Element   //a[contains(text(),'Login using Facebook')]    
         FacebookLogin_in_Checkoutpage
  
       
Click_Terms&Condition
        
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link    //a[@href='/terms-and-conditions/'] 
        BuiltIn.Sleep    2    
         Capture Page Screenshot     
     
Click_T&C_Checkbox  
         Scroll Element Into View    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    payment_method    payment_method2
         Page Should Contain Checkbox    //input[@id='terms']    
         Select Checkbox    //input[@id='terms'] 
         Capture Element Screenshot    //input[@id='terms']     
                      # My Account
Check_T&C_NonHappy
         Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)   
         Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    payment_method    payment_method1
         Page Should Contain Checkbox    //input[@id='terms']
         Capture Element Screenshot    //input[@id='terms']       
         Close Browser
         
Click Submit button
    Click Button    //button[@type='submit']  

Cashpay_OrderNow
            
         Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    payment_method    payment_method1
         Page Should Contain Checkbox    //input[@id='terms']    
         Select Checkbox    //input[@id='terms']  
         Click Button    //button[@type='submit']
         Sleep    2    
         Click Element    //button[contains(.,'OK')]    
         

Cardpay_OrderNow
        
         Scroll Element Into View    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    payment_method    payment_method2
         Page Should Contain Checkbox    //input[@id='terms']    
         Select Checkbox    //input[@id='terms']  
         Click Button    //button[@type='submit']
         Wait Until Page Contains   title.order.Confirm   
         Click Element    //button[contains(.,'OK')]   


         
Onlinepay_Ordernow
        BuiltIn.Sleep    2    
         Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)   
         Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    payment_method    payment_method0
         Page Should Contain Checkbox    //input[@id='terms']    
         Select Checkbox    //input[@id='terms']  
         Click Button    //button[@type='submit']
        # Wait Until Page Contains   title.order.Confirm   
        # Click Element    //button[contains(.,'OK')]   

iDEAL_Online_payment_process         
          BuiltIn.Sleep    2 
         Click Element    //button[contains(@id,'ideal-tab')]   
         Select From List By Label      //select[contains(@id,'idealBank')]     ABN Amro   
         BuiltIn.Sleep    1         
         SeleniumLibrary.Input Text    name=billingName    Eswari Nisha Balakrishnan     
         Click Element    //div[contains(@class,'SubmitButton-IconContainer')]  
         Set Browser Implicit Wait    10
         Wait Until Page Contains    iDEAL test payment page     
         Click Element    //button[contains(.,'Authorize Test Payment')]    
         Wait Until Page Contains    Thank you for your order    
         

Card_Online_payment_process
         Sleep    2    
        # Click Element    //button[contains(@id,'card-tab')]    
         SeleniumLibrary.Input Text    name=cardNumber    4242 4242 4242 4242    
         SeleniumLibrary.Input Text    name=cardExpiry    02/22
         SeleniumLibrary.Input Text    name=cardCvc    222
         SeleniumLibrary.Input Text    billingName    Eswari Nisha Balakrishnan    
         Select From List By Label      //select[@id='billingCountry']     Netherlands
         Click Element    //div[contains(@class,'SubmitButton-IconContainer')]  
         Sleep    2    
                     
Giropay_Online_payment_process
         Wait Until Page Contains    Contact information
         Click Element   //button[contains(@id,'giropay-tab')]
         SeleniumLibrary.Input Text    billingName    Eswari Nisha Balakrishnan
         Set Browser Implicit Wait    5
         Click Element    //div[contains(@class,'SubmitButton-IconContainer')]  
         Set Browser Implicit Wait    310
         Wait Until Page Contains    giropay test payment page     
         Click Element    //button[contains(.,'Authorize Test Payment')]    
         Wait Until Page Contains    Thank you for your order 

Click back while Online pay 
        Wait Until Page Contains    Contact information
        Click Element    //span[contains(text(),'Back')]    
        Wait Until Page Contains    Order incomplete    
        





                                    # Order Confirmation Page
                                    
Add to Calender
         
        Click Element   //a[@class='btn btn-warning'][contains(.,'Add to calendar')]
        

SupportForm
        Click Element    //a[@class='btn btn-warning'][contains(.,'Support')]   
        Set Browser Implicit Wait    10 
        SeleniumLibrary.Input Text    //textarea[contains(@name,'comments')]    "Test Automation - Test question"    
        Capture Page Screenshot    
        Click Element    //button[contains(@class,'btn btn-block btn-info-dark')]    
        


                                 # My Account




Click_MyAccount
        Click Element    ${MyAccount_${Language}} 
        
Edit_Mydetails
        SeleniumLibrary.Input Text    //*[@id="city"]    Haarlem
        Set Focus To Element    //input[@value='Save']
        Scroll Element Into View    //input[@value='Save']
        Click Button    //input[@value='Save']             
        Click Element    (//button[contains(@type,'button')])[2]    
        Wait Until Page Contains    My account   
        
Click_MyFavorites
        Click Element    //a[contains(.,'Favourites')] 

View_MyFavorites
         
        Wait Until Page Contains    My favorites
        Click Element    (//div[contains(@class,'info')])[1]   
        
Click_Myorders
        Click Element    (//a[contains(@class,'list-group-item ')])[3]   
         Sleep    2          

View_MyOrders
       
        Click Element    (//a[contains(@class,'list-group-item')])[4]  
        Sleep    2  
        Capture Page Screenshot      
        
View_MyOrders_Refunded Order
        Click Element    (//a[contains(@class,'list-group-item')])[5]  
        Wait Until Page Contains    My order 
        BuiltIn.Sleep    time_    
        Capture Page Screenshot         
        
        
Download_OrderConfirmation
        # Set Focus To Element    //button[contains(.,'Download Confirmation')]
        Scroll Element Into View    //button[contains(.,'Download Confirmation')]       
        Click Element    //button[contains(.,'Download Confirmation')]    
        #view downloaded file - YET TO DO
        
Repeat_Order
        # Set Focus To Element    //button[contains(.,'Repeat order')]
        Scroll Element Into View    //button[contains(.,'Repeat order')]       
        Click Element    //button[contains(.,'Repeat order')]
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        
Click_logout
        Click Element    (//div[contains(.,'Logout')])[5]                    
        
                          
                       # FOOTER
                       
About us
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link    //a[contains(text(),'About us')]    
        Wait Until Page Contains    About us
        Capture Page Screenshot    
        

Login As Merchant_Footer
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link    //a[contains(text(),'Login as Merchant')]    
        Wait Until Page Contains    Login as Merchant
        

Terms and Condition
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link  //a[contains(text(),'Terms and conditions')]                  
        Wait Until Page Contains    Terms and Conditions
        Capture Page Screenshot 


Privacy Statement
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link     //a[contains(text(),'Privacy statement')]
        Wait Until Page Contains     Bapacho Privacy Statement
        Capture Page Screenshot

FAQ
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link     //a[contains(text(),'FAQ')]
        Wait Until Page Contains     Page title
        Capture Page Screenshot

Support_Footer
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link     //a[contains(text(),'Support')]
        Wait Until Page Contains    Contact Bapacho    

Support_Form_Footer
        SeleniumLibrary.Input Text    //input[contains(@name,'name')]    Eswari Nisha
        SeleniumLibrary.Input Text    //input[contains(@name,'phone')]    +31612809787
        SeleniumLibrary.Input Text    //input[contains(@name,'email')]    nisha@inqadigital.com    
        SeleniumLibrary.Input Text    //textarea[contains(@name,'comments')]    "Test automation- Testing Support form in footer"     
        Click Button    //button[@class='btn btn-block btn-info-dark'][contains(.,'Submit')]       

Bapacho_FB_icon
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link    (//a[contains(@class,'socialLink')])[1]    
       
Bapacho_Instagram_icon
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link    (//a[contains(@class,'socialLink')])[2]    
       



                       # Other


OpenYopMailinchrome
         Open Browser    http://www.yopmail.com/en/    chrome
    

Check_CustomerActivation_mail
        SeleniumLibrary.Input Text    name=login    ${RegisterCredentials}[0] 
        Click Button    //input[contains(@class,'sbut')]    
        Wait Until Page Contains    Inbox    
        Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)         
        Select Frame    //iframe[@id='ifmail']
        BuiltIn.Sleep    2    
        Click Element    //a[contains(text(),'https://staging.bapacho.com/activateAccount.php?gu')]
        
  
Check_ForgtPassword_mail
        SeleniumLibrary.Input Text    name=login    ${RegisterCredentials}[0] 
        Click Button    //input[contains(@class,'sbut')]    
        Wait Until Page Contains    Inbox    
        Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)         
        Select Frame    //iframe[@id='ifmail']
        Click Element    //a[contains(text(),'https://staging.bapacho.com/nl/reset-password/cust')] 
        Select Window    NEW
        
Guest user placing a Cash pay order
         Open_Bapachosite
         Click_bakeries
         Type_To_Search_bakery_Merchant
         BuiltIn.Sleep    2    
         Select a bakery from list
         PDP_AddtoCart
         Set Browser Implicit Wait    5
         PDP_Click_Checkout
         Guestuser_Fill_Checkoutpage
         Cashpay_OrderNow
         Capture Page Screenshot    
         Close Browser           
              
                        
            