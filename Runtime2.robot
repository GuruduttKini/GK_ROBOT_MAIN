*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://thetestingworld.com/testings


*** Test Cases ***
Robot Fetch at Runtime 1
    Open Browser  ${URL}  ${BROWSER}
    MAXIMIZE BROWSER WINDOW

    Select From List By Index  name:sex  2
    ${VAL1} =  Get Selected List Value  name:sex
    log  ${VAL1}

    ${VAL2} =  Get Selected List Label  name:sex
    log  ${VAL2}

    ${VAL3} =  Get List Items  name:sex
    log  ${VAL3}



