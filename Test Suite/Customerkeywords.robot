*** Settings ***
Library    SeleniumLibrary

Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot
#Resource     Merchantkeywords.robot

***Keyword***

                # Home Page

Open_Bapachosite
        Open Browser   ${Multishop_URL_${Language}}     ${Chrome}
        Maximize Browser Window
        Change_CurrentLocation_Home
        
Open MultishopHomePage
        Open Browser   ${Multishop_URL_${Language}}     ${Chrome}
        Maximize Browser Window
        Sleep    2
        #Change_CurrentLocation_Home
        
testhomepage
        Open Browser   ${Multishop_URL_${Language}}     ${Chrome}
        Maximize Browser Window


login_Using_RegisteredMailid      
        Set Browser Implicit Wait    5    
        SeleniumLibrary.Input Text    ${emailid}    ${RegisterCredentialsnew}[0] 
        Input Password    ${Registerpassword}    ${RegisterCredentialsnew}[3]
        Capture Page Screenshot
        Click Button   ${LoginSubmit_Button} 
        Sleep    2    
        Wait Until Page Contains Element    ${btn_MyAccount} 
        
login_Using_RegisteredMailid_with old password      
        Set Browser Implicit Wait    5    
       SeleniumLibrary.Input Text    ${emailid}    ${RegisterCredentialsnew}[0] 
        Input Password    ${Registerpassword}    ${RegisterCredentialsnew}[3]
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
        Run Keyword And Continue On Failure   Wait Until Page Contains    ${acceptcookieslabel}
        Run Keyword And Continue On Failure      sleep    4
        Run Keyword And Continue On Failure       Click Button    ${fbcookiesaccept}             
        SeleniumLibrary.Input Text      ${FBemailid}    ${FBCredentials}[0]    
        Input Password    ${FBpassword}    ${FBCredentials}[1]    
        Click Element    ${FBSubmit}  
        Run Keyword And Continue On Failure     Handle Alert    Allow
        Run Keyword And Continue On Failure    Handle Alert    OK     
        BuiltIn.Sleep    2  
        
FacebookLogin_in_Checkoutpage
        Wait Until Page Contains     ${acceptcookieslabel}
        Set Selenium Implicit Wait    10
        Click Button     ${fbcookiesaccept}              
        SeleniumLibrary.Input Text      ${FBemailid}    ${FBCredentials}[0]    
        Input Password    ${FBpassword}    ${FBCredentials}[1]    
        Click Element    ${FBSubmit}       
        Set Browser Implicit Wait    10   

EmailLogin   
        Set Browser Implicit Wait    5    
        SeleniumLibrary.Input Text    ${emailid}    ${RegisterCredentialsnew}[0] 
        Input Password    ${Registerpassword}    ${RegisterCredentialsnew}[3]
        Capture Page Screenshot
        Click Button   ${LoginSubmit_Button}
        BuiltIn.Sleep    2    

MerchantLogin_Form
        Set Browser Implicit Wait    5 
        SeleniumLibrary.Input Text    ${emailid}    bapachotestmerchant001@gmail.com
        Input Password    ${Registerpassword}    bapachomerchantpwd  
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
           
        Capture Element Screenshot    ${forgotpassword}
        Click Element    ${forgotpassword}
        BuiltIn.Sleep    2       
        SeleniumLibrary.Input Text      ${emailid}     ${RegisterCredentialsold}[0]
        Capture Page Screenshot    
        Click Button     ${btn_SubmitCategory_${Language}} 
        

ResetPassword
        Input Password    ${newpassword}      ${LoginCredentials}[1]    
        Input Password    ${newpasswordcheck}    ${LoginCredentials}[1]  
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
        Click Element    ${favhearticon}   
        BuiltIn.Sleep    2
        Wait Until Page Contains Element    ${viewfavorites} 
        BuiltIn.Sleep    2   

Guestuser_Click_favourites
               
         Click Element    ${guestclickfav}
         Capture Page Screenshot    
         Wait Until Page Contains Element    ${Login_Button}   
         Click Button    ${closeloginpopup}  
         Capture Page Screenshot      
        
View_favourites
        Click Element    ${viewfavorites} 
        BuiltIn.Sleep    2       
        Capture Page Screenshot    
    
