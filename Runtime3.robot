*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://thetestingworld.com/testings


*** Test Cases ***
Robot Fetch at Runtime 1
    Open Browser  ${URL}  ${BROWSER}
    MAXIMIZE BROWSER WINDOW

    ${currentURL} =  Get Location
    log  ${currentURL}

    ${page_source} =  Get Source
    log  ${page_source}

    ${elem_attribute} =  Get Element Attribute  name:fld_username  class
    log  ${elem_attribute}

    ${elem_count} =  Get Element Count  class:field
    log  ${elem_count}

