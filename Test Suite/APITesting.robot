***Settings***
Library    RequestsLibrary
Library    BuiltIn
Library    OperatingSystem
Library    JSONLibrary



*** Test Cases ***

Testcase1
    
   ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd
    ${header}      Create Dictionary    x-clientguid=D29FE23F-5FFC-0EF9-13E8-8ADC4D0A3654    Content-Type=application/json    Accept=application/json    x-lang=nl
    ${File}      Set Variable    {"fields":{"pfid":"109","lang_id":"nl","client_id":"176","related_id":"0","supplier_id":"6882","location_id":"6882","transaction_id":null,"profile_id":null,"total":"8.00000","vat":"0.66055","subtotal":"7.33945","persons":"0","status":"1","company":"","name":null,"firstname":"EswariNisha","lastname":"Balakrishnan","address":"Justinedegouwerhof","housenr":"54","housenradd":"","postal":"2011GP","city":"Haarlem","country":null,"countryCode":"","phone":"+31612809787","comments":"","archive":"0","quote_text":null,"payment_date":"2020-11-2109:49:32","def":"1","lastStatus":"open","payment_method":"manual","hasVersenfijnDelivery":"0","quickCheckout":"0","popupId":"0","orderAcceptance":"pickup","deliveryDate":"2020-11-2106:00"}}
    ${JSONinsertorder}    Convert String to JSON    ${File}
    Create Session    session    https://dev.api.bapacho.com    auth=${auth}    #headers=${header}
    ${orderinsert}    Post Request    session    /order/insert/    json=${JSONinsertorder}    headers=${header}
    log    ${orderinsert}
    log    ${orderinsert.text}
    Should Be Equal As Strings    ${orderinsert.status_code}    200
    
Testcase2    
     ${auth}      Create List    testemailcustomer001@gmail.com    bapachocustomerpwd
    Create Session    session    https://dev.api.bapacho.com   auth=${auth}
    ${Resp}    Get Request    session    client/login
    log    ${Resp}
    Should Be Equal As Strings    ${Resp.status_code}    200  