Get_CurrrentLocation_Home   
        Scroll Element Into View    ${homelocationtitle}  
        Capture Element Screenshot    ${homelocationtitle}    
        Clear Element Text    ${homelocationtitle}      
        Capture Element Screenshot    ${homelocationtitle}   
        Sleep    2
        Capture Page Screenshot
        Click Element    ${getcurrentlocationicon}
        Capture Element Screenshot    ${homelocationtitle}   
        Sleep    2
        Click Element    ${serachusinglocation}   
        BuiltIn.Sleep    2 
        Capture Page Screenshot   

Change_CurrentLocation_Home              
          
        Clear Element Text    ${homelocationtitle} 
        Capture Page Screenshot     
        BuiltIn.Sleep    2   
        SeleniumLibrary.Input Text    ${homelocationtitle}     ${Change_CurrentLoction_BDP_${Language}}
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
        SeleniumLibrary.Input Text    ${Searchbakeryinputfield}    ${MultishopMerchantName}
        Capture Page Screenshot    
        Click Element          ${search_button}
        BuiltIn.Sleep    2    
 
Type_To_Search_bakery with Online payment
        Sleep    4     
        Input Text      ${Searchbakeryinputfield}        ${MultishopMerchantName}
        Click Element          ${search_button}
        BuiltIn.Sleep    2    

Type_to_search_bakery_nonhappy
        Click Element    ${search_button}
        SeleniumLibrary.Input Text    ${Searchbakeryinputfield}    Hello
        Click Element          ${search_button}
        BuiltIn.Sleep    2   
       Capture Page Screenshot    
        
Clear search bakery field 
        Capture Page Screenshot
        Click Element    ${Clearsearchbakeryfield}           

Change_CurrentLoction_BDP
        SeleniumLibrary.Input Text    ${changelocation_in_search}       ${Change_CurrentLoction_BDP_${Language}} 
        BuiltIn.Sleep    5
        Click Element    ${Choose_Change_CurrentLoction_BDP_${Language}}  
        BuiltIn.Sleep    2   
     
  
    
Filter Bakeries by Category
        Capture Page Screenshot    
        Drag And Drop       ${filterbycategory_1}    ${filterbycategory_2}          
        Click Element    ${filterbycategory_2}            
        BuiltIn.Sleep    2         
        Capture Page Screenshot        

Unselect Category Filter
        Click Element       ${filterbycategory_3}
        Set Selenium Implicit Wait    10       
        Capture Page Screenshot 
        Click Element    ${filterbycategory_3}   
        Set Selenium Implicit Wait    10       
        Capture Page Screenshot       
        
        
Filter_by_Range from my location     
        Capture Page Screenshot    
        Drag And Drop By Offset   ${Range}       107    393  
        BuiltIn.Sleep    1    
        Capture Page Screenshot
          
Filter_by_Deliver
        Click Element    ${pickupcheckbox}
         BuiltIn.Sleep    2  
        Capture Page Screenshot
         
            
Filter_by_pickup
        Click Element    ${deliverycheckbox} 
         BuiltIn.Sleep    2   
        Capture Page Screenshot  
        
Filter_by_NowOpen
        Set Focus To Element    ${nowopencheckbox}
        Scroll Element Into View    ${nowopencheckbox}
        Click Element    ${nowopencheckbox}    

Filter_by_OrderOnline
        Set Focus To Element    ${noworderonline}
        Click Element     ${nowopencheckbox} 
        Click Element    ${noworderonline}    

Select bakery using multiple filter
        Sleep    2
        Click Element          ${choosebakery_multiplefilter}  

Select a bakery from list
        BuiltIn.Sleep    2       
        Click Element    ${choosebakery}
         BuiltIn.Sleep    2 
        Capture Page Screenshot    

         
