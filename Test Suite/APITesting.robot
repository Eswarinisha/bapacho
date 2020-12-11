***Settings***
Library    RequestsLibrary
Library    BuiltIn
Library    OperatingSystem
Library    JSONLibrary



*** Test Cases ***

    
Client Login    
     ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd
    Create Session    session    https://dev.api.bapacho.com   auth=${auth}
    ${Resp}    Get Request    session    client/login
    log    ${Resp}
    Should Be Equal As Strings    ${Resp.status_code}    200  
    
Register Client  # Given - already existing email 
     ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd
    ${header}      Create Dictionary     Content-Type=application/json    Accept=application/json   
    ${File}      Set Variable    {"fields": {"username":"testemailcustomer001@gmail.com","password": "bapachocustomerpwd"}}
    ${JSONinsertorder}    Convert String to JSON    ${File}
     Create Session    session    https://dev.api.bapacho.com   auth=${auth}    headers=${header}
     ${Resp}  Post Request   session    client/create
     log    ${Resp}
     Should Be Equal As Strings    ${Resp.status_code}    200  
     
Client's Favourites List
     ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd
     ${params}      Create Dictionary    x-clientguid=4E53B61F-765C-BC5B-85E2-A330C1011A8A   
     ${header}     Create Dictionary   x-clientguid=4E53B61F-765C-BC5B-85E2-A330C1011A8A     Content-Type=application/json    Accept=application/json    x-lang=nl
     Create Session    session    https://dev.api.bapacho.com   auth=${auth}    headers=${header}
     ${Resp}    Get Request    session    client/favorites?guid=4E53B61F-765C-BC5B-85E2-A330C1011A8A
     log    ${Resp}
     Should Be Equal As Strings    ${Resp.status_code}    200  
    
Client's Order List using client id
     ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd
     ${params}      Create Dictionary    params[client_id]=176
     ${header}     Create Dictionary    x-lang=nl
     Create Session    session    https://dev.api.bapacho.com   auth=${auth}    headers=${header}
     ${Resp}    Get Request    session    order/search?params[client_id]=176
     log    ${Resp}
     Should Be Equal As Strings    ${Resp.status_code}    200 
     
Client's Order List using GUID
     ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd 
     ${header}     Create Dictionary    x-clientguid=4E53B61F-765C-BC5B-85E2-A330C1011A8A     Accept=application/json    x-lang=nl
     Create Session    session    https://dev.api.bapacho.com   auth=${auth}    headers=${header}
     ${Resp}    Get Request    session    order/search
     log    ${Resp}
     Should Be Equal As Strings    ${Resp.status_code}    200 
    
Client's Order Insert
    
    ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd
    ${header}      Create Dictionary    x-clientguid=D29FE23F-5FFC-0EF9-13E8-8ADC4D0A3654    Content-Type=application/json    Accept=application/json    x-lang=nl
    ${File}      Set Variable    {"fields":{"pfid":"109","lang_id":"nl","client_id":"176","related_id":"0","supplier_id":"6882","location_id":"6882","transaction_id":null,"profile_id":null,"total":"8.00000","vat":"0.66055","subtotal":"7.33945","persons":"0","status":"1","company":"","name":null,"firstname":"EswariNisha","lastname":"Balakrishnan","address":"Justinedegouwerhof","housenr":"54","housenradd":"","postal":"2011GP","city":"Haarlem","country":null,"countryCode":"","phone":"+31612809787","comments":"","archive":"0","quote_text":null,"payment_date":"2020-11-2109:49:32","def":"1","lastStatus":"open","payment_method":"manual","hasVersenfijnDelivery":"0","quickCheckout":"0","popupId":"0","orderAcceptance":"pickup","deliveryDate":"2020-11-2106:00"}}
    ${JSONinsertorder}    Convert String to JSON    ${File}
    Create Session    session    https://dev.api.bapacho.com    auth=${auth}    #headers=${header}
    ${orderinsertjson}    Post Request    session    /order/insert    json=${JSONinsertorder}    headers=${header}
    log    ${orderinsertjson}
    log    ${orderinsertjson.text}
    Should Be Equal As Strings    ${orderinsertjson.status_code}    200
    ${getjsonobject}    Get Value From Json    ${orderinsertjson.json()}   $..client_id
    log    ${getjsonobject}
    Should Be Equal As Strings   ${getjsonobject}    ['176']    
    
    
Client's Supplier search by Name
     ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd
     ${params}      Create Dictionary    params[keyword]=nisha
     ${header}     Create Dictionary    x-lang=nl
     Create Session    session    https://dev.api.bapacho.com   auth=${auth}    headers=${header}
     ${Resp}    Get Request    session    supplier/search?params[keyword]=nisha
     log    ${Resp}
     Should Be Equal As Strings    ${Resp.status_code}    200 
     
Client's Supplier search by GUID
     ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd
     ${params}      Create Dictionary    guid=98E89141-9B8B-7EE4-C885-5AE18A4F48CE 
     ${header}     Create Dictionary     Accept=application/json    x-lang=nl
     Create Session    session    https://dev.api.bapacho.com   auth=${auth}    headers=${header}
     ${Resp}    Get Request    session    supplier?guid=98E89141-9B8B-7EE4-C885-5AE18A4F48CE
     log    ${Resp}
     Should Be Equal As Strings    ${Resp.status_code}    200   
     
Client Logout
     ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd
     ${header}     Create Dictionary   x-clientguid=4E53B61F-765C-BC5B-85E2-A330C1011A8A      Accept=application/json    
     Create Session    session    https://dev.api.bapacho.com   auth=${auth}
     ${Resp}    Get Request    session    logout
     log    ${Resp}
     Should Be Equal As Strings    ${Resp.status_code}    200      

    