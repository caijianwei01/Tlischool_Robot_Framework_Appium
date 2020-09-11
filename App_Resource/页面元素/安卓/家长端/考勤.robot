*** Settings ***
Resource          ../../../Common.robot

*** Keywords ***
点击-日期下拉箭头
    Click Wait Element    xpath=//android.widget.ScrollView/android.view.View[2]

点击-统计
    Click Wait Element    android=UiSelector().descriptionMatches("统计")

点击-<
    Click Wait Element    xpath=//android.widget.Button[@content-desc="月"]/following-sibling::android.view.View[1]