PDP_AddtoCart
        
      
        #Scroll Element Into View    (//div[@class='productCard'])[1]  
        Run Keyword If    '${Language}'=='RO'    Repeat Keyword    15    Click Element    ${Addtocart +}        
        Click Element    ${Addtocart +}  
        BuiltIn.Sleep    1   
        Click Element    ${Addtocart +} 
        BuiltIn.Sleep    1    
        Click Element    ${Addtocart +}
        BuiltIn.Sleep    2  
        Click Element    ${Addtocart +}
        BuiltIn.Sleep    2  
        Click Element    ${Addtocart +}
        BuiltIn.Sleep    2  
        Click Element    ${Addtocart +}
        BuiltIn.Sleep    2  
        Click Element    ${Addtocart +}
        BuiltIn.Sleep    2  
        Click Element    ${Addtocart +}
        BuiltIn.Sleep    2  
        Click Element    ${Addtocart +}
        BuiltIn.Sleep    2  
        Click Element    ${Addtocart +}
        Sleep    3
        Capture Page Screenshot  
        Click Element    ${carticon}    

        

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
    
         Click Element    ${clickbakersphonenumber}
         BuiltIn.Sleep    5  
         Capture Page Screenshot                  
    
Filter Products by Category
        Capture Page Screenshot                
        Click Element    ${filterproductbycategory}        
        BuiltIn.Sleep    2         
        Capture Page Screenshot  
         
Click 'i' for product information
        Click Element    ${i}     
        # Click Element    (//i[contains(@class,'fas fa-info fa-fw')])[1]        
        BuiltIn.Sleep    2  
        Capture Page Screenshot 
        Execute JavaScript    ${scrolldown}
        Capture Page Screenshot   

Click add to cart button
         Set Browser Implicit Wait    5
         Click Element    ${Addtocartproductlevel}
          BuiltIn.Sleep    2 
         Capture Page Screenshot        


                      # Cart 



PDP_Add product Quantity
         Set Browser Implicit Wait    5
         Click Element    ${+}
         Click Element    ${-}
         Capture Page Screenshot    

Type Product quantity
          BuiltIn.Sleep    1       
          Capture Page Screenshot   
          Clear Element Text    ${inputproductprice} 
          Input Text    ${inputproductprice}     27 
          Sleep    2    
          # Press Keys      //input[contains(@type,'number')]     ENTER 
          # Capture Page Screenshot     
          BuiltIn.Sleep    1     
          Click Element    ${btn_Checkout}
          
Delete Product Quantity
        Set Browser Implicit Wait    5
        Capture Element Screenshot    ${deleteproduct_in_cart}    
        Click Element    ${deleteproduct_in_cart}   
        Capture Page Screenshot     


PDP_Click_Checkout
        
         Click Element    ${+}
         Sleep    2
         Click Element    ${btn_Checkout}
         Capture Page Screenshot
         Get Window Titles    CURRENT
         Get Locations    
         
                
Type Product quantity_Checkout
          BuiltIn.Sleep    1       
          Capture Page Screenshot
         Input Text    ${inputproductprice}     27        
          Sleep    3    
          Click Element     ${inputproductpricecheckout}
         # Press Keys      //input[contains(@type,'number')]     ENTER 
          Capture Page Screenshot  
          Click Element    ${orderacceptance}    

                   # Checkout page
                   
Choose_delivery
        BuiltIn.Sleep    2    
        Click Element    ${ChooseDeliver}
        Capture Page Screenshot    
       


Guestuser_Fill_Checkoutpage
         BuiltIn.Sleep    2  
         Select From List By Index     ${fill_in_date}   0  
         BuiltIn.Sleep    2    
         Select From List By Index      ${fill_in_time}    3
         BuiltIn.Sleep    2     
         Capture Page Screenshot  
         SeleniumLibrary.Input Text    ${fill_in_firstname}    ${GuestUser_${Language}}[0]    
         SeleniumLibrary.Input Text    ${fill_in_lastname}     ${GuestUser_${Language}}[1]     
         SeleniumLibrary.Input Text    ${fill_in_email}        ${GuestUser_${Language}}[2]    
         Input Text    ${fill_in_address}    ${GuestUser_${Language}}[3]  
        # Input Text    name=addressLine2        ${GuestUser_${Language}}[4]  
         Input Text    ${fill_in_postal}    ${GuestUser_${Language}}[5]      
         Input Text    ${fill_in_city}    ${GuestUser_${Language}}[6]              
         SeleniumLibrary.Input Text    ${fill_in_phone}    ${GuestUser_${Language}}[7]  
         Capture Page Screenshot 

