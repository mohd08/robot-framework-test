*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keyword ***
Change Account
    set window size     1280    1280
    wait until page does not contain element    dt_core_header_acc-info-preloader   60
    wait until page contains element    ${dropdown_btn}   30
    click element   ${dropdown_btn}
    wait until page contains element    ${demo_tab}    30
    click element   ${demo_tab}
    wait until page contains element    ${demo_account}    10
    click element   ${demo_account}
    wait until page does not contain element    //*[@class="chart-container__loader"]   120

Rise Contract
    click element   ${market_btn}
    wait until page contains element    ${synthetic}    40
    click element   ${synthetic}
    wait until page contains element    ${type_synt}    40
    click element   ${type_synt}
    wait until page contains    ${rise}     40
    click element   ${rise}

Lower Contract
    click element   ${market_btn}
    wait until page contains element    ${AUD/USD}     40
    click element   ${AUD/USD}
