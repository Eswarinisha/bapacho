*** Settings ***
Library    SeleniumLibrary
   

Default tags     Basic Regression

Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot
Resource     Customerkeywords.robot 

Test Setup    Set Screenshot Directory    C:/Users/Nisha/git/ta-bapacho/Bapacho/BapachoScreenshots/Customer Site Screenshots

*** Test Cases ***

#FCS001	CUSTOMER LOGIN

Test case 1 
    # User creates account and check his welcome mail
    Set Tags    Basic Regression	     
        Open MultishopHomePage
        Capture Page Screenshot    
        Click_login   
        Email_Registration 
        Close Browser
  
#Check Welcome Mail by Customer       
        OpenGmailCustomer
        Close Browser
        OpenGmailCustomerMailchimp
        Close Browser

Test case 2
    
    #User must be able to login with newly registered email id
	Set Tags    Basic Regression          
	    Open MultishopHomePage
        Click_login         
        EmailLogin       
        Close Browser 
        

Test case 3
    #User must be directed to Facebook login page and able to login successfully       
        Open MultishopHomePage
        Click_login
        Click_FacebookLogin
        FacebookLogin
        Close Browser
        
Test case 4
    #User must be able to login during checkout 
    
         Open MultishopHomePage
         Click_bakeries
         Change_CurrentLoction_BDP
         Type_To_Search_bakery with Online payment
         BuiltIn.Sleep    2    
         Select a bakery from list
         PDP_AddtoCart
         Set Browser Implicit Wait    5
         PDP_Click_Checkout
         Guestuser_Login_in_Checkoutpage
         BuiltIn.Sleep    2    
         Cashpay_OrderNow
         Capture Page Screenshot    
         Close Browser
         
Test case 5
    #User must be able to register during checkout 
         Open MultishopHomePage
         Click_bakeries
         Change_CurrentLoction_BDP
         Type_To_Search_bakery with Online payment
         BuiltIn.Sleep    2    
         Select a bakery from list
         PDP_AddtoCart
         Set Browser Implicit Wait    5
         PDP_Click_Checkout
         Guestuser_CreateAccount_in_Checkoutpage
         BuiltIn.Sleep    2    
         Cashpay_OrderNow
         Capture Page Screenshot    
         Close Browser 
         
Test case 6
     # User must be able to login using Facebook during checkout 
         Open MultishopHomePage
         Click_bakeries
         Change_CurrentLoction_BDP
         Type_To_Search_bakery
         BuiltIn.Sleep    2    
         Select a bakery from list
         PDP_AddtoCart
         Set Browser Implicit Wait    5
         PDP_Click_Checkout
         Guestuser_FBLogin_in_Checkoutpage
         BuiltIn.Sleep    2    
         Cashpay_OrderNow
         Capture Page Screenshot    
         Close Browser            

Test case 7
   #User give forgot password and reset with new password
       
        Open MultishopHomePage
        Click_login
        Click_ForgotPassword  
        Close Browser 
        OpenGmailForgotPaasword
        ResetPassword  
        Close All Browsers

#User must be able to login with the new password
      
       Open MultishopHomePage
       Click_login
       login_Using_RegisteredMailid
       Close Browser       

Test case 8
    #User must not be able to login with old password
       Open MultishopHomePage
       Click_login
       login_Using_RegisteredMailid_with old password   
       Close Browser

      
Test case 9
    #Guest User must not be able to add bakeries to favorites
          
          Open MultishopHomePage
          Click_bakeries
          Change_CurrentLoction_BDP
          Type_To_Search_bakery with Online payment
          Select a bakery from list
          Guestuser_Click_favourites 
          Close Browser

       
Test case 10
    #Guest User must be able to checkout and place order
         
         Open MultishopHomePage
         Click_bakeries
         Change_CurrentLoction_BDP
         Type_To_Search_bakery with Online payment
         Select a bakery from list
         PDP_AddtoCart
         Set Browser Implicit Wait    5
         PDP_Click_Checkout
         Guestuser_Fill_Checkoutpage
         Cashpay_OrderNow  
         Close Browser
         
    #FCS002	CUSTOMER DASHBOARD

Test case 11
    #User must login to view on the Account icon & edit his details
    Set Tags    Basic Regression
       Open MultishopHomePage
       Click_login
       EmailLogin
       Click_MyAccount    
       Edit_Mydetails
       Close Browser
        
