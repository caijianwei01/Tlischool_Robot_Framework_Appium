*** Settings ***
Resource          ../../../Common.robot

*** Keywords ***
点击-全部
    Click Wait Element    android=UiSelector().descriptionMatches("全部\n.*")

点击-未完成
    [Arguments]    ${index}=1
    Click Wait Element    xpath=//*[contains(@content-desc, "未完成")][${index}]

点击-待完成
    [Arguments]    ${index}=1
    Click Wait Element    xpath=//android.view.View[contains(@content-desc, "待完成")][${index}]

点击-已完成
    [Arguments]    ${index}=1
    Click Wait Element    xpath=//android.view.View[contains(@content-desc, "已完成")][${index}]

输入-文本作业信息
    [Arguments]    ${text}
