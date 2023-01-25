   This file contains test case for add valid employee
...  records

Resource    ../resource/base/common_functionalities.resource
Test Setup  Launch Browser and Navigate to URL
Library  DataDriver  file=../test_data/orange_data.xlsx  sheet_name=AddEmployee
Test Template  Valid Template
Test Teardown   Close Browser

*** Test Cases ***
Valid Template Test${SPACE}${test_name}

*** Keywords ***
Valid Template
  [Arguments]  ${username}  ${password}  ${firstName}  ${middleName}  ${lastName}  ${expected_header}  ${expected_value}

  Input Text    name=username     ${username}
  Input Text    name=password     ${password}
  Click Element    xpath=//button[contains(normalize-space(),'Login')]
  Click Element    xpath=//span[contains(normalize-space(),'PIM')]
  Click Element    link=Add Employee
  Input Text    name=firstName    ${firstName}
  Input Text    name=middleName   ${middleName}
  Input Text    name=lastName     ${lastName}
  Click Element    xpath=//button[contains(normalize-space(),'Save')]
  Wait Until Page Contains    ${firstName}${SPACE}${lastName}
  Element Should Contain    xpath=//h6[contains(normalize-space(),'${firstName}')]    ${expected_header}
  Element Attribute Value Should Be    name=firstName    value    ${expected_value}