Test case 12
    #While placing order, all the information must be populated correctly after checkout
        Set Tags    Sanity
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Close Browser
        
Test case 13
    #User must be able to view his favorites bakery by clicking on the favorites icon <3

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_favourites
        View_favourites
        Close Browser
      
Test case 14
    #User must be able to view Favorites from My Account

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_MyFavorites
        View_MyFavorites
        Close Browser
        
Test case 15
    #User can view his order history under My orders in My account

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Close Browser
        
Test case 16
    #User must be able to Download order confirmation for the selected order

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Download_OrderConfirmation
        Close Browser
        
Test case 17
     #User must be able to click repeat order and place the same

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Repeat_Order               
        Close Browser
        
Test case 18
    #On clicking logout, user must be logged out of site

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_logout
        BuiltIn.Sleep    2  
        Capture Page Screenshot         
        Close Browser

        
Test case 19 
    #User must be able to login with another credentials
    #CS010TC002	 #Login icon must appear in the header
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_logout
        BuiltIn.Sleep    2    
        Click_login
        EmailLogin
        Close Browser
        
    #FCS003    SEARCH

Test case 20
    #Home Screen_User must be able to type the location to find his bakery needed
     Set Tags    Basic Regression
        Open MultishopHomePage
        Change_CurrentLocation_Home
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Change_CurrentLoction_BDP
        Capture Page Screenshot
        Close Browser

Test case 21
    #Home Screen_On clicking on the arrow near the search tab, current location must be populated
      
        Open MultishopHomePage
        Get_CurrrentLocation_Home
        Close Browser
        
Test case 22
    #User must be able to search bakeries by name on the search bar
  Set Tags    Basic Regression    
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Capture Page Screenshot
        Close Browser
        
Test case 23
    #When no relevant result is available, "We're sorry, we couldn't find bakeries near you" messgae must be displayed
      
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_to_search_bakery_nonhappy  
        Capture Page Screenshot
        Close Browser
        
Test case 24
    #User must be able to clear search by clicking on the X button
      
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_to_search_bakery_nonhappy
        Clear search bakery field
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Close Browser
        
Test case 25
    #User must be able to use "Filter by Category" and get relevent result in the bakery listing page
      
        Open MultishopHomePage
        Click_bakeries
        Filter Bakeries by Category         
        Close Browser
        
Test case 26
    #User must be able to use filter "Range from my location" and get relevent result in the bakery listing page
  Set Tags    Basic Regression  
        Open MultishopHomePage
        Click_bakeries
        Filter_by_Range from my location
        Close Browser
        Pass Execution    "Failure expected because of drag and drop offset but works as expected" 
        
        
Test case 27
    #User must be able to use filter deliver/pickup and get relevent result in the bakery listing page
   Set Tags    Basic Regression     
        Open MultishopHomePage
        Click_bakeries
      #  Change_CurrentLoction_BDP
        Filter_by_pickup
        Capture Page Screenshot
        Filter_by_Deliver    
        Close Browser
            
Test case 28 
    #User must be able to use filter "other filter" and get relevent result in the bakery listing page
    Set Tags    Basic Regression
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Filter_by_NowOpen
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Filter_by_OrderOnline
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Close Browser
        
Test case 29
    #User must be able to use one or many filters and get relevant result in the bakery listing page
   Set Tags    Basic Regression     
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Filter_by_NowOpen
        Select bakery using multiple filter
        PDP_AddtoCart
        PDP_Click_Checkout
        Cashpay_OrderNow
        Close Browser
        
Test case 30
    #User must be able to deselect Category filter and get relevent result in the bakery listing page
    Set Tags    Basic Regression    
        Open MultishopHomePage
        Click_bakeries
        Filter Bakeries by Category
        Unselect Category Filter
        Close Browser



Test case 31
    #User must be able to remove the filters and all the result must be reset
        
        Open MultishopHomePage
        Click_bakeries
        Filter_by_pickup
        Filter_by_Deliver
       # Filter_by_pickup
        Filter_by_NowOpen
        Filter_by_OrderOnline
        Filter_by_NowOpen
        Filter_by_OrderOnline
        Capture Page Screenshot
        Close Browser
        
    #FCS005	BAKERY DISPLAY PAGE
        
# Test case 
    # #In the bakery display page, under the About Bakery, show more information link must be available

        # Open MultishopHomePage
        # Click_bakeries
        # Change_CurrentLoction_BDP
        # Type_To_Search_bakery with Online payment
        # Select a bakery from list
        # Capture show more information            
        # Close Browser
 
