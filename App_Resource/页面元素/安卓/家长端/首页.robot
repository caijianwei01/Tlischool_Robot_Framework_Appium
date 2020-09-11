*** Settings ***
Resource          ../../../Common.robot

*** Keywords ***
点击-作业
    Click Wait Element    android=UiSelector().descriptionMatches("作业")

点击-考试
    Click Wait Element    android=UiSelector().descriptionMatches("考试")

点击-邀请
    Click Wait Element    android=UiSelector().descriptionMatches("邀请")

点击-班级相册
    Click Wait Element    android=UiSelector().descriptionMatches("班级 相册")

点击-话题
    Click Wait Element    android=UiSelector().descriptionMatches("话题")

点击-查看详情
    Click Wait Element    android=UiSelector().descriptionMatches("查看详情")

点击-通知
    Click Wait Element    android=UiSelector().descriptionMatches("学校通知.*")
