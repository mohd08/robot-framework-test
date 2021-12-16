*** Settings ***
Library  SeleniumLibrary
Resource    testing.robot

*** Variable ***
${email_field}  name=email
${pw_field}     //*[@type="password"]
${login_outh_button}    //*[text()="Log in"]

${checkbox}     //*[@id="app_contents"]/div/div/div/div[2]/section/div/form/div/div[1]/div[2]/div/div/div/div[1]/label/span[1]
${token_name}   name=token_name
${create}   //*[@id="app_contents"]/div/div/div/div[2]/section/div/form/div/div[2]/div[2]/div/div/div/button
${delete}   //*[@class="dc-btn dc-btn--secondary dc-btn__small"]
${yes}      //*[@id="app_contents"]/div/div/div/div[2]/section/div/form/div/div[3]/div[2]/div/div/div[1]/div[3]/div[2]/div/button[2]

${deactivate_btn}   //*[@class="dc-btn dc-btn--primary dc-btn__large deactivate-account__button"]
${reason1}  //*[@id="app_contents"]/div/div/div/div[2]/div/div/form/label[1]
${reason2}  //*[@id="app_contents"]/div/div/div/div[2]/div/div/form/label[4]
${comment_field}    name=other_trading_platforms
${cont_btn}     //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]
${popup_warning}    //*[@class="account-closure-warning-modal"]
${deactivate}   //*[@id="modal_root"]/div/div/div/div[2]/button[2]

*** Test Cases ***
Open Deriv
    #Test API    ${my_email}     ${my_pw}
    Account Deactivation    ${my_email}     ${my_pw}

#    Close Browser