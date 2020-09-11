*** Settings ***
Library           AppiumLibrary
Library           Collections
Library           String
Library           verification_library
Library           MyWin32

*** Variables ***
${timeout}        15

*** Keywords ***
Click Wait Element
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}    timeout=${timeout}    error="Not Found"
    Tap    ${locator}

If Page Contain Element
    [Arguments]    ${locator}
    ${result}    Run Keyword And Ignore Error    Wait Until Page Contains Element    ${locator}    ${timeout}
    [Return]    ${result}[0]

Input Text Wait Element
    [Arguments]    ${locator}    ${text}
    Wait Until Page Contains Element    ${locator}    timeout=${timeout}    error="Not Found"
    Click Wait Element    ${locator}
    Input Text    ${locator}    ${text}

Input Password Wait Element
    [Arguments]    ${locator}    ${pwd}
    Wait Until Page Contains Element    ${locator}    timeout=${timeout}    error="Not Found"
    Click Wait Element    ${locator}
    Input Password    ${locator}    ${pwd}

Input Value Wait Element
    [Arguments]    ${locator}    ${text}
    Wait Until Page Contains Element    ${locator}    timeout=${timeout}    error="Not Found"
    Input Value    ${locator}    ${text}

Press Keycode Wait Element
    [Arguments]    ${locator}    ${text}
    Wait Until Page Contains Element    ${locator}    timeout=${timeout}    error="Not Found"
    Click Wait Element    ${locator}
    @{nums}    Evaluate    list(str(${text}))
    Sleep    0.5
    FOR    ${num}    IN    @{nums}
        ${code}    Get Key Code    ${num}
        Press Keycode    ${code}
        Sleep    0.1
    END

检查点
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}    timeout=${timeout}    error="Not Found!"

获取Toast消息
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}    ${timeout}    "not found!"
    ${toast_text}    Get Text    ${locator}
    [Return]    ${toast_text}
