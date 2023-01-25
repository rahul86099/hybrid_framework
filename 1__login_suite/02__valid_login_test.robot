*** Settings ***

Documentation  This file contains test case related to valid login

Resource    ../resource/base/common_functionalities.resource
Test Setup  Launch Browser and Navigate to URL
Task Teardown   Close Browser
Test Template  Valid Login Template


*** Test Cases ***
Valid Login Test1  Admin  admin123  Dashboard
#Valid Login Test2  Admin1  admin123  Dashboard


*** Keywords ***
Valid Login Template
  [Arguments]  ${username}  ${password}  ${expected_result}

  Input Text    name=username    ${username}
  Input Text    name=password    ${password}
  Click Element    xpath=//button[contains(normalize-space(),'Login')]
  Element Should Contain    xpath=//h6[contains(@class,'oxd-text oxd-text--h6')]    ${expected_result}