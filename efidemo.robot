*** Settings ***
Resource          efidemo.resource
Suite Setup       Setup Browser
Suite Teardown    Close Browser    ALL

*** Test Cases ***
Eficode Academy Booking (OK)   
    [Tags]    training-orders-ok
    GIVEN Eficode has Advanced Robot Framework training available
    AND the Advanced Robot Framework training has vacancy
    WHEN DevOps engineer looks for a seat in Advanced Robot Framework training
    AND DevOps engineer does the registration for the course
    AND DevOps engineer pays the course with Paypal 
    THEN one seat is reserved from the Advanced Robot Framework training course for the DevOps Engineer

Eficode Academy Booking (NOK: course full)
    [Tags]    training-orders-nok
    GIVEN Eficode has Advanced Robot Framework training available
    AND the Advanced Robot Framework training is full
    WHEN DevOps engineer looks for a seat in Advanced Robot Framework training
    AND DevOps engineer fails to do registration as the course is full
    THEN DevOps engineer can contact Eficode to find the next available Advanced Robot Framework training

Eficode Academy Booking (NOK: Paypal payment fails)  
    [Tags]    training-orders-nok    training-payment-nok
    GIVEN Eficode has Advanced Robot Framework training available
    AND the Advanced Robot Framework training has vacancy
    AND DevOps engineer does not have credit on his Paypal account
    WHEN DevOps engineer looks for a seat in Advanced Robot Framework training
    AND DevOps engineer does the registration for the course
    THEN DevOps engineer fails to do the Paypal payment
    AND reserved seat is made vacant
