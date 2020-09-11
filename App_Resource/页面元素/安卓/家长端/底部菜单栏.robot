*** Settings ***
Resource          ../../../Common.robot

*** Keywords ***
点击-首页
    Click Wait Element    android=UiSelector().descriptionMatches("首页\n.*")

点击-考勤
    Click Wait Element    android=UiSelector().descriptionMatches("考勤\n.*")

点击-班级
    Click Wait Element    android=UiSelector().descriptionMatches("班级\n.*")

点击-我的
    Click Wait Element    android=UiSelector().descriptionMatches("我的\n.*")
