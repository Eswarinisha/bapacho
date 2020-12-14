*** Settings ***
Library    SeleniumLibrary
   

Default tags     RegressionTest

Resource    Bapacho Variables.robot
Resource     Customerkeywords.robot 

Test Setup    Set Screenshot Directory    C:/Users/Nisha/git/ta-bapacho/Bapacho/BapachoScreenshots/Customer Site Screenshots

*** Test Cases ***

#FCS001	CUSTOMER LOGIN

CS001TC001
	# User must be able to click on Login icon and click create account
        
        Open_Bapachosite
        Click_login
        Capture Page Screenshot
        Close Browser

CS001TC002
	# User must be able to enter valid email id, first name, last name and confirm password
      
        Set Tags    Sanity
        Open_Bapachosite
        Click_login
        Email_Registration 
        Close Browser
        
CS001TC003
	# Once account is created check user must get activation mail to registered id
       OpenYopMailinchrome
       Check_CustomerActivation_mail 
       Close Browser
       


CS001TC004
	# User must be able to register with newly registered email id
	          
	    Open_Bapachosite
        Click_login         
        EmailLogin       
        #Close Browser    

CS002TC001
	# User must be able to click on Login icon and click login using Facebook
       
        Open_Bapachosite
        Click_login
        Click_FacebookLogin
        Close Browser
        
CS002TC002
	# User must be directed to Facebook login page and able to login successfully
        Set Tags    Sanity
        Open_Bapachosite
        FacebookLogin
        Close Browser

CS003TC001
	# User must be able to login using his credentials
        Set Tags    Sanity
       
        Open_Bapachosite
        Click_login
        EmailLogin
        Capture Page Screenshot
        Close Browser
            
CS003TC002
	# User must be able to login using his facebook credentials
      
        FacebookLogin
        Close Browser
        
CS003TC003	
    # User must be able to login during checkout 
    
         Open_Bapachosite
         Click_bakeries
         Type_To_Search_bakery
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
             
CS004TC001
	# User must be able to click on forgot password
       
        Open_Bapachosite
        Click_login
        Click_ForgotPassword
        Capture Page Screenshot   
        Close Browser 
        
         
 CS004TC002	
    # User must receive mail for resetting the password and able to set new password
        
         OpenYopMailinchrome
         Check_ForgtPassword_mail
         ResetPassword
         Capture Page Screenshot    
         Close All Browsers
         
  

 CS005TC001	
    # User must be able to login with the new password
      
       Open_Bapachosite
       Click_login
       login_Using_RegisteredMailid
       Capture Page Screenshot    
       Close Browser
       

 CS005TC002	
    # User must not be able to login with old password
       Open_Bapachosite
       Click_login
       Capture Page Screenshot    
       Close Browser

    
CS006TC001
	# User must be able to visit Bapacho site as guest

         Open_Bapachosite
         Click_bakeries
         Capture Page Screenshot
         Close Browser

CS006TC002
	# User must be able to search bakeries by name on the search bar

          Open_Bapachosite
          Click_bakeries
          Type_To_Search_bakery
          Capture Page Screenshot
          Close Browser
      
CS006TC003
	# Guest User must not be able to add bakeries to favorites
          
          Open_Bapachosite
          Click_bakeries
          Type_To_Search_bakery
          Guestuser_Click_favourites
          Capture Page Screenshot    
          Close Browser

CS006TC004
    # Guest User must be able to add products to cart

        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        Capture Page Screenshot    
        Close Browser
       
CS006TC005
     #Guest User must be able to checkout and place order
         Set Tags    Sanity
         Open_Bapachosite
         Click_bakeries
         Type_To_Search_bakery
         Select a bakery from list
         PDP_AddtoCart
         Set Browser Implicit Wait    5
         PDP_Click_Checkout
         Guestuser_Fill_Checkoutpage
         Cashpay_OrderNow
         Capture Page Screenshot    
         Close Browser
         
    #FCS002	CUSTOMER DASHBOARD

