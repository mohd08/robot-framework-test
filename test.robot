*** Settings ***
Library  SeleniumLibrary
Resource    common.robot
Resource    task.robot

*** Variable ***
${login_btn}    dt_login_button
${email_field}  name=email
${pw_field}     //*[@type="password"]
${login_outh_button}    //*[text()="Log in"]
${dropdown_btn}     //*[@id="dt_core_account-info_acc-info"]
${demo_tab}     dt_core_account-switcher_demo-tab
${demo_account}     //*[contains(@class,"acc-switcher__id")]

${market_btn}       //*[@class="cq-symbol-select-btn"]
${synthetic}    //*[text()="Synthetic Indices"]
${type_synt}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/div[1]/div[2]/div[1]
${rise}     //*[@id="dt_purchase_call_button"]/div[4]

${AUD/USD}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[3]/div[1]/div[3]


*** Keyword ***

*** Test Cases ***
Open Deriv
    Login   ${my_email}     ${my_pw}
    Change Account
    Rise Contract

#    Close Browser