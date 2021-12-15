*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keyword ***
Test API
    [arguments]     ${email}    ${pw}
    Open Browser    https://app.deriv.com/account/api-token   browser=chrome
    wait until page does not contain element    dt_core_header_acc-info-preloader   60
    wait until page contains element    ${email_field}  30
    input text  ${email_field}   ${email}
    input text  ${pw_field}   ${pw}
    click element   ${login_outh_button}

    wait until page contains element    ${checkbox}     30
    click element   ${checkbox}
    input text      ${token_name}   test1
    click element   ${create}
    wait until page contains element    ${delete}     10
    click element   ${delete}
    wait until page contains element    ${yes}     8
    click element   ${yes}