User_Fill_Checkoutpage
         BuiltIn.Sleep    2 
       # Wait Until Element Is Visible    //select[@id='date']               
         BuiltIn.Sleep    2 
         Select From List By Index     ${fill_in_date}   0 
         BuiltIn.Sleep    2          
        # Wait Until Page Contains Element    //select[@id='time']    
         Select From List By Index      ${fill_in_time}    0
         # Input Text    //input[contains(@id,'address')]   ${GuestUser_${Language}}[3]  
         # Input Text    //input[contains(@id,'postal')]    ${GuestUser_${Language}}[4] 
         # Input Text   //input[contains(@id,'city')]     ${GuestUser_${Language}}[5]
         # Input Text    //input[contains(@type,'tel')]    ${GuestUser_${Language}}[7]    
            
         
Guestuser_FBLogin_in_Checkoutpage         
         Sleep    2     
         Select From List By Index     ${fill_in_date}   0  
         Select From List By Index       ${fill_in_time}    4   
         Scroll Element Into View    ${FBLoginButton}
         Click Element   ${FBLoginButton}    
         FacebookLogin_in_Checkoutpage
  
Guestuser_Login_in_Checkoutpage 
         Sleep    2     
         Select From List By Index     ${fill_in_date}   0  
         Select From List By Index      ${fill_in_time}    4   
         Input Text    ${fill_in_email}    ${LoginCredentials}[0]
         Click Element    ${clicklogin_in_checkout}      
         Click Element    ${Checkout_LoginButton}  
         EmailLogin         

Guestuser_CreateAccount_in_Checkoutpage
        Guestuser_Fill_Checkoutpage
         Input Text    ${fill_in_email}    ${RegisterCredentialsCheckout}[0]
         Click Element    ${clicklogin_in_checkout}  
         Input Text    ${inputpassword}      ${RegisterCredentialsCheckout}[1]
         Input Text    ${inputpasswordcheck}    ${RegisterCredentialsCheckout}[1]         
       
Click_Terms&Condition
         BuiltIn.Sleep    2  
        Execute JavaScript    ${scrolldown}
        Click Link    ${T&C link}
        Capture Page Screenshot    
        Select Window    NEW
        BuiltIn.Sleep    2
        Capture Page Screenshot    
              
     
Click_T&C_Checkbox  
         #Scroll Element Into View    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    ${paymentmethod}    ${paymentmethod2}
         Page Should Contain Checkbox    ${T&C}    
         Select Checkbox    ${T&C} 
         Capture Element Screenshot    ${T&C}   
         Sleep    2  
                      # My Account
Check_T&C_NonHappy
        
         
         Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    ${paymentmethod}    ${paymentmethod1}
         Page Should Contain Checkbox    ${T&C}    
        # Select Checkbox    //input[@id='terms']  
         Click Button    ${btn_Submit_${Language}}
         BuiltIn.Sleep    2    
         Capture Page Screenshot        
         Close Browser
         
Click Submit button
    Click Button     ${btn_Save}

Cashpay_OrderNow
            
        # Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    ${paymentmethod}    ${payment_method_cash}
         Page Should Contain Checkbox    ${T&C}    
         Select Checkbox    ${T&C}  
         Click Button    ${submitbutton}
         BuiltIn.Sleep    2    
         Capture Page Screenshot
         Click Element    ${OK}  
         BuiltIn.Sleep    5   
         Capture Page Screenshot  
         

Cardpay_OrderNow
        
        # Scroll Element Into View    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button     ${paymentmethod}    ${payment_method_card} 
         Page Should Contain Checkbox    ${T&C}    
         Select Checkbox    ${T&C}  
         Click Button     ${submitbutton}
         BuiltIn.Sleep    2   
         Click Element    ${OK} 
         BuiltIn.Sleep    2       
         BuiltIn.Sleep    2    
         Capture Page Screenshot

         
Onlinepay_Ordernow
         BuiltIn.Sleep    2    
         Execute JavaScript    ${scrolldown}   
        #Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button     ${paymentmethod}    ${payment_method_online}
         Page Should Contain Checkbox    ${T&C}      
         Select Checkbox    ${T&C}    
         Click Button    ${submitbutton}
         BuiltIn.Sleep    2    
         Capture Page Screenshot
         
