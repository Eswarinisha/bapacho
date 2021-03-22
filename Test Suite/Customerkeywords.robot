*** Settings ***
Library    SeleniumLibrary

Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot
Resource     Merchantkeywords.robot

***Keyword***

                # Home Page

Open_Bapachosite
        Open Browser   ${Bapacho_URL_${Language}}     ${Chrome}
        Maximize Browser Window
        Change_CurrentLocation_Home
        
Open MultishopHomePage
        Open Browser   ${Multishop_URL_${Language}}     ${Chrome}
        Maximize Browser Window
        Sleep    2
        #Change_CurrentLocation_Home
        
Open_Bapachosite_to_testhomepage
        Open Browser   ${Bapacho_URL_${Language}}     ${Chrome}
        Maximize Browser Window


login_Using_RegisteredMailid      
        Set Browser Implicit Wait    5    
        SeleniumLibrary.Input Text    //input[@id='name']    ${RegisterCredentialsnew}[0] 
        Input Password    (//input[@id='name'])[2]    ${RegisterCredentialsnew}[3]
        Capture Page Screenshot
        Click Button   ${LoginSubmit_Button} 
        Sleep    2    
        Wait Until Page Contains Element    ${btn_MyAccount} 
        
login_Using_RegisteredMailid_with old password      
        Set Browser Implicit Wait    5    
        SeleniumLibrary.Input Text    //input[@id='name']   ${RegisterCredentialsold}[0]   
        Input Password    (//input[@id='name'])[2]    ${RegisterCredentialsold}[3] 
        Capture Page Screenshot
        Click Button  ${LoginSubmit_Button}
        Sleep    2    
        Capture Page Screenshot    
        
Click_login   
       Wait Until Element Is Visible    ${Login_Button}   
       Click Element     ${Login_Button}
       BuiltIn.Sleep    2    
       Capture Page Screenshot  
         
Click_FacebookLogin
        Set Browser Implicit Wait    5
        Click Element     ${Login_using_Facebook} 

FacebookLogin
        Click_login
        Set Browser Implicit Wait    5
        Click Element     ${Login_using_Facebook} 
        Run Keyword And Continue On Failure   Wait Until Page Contains    Accept cookies from Facebook on this browser?
        Run Keyword And Continue On Failure      Set Selenium Implicit Wait    10
        Run Keyword And Continue On Failure       Click Button    //*[@id="u_0_g"]              
        SeleniumLibrary.Input Text      ${FBemailid}    ${FBCredentials}[0]    
        Input Password    ${FBpassword}    ${FBCredentials}[1]    
        Click Element    ${FBSubmit}  
        Run Keyword And Continue On Failure     Handle Alert    Allow
        Run Keyword And Continue On Failure    Handle Alert    OK     
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
        SeleniumLibrary.Input Text    //input[@id='name']   ${LoginCredentials}[0]   
        Input Password    (//input[@id='name'])[2]     ${LoginCredentials}[1]
        Capture Page Screenshot
        Click Button   ${LoginSubmit_Button}
        BuiltIn.Sleep    2    

MerchantLogin_Form
        Set Browser Implicit Wait    5 
        SeleniumLibrary.Input Text    //input[@id='name']    bapachotestmerchant001@gmail.com
        Input Password    (//input[@id='name'])[2]    bapachomerchantpwd  
        Click Button    ${LoginSubmit_Button}  
       BuiltIn.Sleep    2          


Email_Registration
        Set Browser Implicit Wait    5
        Click Element       ${CreateAccount_Button}     
        SeleniumLibrary.Input Text      ${emailid}     ${RegisterCredentialsold}[0]
        SeleniumLibrary.Input Text     ${firstname}  ${RegisterCredentialsold}[1]
        SeleniumLibrary.Input Text     ${lastname}  ${RegisterCredentialsold}[2]
        Input Password   ${inputpassword}     ${RegisterCredentialsold}[3]
        Input Password   ${inputpasswordcheck}     ${RegisterCredentialsold}[4]  
        Capture Page Screenshot          
        Click Button    ${CreateAccount_SubmitButton}   
        BuiltIn.Sleep    2  
        Capture Page Screenshot         
    
Click_ForgotPassword
           
        Capture Element Screenshot    (//a[contains(@role,'button')])[4]
        Click Element    (//a[contains(@role,'button')])[4]
        BuiltIn.Sleep    2       
        SeleniumLibrary.Input Text      ${emailid}     ${RegisterCredentialsold}[0]
        Capture Page Screenshot    
        Click Button     ${btn_SubmitCategory_${Language}} 
        

ResetPassword
        Input Password    name=password      ${LoginCredentials}[1]    
        Input Password    name=password_chk    ${LoginCredentials}[1]  
        Capture Page Screenshot 
        Click Element     ${btn_Save}  
   
Click Download App - playstore
        Scroll Element Into View    ${Appicon_playstore}
        Capture Page Screenshot
        Click Element    ${Appicon_playstore}  
        Select Window    NEW
        Capture Page Screenshot
        BuiltIn.Sleep    2    
        
        
Click Download App - Appstore
        Scroll Element Into View    ${Appicon_Appstore}
        Capture Page Screenshot
        Click Element    ${Appicon_Appstore}
        Select Window    NEW
        Capture Page Screenshot 
        BuiltIn.Sleep    2    
       
Click_bakeries       
        Maximize Browser Window
        Click Element     ${btn_Bakeries_${Language}}
        BuiltIn.Sleep    2   


Click_favourites
        BuiltIn.Sleep    2  
        Click Element    //i[@class='far fa-heart']  
        BuiltIn.Sleep    2
        Wait Until Page Contains Element    (//i[contains(@class,'far fa-heart text-muted')])[1] 
        BuiltIn.Sleep    2   

Guestuser_Click_favourites
               
         Click Element    //i[contains(@class,'far fa-heart fa-2x')]
         Capture Page Screenshot    
         Wait Until Page Contains Element    ${Login_Button}   
         Click Button    //button[@aria-label='Close']  
         Capture Page Screenshot      
        
View_favourites
        Click Element    (//i[contains(@class,'far fa-heart text-muted')])[1] 
        BuiltIn.Sleep    2       
        Capture Page Screenshot    
    
Get_CurrrentLocation_Home   
        Scroll Element Into View    //input[@id='homeLocationTitle']  
        Capture Element Screenshot    //input[@id='homeLocationTitle']    
        Clear Element Text    //input[@id='homeLocationTitle']      
        Capture Element Screenshot    //input[@id='homeLocationTitle']   
        Set Selenium Implicit Wait    10 seconds
        Capture Page Screenshot
        Click Element    //i[contains(@class,'fas fa-lg fa-map-marker-alt')]
        Capture Element Screenshot    //input[@id='homeLocationTitle']  
        Set Selenium Implicit Wait    10 seconds
        Click Element    (//span[contains(@class,'hidden-xs')])[2]   
         BuiltIn.Sleep    2 
        Capture Page Screenshot   

Change_CurrentLocation_Home              
          
        Clear Element Text    //input[@id='homeLocationTitle']
        Capture Page Screenshot     
        BuiltIn.Sleep    2   
        SeleniumLibrary.Input Text    //input[@id='homeLocationTitle']    ${Change_CurrentLoction_BDP_${Language}}
        BuiltIn.Sleep    4  
        Click Element    ${Choose_Change_CurrentLoction_BDP_${Language}}   
        Capture Page Screenshot     
        BuiltIn.Sleep    2  
 
Open your shop
    
        Capture Page Screenshot 
        Click Element    ${Open your shop} 
        BuiltIn.Sleep    2          
        Input Text    ${company}    Test Merchant
        Input Text   ${name}    Automated merchant    
        Input Text    ${phone}        Automated merchant 
        Input Text     ${email}    nisha@inqadigital.com 
        Input Text     ${comments}   Automated merchant 
        Capture Page Screenshot    
        Click Element    ${btn_SubmitCategory_${Language}}
        Capture Page Screenshot

                    # Bakery Display Page
 
Type_To_Search_bakery
        # Click_bakeries
        # Click Element    ${search_button}
        SeleniumLibrary.Input Text    //input[@name='keywordInput']    ${MultishopMerchantName}
        Capture Page Screenshot    
        Click Element          ${search_button}
        BuiltIn.Sleep    2    
 
Type_To_Search_bakery with Online payment
        Sleep    4     
        Input Text      (//input[contains(@type,'text')])[2]        ${MultishopMerchantName}
        Click Element          ${search_button}
        BuiltIn.Sleep    2    

Type_to_search_bakery_nonhappy
        Click Element    ${search_button}
        SeleniumLibrary.Input Text    //input[@name='keywordInput']    Hello
        Click Element          ${search_button}
        BuiltIn.Sleep    2   
       Capture Page Screenshot    
        
Clear search bakery field 
        Capture Page Screenshot
        Click Element    //button[contains(@onclick,'clearSearchByKeyword();')]           

Change_CurrentLoction_BDP
        SeleniumLibrary.Input Text    //input[contains(@placeholder,'Address')]       ${Change_CurrentLoction_BDP_${Language}} 
        BuiltIn.Sleep    5
        Click Element    ${Choose_Change_CurrentLoction_BDP_${Language}}  
        BuiltIn.Sleep    2   
     
  
    
Filter Bakeries by Category
        Capture Page Screenshot    
        Drag And Drop   (//img[contains(@src,'120x70.jpg')])[4]    (//img[contains(@src,'120x70.jpg')])[7]          
        Click Element    (//img[contains(@src,'120x70.jpg')])[7]          
        BuiltIn.Sleep    2         
        Capture Page Screenshot        

Unselect Category Filter
        Click Element    (//img[contains(@src,'120x70.jpg')])[5]   
        Set Selenium Implicit Wait    10       
        Capture Page Screenshot 
        Click Element    (//img[contains(@src,'120x70.jpg')])[5]   
        Set Selenium Implicit Wait    10       
        Capture Page Screenshot       
        
        
Filter_by_Range from my location     
        Capture Page Screenshot    
        Drag And Drop By Offset  //div[contains(@id,'slider-range')]       107    393  
        BuiltIn.Sleep    1    
        Capture Page Screenshot
          
Filter_by_Deliver
        Click Element    //input[@value='pickup']
         BuiltIn.Sleep    2  
        Capture Page Screenshot
         
            
Filter_by_pickup
        Click Element    //input[@value='deliver'] 
         BuiltIn.Sleep    2   
        Capture Page Screenshot  
        
Filter_by_NowOpen
        Set Focus To Element    //input[@name='nowOpen']
        Scroll Element Into View    //input[@name='nowOpen']
        Click Element    //input[@name='nowOpen']    

Filter_by_OrderOnline
        Set Focus To Element    //input[@name='orderOnline']
        Click Element    //input[@name='nowOpen'] 
        Click Element    //input[@name='orderOnline']    

Select bakery using multiple filter
        Sleep    2
        Click Element          (//a[contains(@class,'quickAddToCart')])[1]  

Select a bakery from list
        BuiltIn.Sleep    2       
        Click Element    (//div[@class='text-success'])[1]
         BuiltIn.Sleep    2 
        Capture Page Screenshot    

         
PDP_AddtoCart
      
        #Scroll Element Into View    (//div[@class='productCard'])[1]  
        Click Element    (//i[@class='fas fa-plus fa-fw'])  
        BuiltIn.Sleep    1   
        Click Element    (//i[@class='fas fa-plus fa-fw']) 
        BuiltIn.Sleep    1    
        Click Element    (//i[@class='fas fa-plus fa-fw'])
        BuiltIn.Sleep    2  
        Click Element    (//i[@class='fas fa-plus fa-fw'])
        BuiltIn.Sleep    2  
        Click Element    (//i[@class='fas fa-plus fa-fw'])
        Capture Page Screenshot   

        

                        # Product Display page
Capture show more information
      Capture Element Screenshot     ${ShowmoreInfo}                    
   
Click show more information
    
        Execute JavaScript    window.scrollTo(155,869)  
        Scroll Element Into View    ${ShowmoreInfo}
        Set Focus To Element    ${ShowmoreInfo}
        Capture Element Screenshot     ${ShowmoreInfo}    
        Capture Page Screenshot    
        Click Element    ${ShowmoreInfo}
        BuiltIn.Sleep    2      
        Capture Page Screenshot    
        Set Browser Implicit Wait    5
        Click Element  ${btn_Close}     
       
Click bakery phone number
    
         Click Element    (//a[contains(@role,'button')])[3]
         BuiltIn.Sleep    5  
         Capture Page Screenshot                  
    
Filter Products by Category
        Capture Page Screenshot                
        Click Element    (//a[contains(@class,'supplierCategoriesFilter ')])[2]        
        BuiltIn.Sleep    2         
        Capture Page Screenshot  
         
Click 'i' for product information
        Click Element    (//div[contains(@class,'title')])[3]    
        # Click Element    (//i[contains(@class,'fas fa-info fa-fw')])[1]        
          BuiltIn.Sleep    2  
          Capture Page Screenshot 
           Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
         Capture Page Screenshot   

Click add to cart button
         Set Browser Implicit Wait    5
         Click Element    //button[@onclick='addToCart(this)']
          BuiltIn.Sleep    2 
         Capture Page Screenshot        


                      # Cart 



PDP_Add product Quantity
         Set Browser Implicit Wait    5
         Click Element    //div[@id='cartSummaryBody']/div[2]/table/tbody/tr/td[2]/div[4]/i    
         
PDP_Minus product Quantity
          Set Browser Implicit Wait    5
         Click Element    //div[@id="cartSummaryBody"]/div[2]/table/tbody/tr/td[2]/div[3]/i
         Capture Page Screenshot    

Type Product quantity
          BuiltIn.Sleep    1       
          Capture Page Screenshot   
          Clear Element Text    //input[contains(@type,'number')] 
          Input Text    //input[contains(@type,'number')]    27 
          Sleep    2    
          # Press Keys      //input[contains(@type,'number')]     ENTER 
          # Capture Page Screenshot     
          BuiltIn.Sleep    1     
          Click Element    ${btn_Checkout}
          
Delete Product Quantity
        Set Browser Implicit Wait    5
        Capture Element Screenshot    //i[contains(@class,'fas fa-trash fa-lgf fa-fw text-lightmuted')]    
        Click Element    //i[contains(@class,'fas fa-trash fa-lgf fa-fw text-lightmuted')]   
        Capture Page Screenshot     


PDP_Click_Checkout
        
         Click Element   //div[@id='cartSummaryBody']/div[2]/table/tbody/tr/td[2]/div[4]/i
         Click Element    ${btn_Checkout}
         Capture Page Screenshot
                
Type Product quantity_Checkout
          BuiltIn.Sleep    1       
          Capture Page Screenshot
         Input Text    //input[contains(@type,'number')]    27        
          Sleep    3    
          Click Element     (//div[contains(@class,'updateQButton')])[3]
         # Press Keys      //input[contains(@type,'number')]     ENTER 
          Capture Page Screenshot  
          Click Element    orderAcceptance    

                   # Checkout page
                   
Choose_delivery
        BuiltIn.Sleep    2    
        Click Element    ${ChooseDeliver}
        Capture Page Screenshot    
       


Guestuser_Fill_Checkoutpage
         BuiltIn.Sleep    2  
         Select From List By Index     //select[@id='date']   0  
         BuiltIn.Sleep    2    
         Select From List By Index      //select[@id='time']    3
         BuiltIn.Sleep    2     
         Capture Page Screenshot  
         SeleniumLibrary.Input Text    //input[@id='firstname']    ${GuestUser_${Language}}[0]    
         SeleniumLibrary.Input Text    //input[@id='lastname']     ${GuestUser_${Language}}[1]     
         SeleniumLibrary.Input Text    //input[@id='email']        ${GuestUser_${Language}}[2]    
         Input Text    name=address    ${GuestUser_${Language}}[3]  
        # Input Text    name=addressLine2        ${GuestUser_${Language}}[4]  
         Input Text    name=postal    ${GuestUser_${Language}}[5]      
         Input Text    name=city    ${GuestUser_${Language}}[6]              
         SeleniumLibrary.Input Text    //input[@id='phone']    ${GuestUser_${Language}}[7]  
         Capture Page Screenshot 

User_Fill_Checkoutpage
         BuiltIn.Sleep    2 
       # Wait Until Element Is Visible    //select[@id='date']               
         BuiltIn.Sleep    2 
         Select From List By Index     //select[@id='date']   0 
         BuiltIn.Sleep    2          
        # Wait Until Page Contains Element    //select[@id='time']    
         Select From List By Index      //select[@id='time']    0
         # Input Text    //input[contains(@id,'address')]   ${GuestUser_${Language}}[3]  
         # Input Text    //input[contains(@id,'postal')]    ${GuestUser_${Language}}[4] 
         # Input Text   //input[contains(@id,'city')]     ${GuestUser_${Language}}[5]
         # Input Text    //input[contains(@type,'tel')]    ${GuestUser_${Language}}[7]    
            
         
Guestuser_FBLogin_in_Checkoutpage         
         Sleep    2     
         Select From List By Index     //select[@id='date']   0  
         Select From List By Index      //select[@id='time']    4   
         Scroll Element Into View    //a[contains(text(),'Login using Facebook')]
         Click Element   //a[contains(text(),'Login using Facebook')]    
         FacebookLogin_in_Checkoutpage
  
Guestuser_Login_in_Checkoutpage 
         Sleep    2     
         Select From List By Index     //select[@id='date']   0  
         Select From List By Index      //select[@id='time']    4   
         Input Text    email    ${LoginCredentials}[0]
         Click Element    //input[contains(@type,'tel')]     
         Click Element    ${Checkout_LoginButton}  
         EmailLogin         

Guestuser_CreateAccount_in_Checkoutpage
        Guestuser_Fill_Checkoutpage
         Input Text    email    ${RegisterCredentialsCheckout}[0]
         Click Element    //input[contains(@type,'tel')] 
         Input Text    ${inputpassword}      ${RegisterCredentialsCheckout}[1]
         Input Text    ${inputpasswordcheck}    ${RegisterCredentialsCheckout}[1]         
       
Click_Terms&Condition
         BuiltIn.Sleep    2  
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link    (//a[contains(@target,'_blank')])[1]
        Capture Page Screenshot    
        Select Window    NEW
        BuiltIn.Sleep    2
        Capture Page Screenshot    
              
     
Click_T&C_Checkbox  
         #Scroll Element Into View    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    payment_method    payment_method2
         Page Should Contain Checkbox    //input[@id='terms']    
         Select Checkbox    //input[@id='terms'] 
         Capture Element Screenshot    //input[@id='terms']   
         Sleep    2  
                      # My Account
Check_T&C_NonHappy
        
         
         Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    payment_method    payment_method1
         Page Should Contain Checkbox    //input[@id='terms']    
        # Select Checkbox    //input[@id='terms']  
         Click Button    ${btn_Submit_${Language}}
         BuiltIn.Sleep    2    
         Capture Page Screenshot        
         Close Browser
         
Click Submit button
    Click Button     ${btn_Save}

Cashpay_OrderNow
            
         Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    payment_method    payment_method_cash
         Page Should Contain Checkbox    //input[@id='terms']    
         Select Checkbox    //input[@id='terms']  
         Click Button    //button[contains(@type,'submit')]
         BuiltIn.Sleep    2    
         Capture Page Screenshot
         Click Element    //button[contains(.,'OK')] 
         BuiltIn.Sleep    5   
         Capture Page Screenshot  
         

Cardpay_OrderNow
        
         Scroll Element Into View    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    payment_method   payment_method_card 
         Page Should Contain Checkbox    //input[@id='terms']    
         Select Checkbox    //input[@id='terms']  
         Click Button     //button[contains(@type,'submit')]
         BuiltIn.Sleep    2   
         Click Element    //button[contains(.,'OK')]
         BuiltIn.Sleep    2       
         BuiltIn.Sleep    2    
         Capture Page Screenshot

         
Onlinepay_Ordernow
        BuiltIn.Sleep    2    
         Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)   
         Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    payment_method    payment_method0
         Page Should Contain Checkbox    //input[@id='terms']    
         Select Checkbox    //input[@id='terms']  
         Click Button    //button[contains(@type,'submit')]
          BuiltIn.Sleep    2    
         Capture Page Screenshot

iDEAL_Online_payment_process         
          BuiltIn.Sleep    5  
         Click Element    //button[contains(@id,'ideal-tab')]   
         Select From List By Label      //select[contains(@id,'idealBank')]     ABN Amro   
         BuiltIn.Sleep    1         
         SeleniumLibrary.Input Text    name=billingName    Eswari Nisha Balakrishnan 
         Capture Page Screenshot    
         Click Element    //div[contains(@class,'SubmitButton-IconContainer')]  
         Set Browser Implicit Wait    10
         Wait Until Page Contains    iDEAL test payment page     
         Click Element    //button[contains(.,'Authorize Test Payment')]    
         BuiltIn.Sleep    10    
         Capture Page Screenshot  
         

Card_Online_payment_process
         BuiltIn.Sleep    2    
        # Click Element    //button[contains(@id,'card-tab')]    
         SeleniumLibrary.Input Text    name=cardNumber    4242 4242 4242 4242    
         SeleniumLibrary.Input Text    name=cardExpiry    02/22
         SeleniumLibrary.Input Text    name=cardCvc    222
         SeleniumLibrary.Input Text    billingName    Eswari Nisha Balakrishnan    
         Select From List By Label      //select[@id='billingCountry']     Netherlands
         Capture Page Screenshot
         Click Element    //div[contains(@class,'SubmitButton-IconContainer')]  
         BuiltIn.Sleep    10    
        Capture Page Screenshot                     

Giropay_Online_payment_process
         BuiltIn.Sleep    2 
         Click Element   //button[contains(@id,'giropay-tab')]
         SeleniumLibrary.Input Text    billingName    Eswari Nisha Balakrishnan
         Set Browser Implicit Wait    5
         Click Element    //div[contains(@class,'SubmitButton-IconContainer')]  
         Set Browser Implicit Wait    310
         Wait Until Page Contains    giropay test payment page     
         Capture Page Screenshot
         Click Element    //button[contains(.,'Authorize Test Payment')]    
         BuiltIn.Sleep    2    
         Capture Page Screenshot

Click back while Online pay 
        BuiltIn.Sleep    2 
        Click Element    //span[contains(text(),'Back')]    
        Wait Until Page Contains    Order incomplete  
        Capture Page Screenshot      
        





                                    # Order Confirmation Page
                                    
Add to Calender
         Capture Page Screenshot    
        Click Element   (//a[contains(@target,'blank')])[1]
         BuiltIn.Sleep    2 
        Capture Page Screenshot
        

SupportForm
        Click Element    (//a[contains(@role,'button')])[2] 
        Set Browser Implicit Wait    10 
        SeleniumLibrary.Input Text    //textarea[contains(@name,'comments')]    "Test Automation - Test question"    
        Capture Page Screenshot    
        Click Element    //button[contains(@class,'btn btn-block btn-info-dark')]    
       
                                 # My Account

Click_MyAccount
        Click Element   ${btn_MyAccount}
        Capture Page Screenshot     
        
Edit_Mydetails
        SeleniumLibrary.Input Text    //*[@id="firstname"]    ${GuestUser_${Language}}[0]
        SeleniumLibrary.Input Text    //*[@id="lastname"]    ${GuestUser_${Language}}[1]
        SeleniumLibrary.Input Text    //*[@id="address"]    ${GuestUser_${Language}}[3]
       # SeleniumLibrary.Input Text    columns[addressLine2]    ${GuestUser_${Language}}[4]
        SeleniumLibrary.Input Text      columns[postal]       ${GuestUser_${Language}}[5]
        SeleniumLibrary.Input Text     columns[city]    ${GuestUser_${Language}}[6]
        SeleniumLibrary.Input Text     columns[phone]    ${GuestUser_${Language}}[7]
        Capture Page Screenshot
        Set Focus To Element   ${btn_Save}
        Scroll Element Into View    ${btn_Save}
        Click Button    ${btn_Save}   
        Capture Page Screenshot             
        Click Element    (//button[contains(@type,'button')])[2]    
       
        
Click_MyFavorites
        Click Element    (//a[contains(@class,'list-group-item ')])[2] 
        BuiltIn.Sleep    2 
        Capture Page Screenshot    

View_MyFavorites
         
        BuiltIn.Sleep    2  
        Click Element    (//div[contains(@class,'info')])[1] 
        Capture Page Screenshot      
        
Click_Myorders
        Click Element    (//a[contains(@class,'list-group-item ')])[3]  
        Capture Page Screenshot     
         BuiltIn.Sleep    2          

View_MyOrders
       
        Click Element    (//a[contains(@class,'list-group-item')])[4]  
        BuiltIn.Sleep    2  
        Capture Page Screenshot      
        
View_MyOrders_Refunded Order
        Click Element    (//a[contains(@class,'list-group-item')])[5]  
        Wait Until Page Contains    My order 
        BuiltIn.Sleep    2    
        Capture Page Screenshot         
        
        
Download_OrderConfirmation
        # Set Focus To Element    //button[contains(.,'Download Confirmation')]
        
        Scroll Element Into View    //i[contains(@class,'far fa-file-pdf fa-fw')] 
        BuiltIn.Sleep    2  
        Capture Page Screenshot     
        Click Element    //i[contains(@class,'far fa-file-pdf fa-fw')]    
        #view downloaded file - YET TO DO
        
Repeat_Order
        # Set Focus To Element    //button[contains(.,'Repeat order')]
        Scroll Element Into View    //button[contains(@onclick,'repeatOrder();')]
        Capture Page Screenshot           
        Click Element    //button[contains(@onclick,'repeatOrder();')]
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Capture Page Screenshot            

Click_logout
        Capture Page Screenshot
        Capture Element Screenshot    //a[@href='/logout.php']   
        Click Element    //a[@href='/logout.php']                    
        
                          
                       # FOOTER
                       
About us
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link   ${AboutUs_${Language}}  
        BuiltIn.Sleep    2 
        Capture Page Screenshot    
        

Login As Merchant_Footer
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Scroll Element Into View    (//a[@role='button'])[4]
        Click Link    (//a[@role='button'])[4]   
        BuiltIn.Sleep    2 
        Capture Page Screenshot 

Terms and Condition
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link  ${T&C_${Language}}                
        BuiltIn.Sleep    2 
        Capture Page Screenshot 


Privacy Statement
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link     ${PrivacyStatement_${Language}}
        Wait Until Page Contains     Bapacho Privacy Statement
        Capture Page Screenshot

FAQ
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link     //a[contains(text(),'FAQ')]
        BuiltIn.Sleep    2 
        Capture Page Screenshot

Support_Footer
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link     (//a[contains(@role,'button')])[5]
        BuiltIn.Sleep    2  

Support_Form_Footer
        SeleniumLibrary.Input Text    //input[contains(@name,'name')]    Eswari Nisha
        SeleniumLibrary.Input Text    //input[contains(@name,'phone')]    +31612809787
        SeleniumLibrary.Input Text    //input[contains(@name,'email')]    nisha@inqadigital.com    
        SeleniumLibrary.Input Text    //textarea[contains(@name,'comments')]    "Test automation- Testing Support form in footer"     
        Click Button   //button[contains(@class,'btn btn-block btn-info-dark')]     

Blog    
         Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Element    //a[contains(.,'Blog')]
        Sleep    2    
        Capture Page Screenshot    
        Click Element    (//img[contains(@class,'media-object')])[1]        
        Sleep    2    
        Capture Page Screenshot 
        Click Element    (//h4[contains(@class,'media-heading')])[2]    
        Sleep    2    
        Capture Page Screenshot 


Bapacho_FB_icon
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link    (//a[contains(@class,'socialLink')])[1]    
        Sleep    4    
       
Bapacho_Instagram_icon
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Click Link    (//a[contains(@class,'socialLink')])[2]    
        Sleep    4   


                    #Landing Page
   
Open_Landingpage          
       Open Browser   ${BapachoLangingpage_URL_${Language}}     ${Chrome}
       Maximize Browser Window
       Capture Page Screenshot
            
Subscribe to Newsletter
    Input Text    ${Subscribetonewsletter}    ${GuestUser_${Language}}[2]   
    Click Element  ${Signup}
    Capture Page Screenshot    
    Sleep    2   
    Click Element    ${OK_Button}    
     
    
View bakery in landingpage
    Sleep    2     
    Click Element    ${Ordernow} 
    Sleep    2    
    Capture Page Screenshot
    Go Back

                       # Other


OpenYopMailinchrome
         Open Browser    http://www.yopmail.com/en/    chrome
    
OpenGmail
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    identifierId    nisha@inqadigital.com  
        Click Element    //div[contains(@class,'VfPpkd-RLmnJb')]    
        Sleep    2
        Input Password    //input[contains(@type,'password')]    Vinikrish_1   
        Sleep    2 
        Click Element    (//div[contains(@class,'VfPpkd-RLmnJb')])[1]    
        Sleep    10
        Click Element    //tr[contains(@id,':1n')]    
        BuiltIn.Sleep    2    
        Capture Page Screenshot
        Click Link       //a[contains(.,'https://multishop.bapacho.com/activateShop.php?gu')]
        Sleep    2

Check_CustomerActivation_mail
        SeleniumLibrary.Input Text    name=login    ${RegisterCredentialsold}[0] 
        Click Button    //input[contains(@class,'sbut')]    
        Wait Until Page Contains    Inbox    
        Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)         
        Select Frame    //iframe[@id='ifmail']
        BuiltIn.Sleep    2    
        Capture Page Screenshot
        Click Element    //a[contains(text(),'https://staging.bapacho.com/activateAccount.php?gu')]
        
  
Check_ForgtPassword_mail
        SeleniumLibrary.Input Text    name=login    ${RegisterCredentialsold}[0] 
        Click Button    //input[contains(@class,'sbut')]    
        Wait Until Page Contains    Inbox    
        Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)     
        Capture Page Screenshot        
        Select Frame    //iframe[@id='ifmail']
        Click Element    ${ForgotPasswordMailLink_${Language}}      
        Select Window    NEW
        
Check_OrderReceived_mail
        SeleniumLibrary.Input Text    name=login    ${RegisterCredentialsnew}[0] 
        Click Button    //input[contains(@class,'sbut')]    
        Wait Until Page Contains    Inbox    
        Execute JavaScript    window.scrollBy(0, document.body.scrollHeight)     
        Capture Page Screenshot        
        Select Frame    //iframe[@id='ifmail']
        Page Should Contain    ${RegisterCredentialsnew}[1]
        Page Should Contain     ${MerchantName_${Language}}    
             
        
        

        

                        
            