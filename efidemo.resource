*** Settings ***
Library       Browser

*** Variables ***
${BROWSER}    chromium

*** Keywords ***
Setup Browser
    New Browser    browser=${BROWSER}    headless=true
    New Context    ignoreHTTPSErrors=${TRUE}

Eficode has Advanced Robot Framework training available
    New Page    https://www.eficode.com/academy
    Get Element   css=h4.card-title >> text=Advanced Web Testing with Robot Framework

The Advanced Robot Framework training is full
    Log   No automation needed for precondition

The Advanced Robot Framework training has vacancy
    Log   No automation needed for precondition
	
DevOps engineer looks for a seat in Advanced Robot Framework training
    Click    css=h4.card-title >> text=Advanced Web Testing with Robot Framework
#    Click    id=hs-eu-decline-button    # close cookie popup
    Get Element    css=a.primary-button >> text=Book

DevOps engineer fails to do registration as the course is full
    Click    css=a.primary-button >> text=Book
    Switch Page    NEW
    Get Title    contains    Advanced Web Testing with Robot Framework
    Get Element    text=Unavailable
	
DevOps engineer can contact Eficode to find the next available Advanced Robot Framework training
    Click    css=button.eds-btn >> text=Contact
    Get Element    id=eds-modal-title >> text=Contact the Organiser
    Click    css=button.eds-btn >> text=Contact the Organiser
    Fill In The Contact Form

Fill In The Contact Form
    Type Text    id=name    Timo Stordell
    Type Text    id=email    timo.stordell@eficode.com
    Select Options By    select[name=reason]    text    Question about the event
    Type Text    id=message    I'm interested know when is the next Robot Framework training
    Click    css=button.eds-btn >> text=Continue
    Get Element    css=button.eds-btn >> text=Submit Request

DevOps engineer does the registration for the course
    Log To Console    This keyword is not yet implemented
    Fail

DevOps engineer pays the course with Paypal
    Log To Console    This keyword is not yet implemented
    Fail

One seat is reserved from the Advanced Robot Framework training course for the DevOps Engineer
    Log To Console    This keyword is not yet implemented
    Fail