Card_Online_payment_process
         BuiltIn.Sleep    2    
        # Click Element    //button[contains(@id,'card-tab')]    
         SeleniumLibrary.Input Text    ${cardnumber}     4242 4242 4242 4242    
         SeleniumLibrary.Input Text    ${cardExpiry}     02/22
         SeleniumLibrary.Input Text    ${cvc}    222
         SeleniumLibrary.Input Text    ${billingname}    Eswari Nisha Balakrishnan    
         Select From List By Label      ${billingcountry}     Netherlands
         Capture Page Screenshot
         Click Element    ${pay}   
         BuiltIn.Sleep    10    
        Capture Page Screenshot 

iDEAL_Online_payment_process         
          BuiltIn.Sleep    5  
         Click Element    ${idealtab}   
         Select From List By Label      ${selectideal}     ABN Amro   
         BuiltIn.Sleep    1         
         SeleniumLibrary.Input Text    ${billingname}    Eswari Nisha Balakrishnan 
         Capture Page Screenshot    
         Click Element    ${pay}  
         Set Browser Implicit Wait    10
         Wait Until Page Contains    iDEAL test payment page     
         Click Element    ${authorizetestpayment}    
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
        Click Element    ${clickback}    
        Wait Until Page Contains    ${label_Order incomplete}  
        Capture Page Screenshot      
        





                                    # Order Confirmation Page
                                    
Add to Calender
         Capture Page Screenshot    
        Click Element   ${addtocalender}
         BuiltIn.Sleep    2 
        Capture Page Screenshot
        

SupportForm
        Click Element    ${support} 
        Set Browser Implicit Wait    10 
        SeleniumLibrary.Input Text    ${supportquestion}    "Test Automation - Test question"    
        Capture Page Screenshot    
        Click Element    ${submitsupportform}    
       
                                 # My Account

Click_MyAccount
        Click Element   ${btn_MyAccount}
        Capture Page Screenshot     
        
Edit_Mydetails
        SeleniumLibrary.Input Text    ${fill_in_firstname}    ${GuestUser_${Language}}[0]
        SeleniumLibrary.Input Text    ${fill_in_lastname}    ${GuestUser_${Language}}[1]
        SeleniumLibrary.Input Text    ${fill_in_address}    ${GuestUser_${Language}}[3]
       # SeleniumLibrary.Input Text    columns[addressLine2]    ${GuestUser_${Language}}[4]
        SeleniumLibrary.Input Text      ${fill_in_postal}       ${GuestUser_${Language}}[5]
        SeleniumLibrary.Input Text     ${fill_in_city}    ${GuestUser_${Language}}[6]
        SeleniumLibrary.Input Text     ${fill_in_phone}    ${GuestUser_${Language}}[7]
        Capture Page Screenshot
        Set Focus To Element   ${btn_Save}
        Scroll Element Into View    ${btn_Save}
        Click Button    ${btn_Save}   
        Capture Page Screenshot             
        Click Element    ${submitaccountdetails}    
       
        
Click_MyFavorites
        Click Element    ${Fav_tab} 
        BuiltIn.Sleep    2 
        Capture Page Screenshot    

View_MyFavorites
         
        BuiltIn.Sleep    2  
        Click Element    ${view fav} 
        Capture Page Screenshot      
        
Click_Myorders
        Click Element    ${myorder_tab}  
        Capture Page Screenshot     
         BuiltIn.Sleep    2          

View_MyOrders
       
        Click Element    ${myorder_tab}  
        BuiltIn.Sleep    2  
        Capture Page Screenshot      
        
View_MyOrders_Refunded Order
        Click Element    ${view myorder}  
        Wait Until Page Contains    My order 
        BuiltIn.Sleep    2    
        Capture Page Screenshot         
        
        
Download_OrderConfirmation
        # Set Focus To Element    //button[contains(.,'Download Confirmation')]
        
        Scroll Element Into View    ${download_orderconfirmation} 
        BuiltIn.Sleep    2  
        Capture Page Screenshot     
        Click Element    ${download_orderconfirmation}    
        #view downloaded file - YET TO DO
        
Repeat_Order
        # Set Focus To Element    //button[contains(.,'Repeat order')]
        Scroll Element Into View    ${repeatorder}
        Capture Page Screenshot           
        Click Element    ${repeatorder}
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Capture Page Screenshot            

