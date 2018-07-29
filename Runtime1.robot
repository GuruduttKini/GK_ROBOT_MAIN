*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER} =  chrome
${URL} =  http://thetestingworld.com/testings


*** Test Cases ***
Robot Fetch at Runtime 1
    Open Browser  ${URL}  ${BROWSER}
    MAXIMIZE BROWSER WINDOW
    ${PAGE_TITLE} =  get title
    log  ${PAGE_TITLE}

    ${SELENIUM_SPEED} =  GET SELENIUM SPEED
    LOG  ${SELENIUM_SPEED}

    ${VALUE} =  get value  xpath://input[@type='submit']
    log  ${VALUE}
    ${TEXT} =  get text  xpath://a[@class='displayPopup']
    log  ${TEXT}


