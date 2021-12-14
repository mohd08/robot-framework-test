*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keyword ***
Login
    [arguments]     ${email}    ${pw}
    Open Browser    url=https://app.deriv.com   browser=chrome
    wait until page does not contain element    dt_core_header_acc-info-preloader   60
    wait until page contains element    ${login_btn}    60
    click element   ${login_btn}
    wait until page contains element    ${email_field}  15
    input text  ${email_field}   ${email}
    input text  ${pw_field}   ${pw}
    click element   ${login_outh_button}