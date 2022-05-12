*** Settings ***
Documentation   This suite will handle invalid credentail

Resource     ../1.1 resource/commonfunctionality.resource

Test Setup   Launch Browser
#Test Teardown   Close Browser
Test Template    verify invalid credential

*** Test Cases ***
TC1     prasanabalaji@gmail.com    123456@A
TC2     hello@gmail,com     12232232@aaaa



*** Keywords ***
verify invalid credential
   [Arguments]    ${email_id}   ${password}
   Click Element    id=user_6_
   Click Element    link=Login
   Click Element    name=customer[email]
   Input Text    xpath=//input[@name='customer[email]']     ${email_id}
   Input Password    xpath=//input[@name='customer[password]']     ${password}
   Click Element    xpath=(//button[@type='submit'])[2]
   Element Text Should Be    xpath=//p[@class="Form__Alert Alert Alert--error"]    Incorrect email or password.