Click_logout
        Capture Page Screenshot
        Capture Element Screenshot    ${logout}   
        Click Element    ${logout}                    
        
                          
                       # FOOTER
                       
About us
        Execute JavaScript    ${scrolldown}
        Click Link   ${AboutUs_${Language}}  
        BuiltIn.Sleep    2 
        Capture Page Screenshot    
        

Login As Merchant_Footer
        Execute JavaScript    ${scrolldown}
        Scroll Element Into View    ${loginmerchantfooter}
        Click Link    ${loginmerchantfooter}   
        BuiltIn.Sleep    2 
        Capture Page Screenshot 

Terms and Condition
        Execute JavaScript    ${scrolldown}
        Click Link  ${T&C_${Language}}                
        BuiltIn.Sleep    2 
        Capture Page Screenshot 


Privacy Statement
        Execute JavaScript    ${scrolldown}
        Click Link     ${PrivacyStatement_${Language}}
        BuiltIn.Sleep    2 
        Capture Page Screenshot

FAQ
        Execute JavaScript    ${scrolldown}
        Click Link     ${FAQ}
        BuiltIn.Sleep    2 
        Capture Page Screenshot

Support_Footer
        Execute JavaScript    ${scrolldown}
        Click Link     ${Supportfooter}
        BuiltIn.Sleep    2  

Support_Form_Footer
        SeleniumLibrary.Input Text    ${support-fill in name}    Eswari Nisha
        SeleniumLibrary.Input Text    ${support-fill in phone}    +31612809787
        SeleniumLibrary.Input Text    ${support-fill in email}    nisha@inqadigital.com    
        SeleniumLibrary.Input Text    ${support-fill in comments}    "Test automation- Testing Support form in footer"     
        Click Button   ${submitsupportform}     

Blog    
         Execute JavaScript    ${scrolldown}
        Click Element    ${blog}
        Sleep    2    
        Capture Page Screenshot    
        Click Element    ${click a blogpost}        
        Sleep    2    
        Capture Page Screenshot 
        Click Element    ${click a blogpost2}    
        Sleep    2    
        Capture Page Screenshot 


Bapacho_FB_icon
        Execute JavaScript    ${scrolldown}
        Click Link    ${bapachofb}    
        Sleep    4    
       
Bapacho_Instagram_icon
        Execute JavaScript    ${scrolldown}
        Click Link    ${bapachoinstagram}    
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

OpenGmailForgotpassword
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    nisha@inqadigital.com  
        Click Element    ${gmailid_submit}    
        Sleep    2
        Input Password    ${inputgmailpassword}    Vinikrish_1   
        Sleep    2 
        Click Element    ${gmailpwd_submit}    
        Sleep    20
        Page Should Contain Element     ${choosemail_${Language}}      
        Click Element    ${choosemail_${Language}}   
        BuiltIn.Sleep    2    
        Capture Page Screenshot
        Click Link       ${activationmailManager_${Language}}
        Sleep    2




    
OpenGmail
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    nisha@inqadigital.com  
        Click Element    ${gmailid_submit}    
        Sleep    2
        Input Password    ${inputgmailpassword}    Vinikrish_1   
        Sleep    2 
        Click Element    ${gmailpwd_submit}    
        Sleep    20
        Page Should Contain Element     ${choosemail_${Language}}      
        Click Element    ${choosemail_${Language}}   
        BuiltIn.Sleep    2    
        Capture Page Screenshot
        Click Link       ${activationmail_${Language}}
        Sleep    2
        
OpenGmailManager
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    nisha@inqadigital.com  
        Click Element    ${gmailid_submit}    
        Sleep    2
        Input Password    ${inputgmailpassword}    Vinikrish_1   
        Sleep    2 
        Click Element    ${gmailpwd_submit}    
        Sleep    20
        Page Should Contain Element     ${choosemail_${Language}}      
        Click Element    ${choosemail_${Language}}   
        BuiltIn.Sleep    2    
        Capture Page Screenshot
        Click Link       ${activationmailManager_${Language}}
        Sleep    2



OpenYopMailinchrome
         Open Browser    http://www.yopmail.com/en/    chrome

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
             
        
        

        

                        
            