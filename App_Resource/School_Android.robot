*** Settings ***
Resource          Common.robot
Resource          页面元素/安卓/家长端/登录页面.robot

*** Variables ***
${remote_url}     http://127.0.0.1:4724/wd/hub
${udid}           79UDU19917001433
${platformVersion}    10
${appPackage}     com.taoli.cloudschool
${appActivity}    com.taoli.cloudschool.MainActivity

*** Keywords ***
启动桃李云校App
    [Arguments]    ${remote_url}    ${appPackage}    ${appActivity}    ${udid}    ${platformVersion}    ${automationName}=uiautomator2
    ${desired_capabilities}    Create Dictionary
    Set To Dictionary    ${desired_capabilities}    automationName=${automationName}
    Set To Dictionary    ${desired_capabilities}    platformName=Android
    Set To Dictionary    ${desired_capabilities}    deviceName=${udid}
    Set To Dictionary    ${desired_capabilities}    udid=${udid}
    Set To Dictionary    ${desired_capabilities}    newCommandTimeout=360
    Set To Dictionary    ${desired_capabilities}    unicodeKeyboard=${True}
    Set To Dictionary    ${desired_capabilities}    resetKeyboard=${True}
    Comment    Set To Dictionary    ${desired_capabilities}    noReset=${True}
    Set To Dictionary    ${desired_capabilities}    appPackage=${appPackage}
    Set To Dictionary    ${desired_capabilities}    appActivity=${appActivity}
    Open Application    ${remote_url}    alias=schoolApp    &{desired_capabilities}
    Comment    Open Application    ${remote_url}    alias=schoolApp    automationName=${automationName}    platformName=Android    deviceName=${udid}    udid=${udid}    newCommandTimeout=360    unicodeKeyboard=${True}    resetKeyboard=${True}    noReset=${True}    appPackage=${appPackage}    appActivity=${appActivity}

安卓家长端登录
    [Arguments]    ${phone}    ${vcode}
    启动桃李云校App    ${remote_url}    ${appPackage}    ${appActivity}    ${udid}    ${platformVersion}
    Wait Until Element Is Visible    android=UiSelector().resourceIdMatches(".*android:id/content.*")
    Repeat Keyword    5    Swipe By Percent    80    50    20    50
    Tap    android=UiSelector().resourceIdMatches(".*android:id/content.*")    600    600
    输入-手机号    ${phone}
    输入-短信验证码    ${vcode}
    点击-登录
