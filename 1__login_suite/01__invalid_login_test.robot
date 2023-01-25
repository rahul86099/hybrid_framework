*** Settings ***

Documentation  This file contains test case related to invalid login

Resource    ../resource/base/common_functionalities.resource
Test Setup  Launch Browser and Navigate to URL
Task Teardown   Close Browser
Library  DataDriver  file=../test_data/orange_data.xlsx  sheet_name=InvalidLoginTest
Test Template  Invalid Login Template



*** Test Cases ***
TC1


*** Keywords ***
Invalid Login Template
  [Arguments]  ${username}  ${password}  ${expected_error}

  Input Text    name=username    ${username}
  Input Text    name=password    ${password}
  Click Element    xpath=//button[contains(normalize-space(),'Login')]
  Element Should Contain    xpath=//p[contains(@class,'oxd-alert-content-text')]    ${expected_error}