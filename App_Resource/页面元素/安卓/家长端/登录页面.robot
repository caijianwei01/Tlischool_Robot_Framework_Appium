*** Settings ***
Resource          ../../../Common.robot

*** Keywords ***
输入-手机号
    [Arguments]    ${phone}
    Press Keycode Wait Element    android=UiSelector().textMatches("请输入手机号")    ${phone}

输入-短信验证码
    [Arguments]    ${code}
    Press Keycode Wait Element    android=UiSelector().textMatches("请输入短信验证码")    ${code}

点击-获取验证码
    Click Wait Element    android=UiSelector.descriptionMatches("获取验证码")

点击-登录
    Click Wait Element    android=UiSelector().descriptionMatches("登录")

点击-微信登录
    Click Wait Element    android=UiSelector().descriptionMatches("微信登录")

点击-立即注册
    Click Wait Element    android=UiSelector().descriptionMatches("立即登录")

点击-用户协议
    Click Wait Element    android=UiSelector().descriptionMatches("用户协议")

点击-隐私政策
    Click Wait Element    android=UiSelector().descriptionMatches("隐私政策")