CS007TC001
	# User must login to view on the Account icon

       Open_Bapachosite
       Click_login
       EmailLogin
       Click_MyAccount    
       Close Browser
       
CS007TC002
	# User must be able to edit and save all the information in my data

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Edit_Mydetails
        Close Browser
        
CS007TC003
	# While placing order, all the information must be populated correctly after checkout
        Set Tags    Sanity
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Close Browser
        
CS008TC001
	# User must be able to view his favorites bakery by clicking on the favorites icon

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_favourites
        Capture Page Screenshot
        Close Browser

CS008TC002
	# User must be able to click and view any of his favorite bakeries

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_favourites
        View_favourites
        Close Browser
      
CS008TC003
	# User must be able to view Favorites from My Account

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Click_MyFavorites
        Capture Page Screenshot
        Close Browser
    
CS008TC004
	# User must be able to click and view any of his favorite bakeries

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Click_MyFavorites
        View_MyFavorites
        Close Browser
        
CS009TC001
	# User can view his order history under My orders in My account

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        Close Browser
        
CS009TC002
	# User can select any of his previous orders

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Close Browser
        
CS009TC003
	# User must be able to Download order confirmation for the selected order

        Open_Bapachosite
       Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Download_OrderConfirmation
        Close Browser
        
CS009TC004
	# User must be able to click repeat order and place the same

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Repeat_Order
        Wait Until Page Contains    Thank you for your order               
        Close Browser
        
CS010TC001
	# On clicking logout, user must be logged out of site

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Click_logout
        BuiltIn.Sleep    2       
        Close Browser

CS010TC002
	# Login icon must appear in the header

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Click_logout
        BuiltIn.Sleep    2   
        Capture Page Screenshot
        Close Browser
        
CS010TC003
	# User must be able to login with another credentials

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Click_logout
        BuiltIn.Sleep    2    
        Click_login
        EmailLogin
        Close Browser
        
    #FCS003    SEARCH

CS011TC001
	# User must be able to type the location to find his bakery needed
      
        Open_Bapachosite
        Change_CurrentLocation_Home
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Change_CurrentLoction_BDP
        Capture Page Screenshot
        Close Browser

CS011TC002
    # On clicking on the arrow near the search tab, current location must be populated
      
        Open_Bapachosite
        Get_CurrrentLocation_Home
        Close Browser
        
CS012TC001
	# User must be able to click on Bakeries and view bakery listing page
      
        Open_Bapachosite
        Click_bakeries
        Close Browser
        
CS013TC002
	# User must be able to search bakeries by name on the search bar
      
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Capture Page Screenshot
        Close Browser
        
CS013TC003
	# When no relevant result is available, "We're sorry, we couldn't find bakeries near you" messgae must be displayed
      
        Open_Bapachosite
        Click_bakeries
        Type_to_search_bakery_nonhappy  
        Capture Page Screenshot
        Close Browser
        
CS013TC004
	# User must be able to clear search by clicking on the X button
      
        Open_Bapachosite
        Click_bakeries
       Type_to_search_bakery_nonhappy
       Clear search bakery field
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Close Browser
        
CS014TC001
	# User must be able to use "Filter by Category" and get relevent result in the bakery listing page
      
        Open_Bapachosite
        Click_bakeries
        Filter Bakeries_by_Category
        Close Browser
        
CS014TC002
	# User must be able to use filter "Range from my location" and get relevent result in the bakery listing page
    
        Open_Bapachosite
        Click_bakeries
        Filter_by_Range from my location
        Close Browser
        
        
CS014TC003
	# User must be able to use filter deliver/pickup and get relevent result in the bakery listing page
        
        Open_Bapachosite
        Click_bakeries
        Change_CurrentLoction_BDP
        Filter_by_pickup
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Filter_by_Deliver
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Close Browser
            
