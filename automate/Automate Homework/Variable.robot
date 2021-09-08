*** Variables ***
${web}=             http://www.doppio-tech.com:8080/login                  
${username_box}=        xpath=//input[@id='j_username']
${password_box}=        xpath=//input[@name='j_password']
${sign_in}=             xpath=//input[@name='Submit']

*** Keywords ***

openweb       
    open browser        ${web}        chrome         
    Maximize Browser Window

closeweb
    Close All browsers