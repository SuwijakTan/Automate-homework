*** Settings ***
library         SeleniumLibrary
Library         DataDriver        ../Test Data/Login Data.csv 
Resource        ../Automate Homework/Variable.robot
Suite Setup         openweb
Suite Teardown      closeweb

*** Keywords ***

Login
    [Arguments]         ${username}        ${password}          ${message}       ${element}      
    Input text          ${username_box}         ${username}      
    Input text          ${password_box}         ${password}
    click button      ${sign_in}
    wait until page contains element       ${element}   
    # wait until element is visible       ${element}
    element text should be          ${element}          ${message}

*** Test Cases *** 
Login
    [Template]      Login
    ${username}        ${password}          ${message}       
    