CS014TC004
	# User must be able to use filter "other filter" and get relevent result in the bakery listing page
    
        Open_Bapachosite
        Click_bakeries
        Change_CurrentLoction_BDP
        Filter_by_NowOpen
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Filter_by_OrderOnline
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Close Browser
        
CS015TC001
	# User must be able to use one or many filters and get relevant result in the bakery listing page
        
        Open_Bapachosite
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
        
CS015TC002	
    #User must be able to deselect Category filter and get relevent result in the bakery listing page
        
        Open_Bapachosite
        Click_bakeries
        Filter Bakeries_by_Category
        Unselect Category Filter
        Close Browser



CS016TC001
	# User must be able to remove the filters and all the result must be reset
        
        Open_Bapachosite
        Click_bakeries
        Filter_by_pickup
        Filter_by_Deliver
        Filter_by_pickup
        Filter_by_NowOpen
        Filter_by_OrderOnline
        Filter_by_NowOpen
        Filter_by_OrderOnline
        Capture Page Screenshot
        Close Browser
        
    #FCS005	BAKERY DISPLAY PAGE

CS017TC001
	# On clicking on any bakery, the bakery details page must be displayed
        
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        BuiltIn.Sleep    2  
        Capture Page Screenshot
        Close Browser
        
CS018TC001
	# In the bakery display page, under the About Bakery, show more information link must be available

        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        Capture show more information            
        Close Browser
 
CS018TC002	# On clicking the link, all information including payment method must be displayed       
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        Click show more information     
        Close Browser
    
CS018TC003	# Phone number under other information must be clickable

        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        Click bakery phone number  
        Close Browser
        
CS019TC001	# Products must be listed according to the product type 
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        Filter products by Category
        Capture Page Screenshot   
        Close Browser
      
CS019TC002	# On clicking on "+" product must get added to cart
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        Capture Page Screenshot    
        Close Browser
        
CS020TC001	# On clicking on "i " the product details must be displayed
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        Click 'i' for product information
        Capture Page Screenshot   
        Close Browser
        
           # FCS006	    CART


CS021TC001	# User must be able to add produts using Add to cart button in the product information       
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        Click 'i' for product information
        Click add to cart button
        Close Browser
        
CS021TC002	# User must be able to change the quantity of product using + and - buttons
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        PDP_Add product Quantity
        Capture Page Screenshot    
        PDP_Minus product Quantity
        Capture Page Screenshot    
        Close Browser

        
CS021TC003	# User must be able to directly type the quantity of product in the box
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        Type Product quantity
        Capture Page Screenshot    
        Close Browser
        
CS022TC001	# User must be able to remove the products from cart with delete button
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        Delete Product Quantity
        Capture Page Screenshot    
        Close Browser
        

                #  FCS007	FAVOURITES


    

CS023TC001	# On clicking Favorites icon, the list of favorite bakeries must be displayed
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_favourites
        View_favourites
        Close Browser
        

               # FCS008	        CHECKOUT
               
CS024TC001	# User must be able to enter mandatory details in the Choose pickup and delivery page after checkout
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Capture Page Screenshot    
        Close Browser
        

CS024TC002	# User must be able to choose pickup 
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        User_Fill_Checkoutpage
        Capture Page Screenshot    
        Close Browser
        

CS024TC003	# User must be able to choose date and time for Deliver
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2    
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Capture Page Screenshot    
        Close Browser
        
CS024TC004	# User must be able to choose payment method in the Choose pickup and delivery page
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage    
        Cashpay_OrderNow
        Capture Page Screenshot    
        Close Browser
        
CS025TC001	# User must be able to read Terms & conditions on clicking the link
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Click_Terms&Condition 
        Close Browser  
        
CS025TC002	# User must be able to check the Terms & conditions box
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Filter_by_Deliver
        Filter_by_NowOpen
        Select a bakery from list
        PDP_AddtoCart
         BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Click_T&C_Checkbox
        Close Browser
        
