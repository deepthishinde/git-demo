*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

User must sign in to check out
  [Documentation]  This is some basic info about the test
  [Tags]  Acceptance  Smoke  Functional
  Open Browser  http://newtours.demoaut.com/mercurysignon.php  Chrome
  Sleep  3s
  Input Text  //*[contains(@name,'userName')]  dipshn@gmail.com
  Input Text  //*[contains(@name,'password')]  deep24times
  Click Button  //*[contains(@value,'Login')]
  Sleep  5s
  Wait Until Page Contains  SIGN-OFF
  Close Browser


