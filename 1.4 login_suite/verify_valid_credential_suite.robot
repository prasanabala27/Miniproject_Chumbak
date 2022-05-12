*** Settings ***
Documentation   This suite will handle valid credentail

Resource     ../1.1 resource/commonfunctionality.resource

Test Setup   Launch Browser
Test Teardown   Close Browser
Test Template    verify valid credential
Library     DataDriver      file=../1.3 test_data/data.xlsx   sheet_name=valid Credential


*** Test Cases ***
TC1

*** Keywords ***
verify valid credential
   [Arguments]    ${email_id}   ${password}
   Click Element    id=user_6_
   Click Element    link=Login
   Click Element    name=customer[email]
   Input Text    xpath=//input[@name='customer[email]']     ${email_id}
   Input Password    xpath=//input[@name='customer[password]']     ${password}
   Click Element    xpath=(//button[@type='submit'])[2]