Test case 32
    #Show Bakery Information      
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        # Click show more information - old version
        View shop page information     
        Close Browser
    
Test case 33
    #Phone number under other information must be clickable

        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        Click bakery phone number
        Capture Page Screenshot      
        Close Browser
        
Test case 34
    #Filter products by product category
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        Filter Products by Category
        Capture Page Screenshot   
        Close Browser
      
Test case 35
    #On clicking on "+" product must get added to cart(product level)
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        Capture Page Screenshot    
        Close Browser
        
Test case 36
    #Click product and view Product information
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
       # Click 'i' for product information  -old version
        Click Product for product information
        Close Browser
        
           # FCS006	    CART


Test case 37
    #User must be able to add produts(product information level)      
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        # Click 'i' for product information - old version
        Click add to cart button
        Close Browser
        
Test case 38
    #User must be able to change the quantity of product using + and - buttons(cart level)
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        PDP_Add/Delete product Quantity
        Capture Page Screenshot    
        Capture Page Screenshot    
        Close Browser

        
Test case 39
    #User must be able to directly type the quantity of product in the box(cart level)
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        Type Product quantity
        Capture Page Screenshot    
        Close Browser
        
Test case 40
    #User must be able to remove the products from cart with delete button(cart level)
        Open MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        Delete Product Quantity
        Capture Page Screenshot    
        Close Browser
        

                #  FCS007	FAVOURITES


    



Test case 41
    #Pickup + Cash pay Order
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Capture Page Screenshot    
        Close Browser
        

Test case 42
    #Delivery + Card pay order + Type product quanity during checkout
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2    
        PDP_Click_Checkout
        Type Product quantity_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Cardpay_OrderNow
        Capture Page Screenshot    
        Close Browser
  
        
Test case 43
    #Read Terms & conditions
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Click_Terms&Condition
        Close Browser  
        
Test case 44
    #Filter delivery,open now + Pickup + cash pay order
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Filter_by_Deliver
        Filter_by_NowOpen
        Select bakery using multiple filter
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Capture Page Screenshot    
        Close Browser
        
Test case 45
    #Without checking the Terms &Conditions check box, user must not be able to place order
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Check_T&C_NonHappy    
        Click Submit button  
        Close Browser
        Pass Execution    "Non Happy test script - Failure is expected"    
               
Test case 46
    #Pickup+ Cash pay + Customer checks order received mail
    Set Tags    Basic Regression
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage   
        Cashpay_OrderNow
        Customer Order received Mail
        Close Browser
        

Test case 47
    #Delivery + Card order + Add to calender
        Open MultishopHomePage
        Click_login
        EmailLogin
        Get_CurrrentLocation_Home 
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage   
        Cardpay_OrderNow
        BuiltIn.Sleep    2  
        Add to Calender
        Close Browser
        
Test case 48
    #Pickup + Card order
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage 
        Cardpay_OrderNow
        Close Browser
        
Test case 49
    #Delivery + Cash pay order + Add to calender
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage 
        Cashpay_OrderNow
        BuiltIn.Sleep    2  
        Add to Calender
        Close Browser
        

#  FCS010	PAYMENT FAILURE

        
Test case 50
    #Delivery + Online payment failure(clicked back button)
    Set Tags    Basic Regression
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage    
        Onlinepay_Ordernow
        Click back while Online pay
        Close Browser
        

Test case 51
    #Pickup +  Online payment failure(clicked back button) + File complaint using Support form
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        User_Fill_Checkoutpage    
        Onlinepay_Ordernow
        Click back while Online pay
        SupportForm
        Close Browser
        

  # FCS011	DISCOVER BAPACHO
 
Test case 52
    #About us static page
         Open MultishopHomePage
         About us
         Close Browser
         Pass Execution    "Failure expected in local staging" 
               
Test case 53
   #User must be able to use the website as Merchant
        Open MultishopHomePage
        Login As Merchant_Footer    
        Click_bakeries
        Capture Page Screenshot  
        Close Browser
        
Test case 54
    #T&C Footer 
        Open MultishopHomePage
        Terms and Condition
        Close Browser
         Pass Execution    "Failure expected in local staging" 
        
Test case 55
    #Privacy statement in the footer
        Open MultishopHomePage
        Privacy Statement
        Close Browser
        Pass Execution    "Failure expected in local staging"         