CS025TC003	# Without checking the Terms &Conditions check box, user must not be able to place order
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
         BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Check_T&C_NonHappy    
        Capture Page Screenshot    
        Click Submit button  
        Close Browser
        #Pass Execution    "Non Happy test script - Failure is expected"    
        

        #  FCS009	PAYMENT

CS026TC001	# User must be able to do online payment using iDeal     
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2    
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage    
        Onlinepay_Ordernow
        iDEAL_Online_payment_process
        Close Browser   
        
CS026TC002	# User must be able to do online payment using card
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage    
        Onlinepay_Ordernow
        Card_Online_payment_process
        Close Browser
        
CS026TC003	# User must be able to do online payment using giropay
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage    
        Onlinepay_Ordernow
        Giropay_Online_payment_process
        Close Browser
        
CS026TC004	# User must be able to add date and time of delivery to his calender by clicking on the Add to calender button
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage    
        Onlinepay_Ordernow
        iDEAL_Online_payment_process
        Add to Calender
        Close Browser
        
CS027TC001	# User must be able to choose cash payment method and click on Order now
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage   
        Cashpay_OrderNow
        Close Browser
        
CS027TC002	# User must be able to add date and time of delivery to his calender by clicking on the Add to calender button
        Open_Bapachosite
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
        
CS028TC001	# User must be able to choose Card payment method and click on Order now
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage 
        Cardpay_OrderNow
        Close Browser
        
CS028TC002	# User must be able to add date and time of delivery to his calender by clicking on the Add to calender button
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
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
        

#  FCS010	PAYMENT FAILURE

        
CS029TC001	# User must be able to click on back button without paying and redirected to  Order incomplete page
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage    
        Onlinepay_Ordernow
        Click back while Online pay
        Close Browser
        

CS030TC001	# Order incomplete page must have details regarding the failed payment
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery
        Select a bakery from list
        PDP_AddtoCart
        BuiltIn.Sleep    2  
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage    
        Onlinepay_Ordernow
        Click back while Online pay
        SupportForm
        Close Browser
        

  # FCS011	DISCOVER BAPACHO
 
CS031TC001	# User must be able to view About us static page
         Open_Bapachosite
         About us
         Close Browser
         
CS032TC001	# User must be able to click on "Login as Merchant"
        Open_Bapachosite
        Login As Merchant_Footer
        Capture Page Screenshot    
        Close Browser
        
CS032TC002	# User must enter valid Merchant email id and password
        Open_Bapachosite
        Login As Merchant_Footer
        MerchantLogin_Form
        Close Browser
    
CS032TC003	#User must be able to use the website as Merchant
        Open_Bapachosite
        Login As Merchant_Footer
        MerchantLogin_Form
        Capture Page Screenshot 
        Click_bakeries
        Capture Page Screenshot  
        Close Browser
        
CS033TC001	# User must be able to click and read on Terms and Conditions in the footer 
        Open_Bapachosite
        Terms and Condition
        Close Browser
        
CS034TC001	# User must be able to click and read on Privacy statement in the footer
        Open_Bapachosite
        Privacy Statement
        Close Browser
        
CS035TC001	# User must be able to click and read on FAQ in the footer
        Open_Bapachosite
        FAQ
        Close Browser
        
CS036TC001	# User must be able to click and fill in the Support form and submit
        Open_Bapachosite
        Support_Footer
        Support_Form_Footer
        Capture Page Screenshot    
        Close Browser
        
CS037TC001	# User must be able to click and view the Bapacho Facebook icon
        Open_Bapachosite
        Bapacho_FB_icon       
        Capture Page Screenshot       
        Close All Browsers
        
CS038TC001	# User must be able to click and view on the Bapacho Instagram icon
        Open_Bapachosite
        Bapacho_Instagram_icon
        Capture Page Screenshot       
        Close All Browsers
        
       