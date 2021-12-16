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

Account Deactivation
    [arguments]     ${email}    ${pw}
    open browser    https://app.deriv.com/account/deactivate-account    browser=chrome
    wait until page does not contain element    dt_core_header_acc-info-preloader   60
    wait until page contains element    ${email_field}  30
    input text  ${email_field}   ${email}
    input text  ${pw_field}   ${pw}
    click element   ${login_outh_button}

    wait until page contains element    ${deactivate_btn}   30
    click element   ${deactivate_btn}
    wait until page contains element    ${reason1}  30
    click element   ${reason1}
    click element   ${reason2}
    input text  ${comment_field}    Overall you have a good platform but I prefer to choose other trading platform. Thank you for your services.
    click element   ${cont_btn}
    wait until page contains element    ${popup_warning}   30
    click element   ${deactivate}