Test case 56
    #FAQ in the footer
        Open MultishopHomePage
        FAQ
        Close Browser
        
Test case 57
    #Support form in the footer
        Open MultishopHomePage
        Support_Footer
        Support_Form_Footer
        Capture Page Screenshot    
        Close Browser

Test case 58
    #Blog in the footer   
       Open MultishopHomePage
       Blog
       Close Browser    

Test case 59
    #Bapacho Facebook icon
        Open MultishopHomePage
        Bapacho_FB_icon       
        Capture Page Screenshot       
        Close All Browsers
        
Test case 60
    #Bapacho Instagram icon
        Open MultishopHomePage
        Bapacho_Instagram_icon
        Capture Page Screenshot       
        Close All Browsers
        
Test case 61
    #View app in Playstore & App store
        Open MultishopHomePage
        Click Download App - playstore
        Select Window     MAIN
        Click Download App - Appstore
        Get Window Titles    browser=ALL
        Close All Browsers
        
Test case 62
    #User can view landing page and subscribe to newsletter
    #User can view bakeries and choose one
    #CS040TC003	User must be able to click and view app in Playstore and Appstore
    Set Tags    Basic Regression
        Open_Landingpage
        View bakery in landingpage
        Subscribe to Newsletter      
        Click Download App - playstore
        Select Window     MAIN
        Click Download App - Appstore
        Get Window Titles    browser=ALL
        Close All Browsers
      

Test case 63
    #Get checkout url when customer goes to homepage and click cart
    Set Tags    Basic Regression
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        Click Image    ${BapachoLOGO}    
        Click Element    ${carticon}    
        Get Locations    
        Close Browser 

   
Test case 64
       #Home page_Open your shop
    Set Tags    Basic Regression
        testhomepage   
        Open your shop
        Close Browser
        


#ARCHIEVE
              
#CS001TC003
	# Once account is created check user must get activation mail to registered id
	
       # OpenYopMailinchrome
       # Check_CustomerActivation_mail 
        # Close Browser
       

# CS004TC001_User must be able to click on forgot password
       
        # Open MultishopHomePage
        # Click_login
        # Click_ForgotPassword  
        # Close Browser 
              
# CS004TC002_User must receive mail for resetting the password and able to set new password
        
         # OpenGmail
         # Check_ForgtPassword_mail
         # ResetPassword  
         # Close All Browsers

# CS005TC001_User must be able to login with the new password
      
       # Open MultishopHomePage
       # Click_login
       # login_Using_RegisteredMailid
       # Close Browser       

# CS005TC002_User must not be able to login with old password
       # Open MultishopHomePage
       # Click_login
       # login_Using_RegisteredMailid_with old password   
       # Close Browser
       
      #  FCS009	PAYMENT

# Test case 
    # #Pickup + Online pay    
        # Open MultishopHomePage
        # Type_To_Search_bakery with Online payment
        # Select a bakery from list
        # PDP_AddtoCart
        # BuiltIn.Sleep    2    
        # PDP_Click_Checkout
        # #Choose_delivery
        # User_Fill_Checkoutpage    
        # Onlinepay_Ordernow
        # iDEAL_Online_payment_process
        # Close Browser   
        
# CS026TC003_User must be able to do online payment using giropay
        # Open MultishopHomePage
        # Click_login
        # EmailLogin
        # Click_bakeries
        # Change_CurrentLoction_BDP
        # Type_To_Search_bakery with Online payment
        # Select a bakery from list
        # PDP_AddtoCart
        # BuiltIn.Sleep    2  
        # PDP_Click_Checkout
        # Choose_delivery
        # User_Fill_Checkoutpage    
        # Onlinepay_Ordernow
        # Giropay_Online_payment_process
        # Close Browser
        
# Test case
    # #User must be able to add date and time of delivery to his calender by clicking on the Add to calender button
        # Open MultishopHomePage
        # Click_login
        # EmailLogin
        # Click_bakeries
        # Change_CurrentLoction_BDP
        # Type_To_Search_bakery with Online payment
        # Select a bakery from list
        # PDP_AddtoCart
        # BuiltIn.Sleep    2  
        # PDP_Click_Checkout
        # Choose_delivery
        # User_Fill_Checkoutpage    
        # Onlinepay_Ordernow
        # iDEAL_Online_payment_process
        # Add to Calender
        # Close Browser
        