*** Settings ***
Documentation   This suite will handle register credentail

Resource     ../1.1 resource/commonfunctionality.resource

Test Setup   Launch Browser
Test Teardown   Close Browser
Test Template    verify valid register


*** Test Cases ***
TC1     prasanna    balaji    prasanabalaji@gmail.com    123456@Aa
TC2     bala    bala    bala1234@gmail.com      12345678@aA


*** Keywords ***
verify valid register
    [Arguments]   ${username}   ${lastname}    ${email_id}   ${password}
    Click Element    id=user_6_
    Click Element    link=Login
    Click Element    link=Create one
    Input Text    xpath=//input[@name='customer[first_name]']    ${username}
    Input Text    xpath=//input[@name='customer[last_name]']     ${lastname}
    Input Text    xpath=//input[@name='customer[email]']     ${email_id}
    Input Password    xpath=//input[@name='customer[password]']     ${password}
    Click Element    xpath=(//button[@type='submit'])[2]

