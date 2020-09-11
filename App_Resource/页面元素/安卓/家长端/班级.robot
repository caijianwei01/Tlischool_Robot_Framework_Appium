*** Settings ***
Resource          ../../../Common.robot

*** Keywords ***
点击-教师数
    Click Wait Element    android=UiSelector().descriptionMatches(".*人\n教师数")

点击-家长数
    Click Wait Element    android=UiSelector().descriptionMatches(".*人\n家长数")

点击-学生数
    Click Wait Element    android=UiSelector().descriptionMatches(".*人\n学生数")

点击-通知
    Click Wait Element    android=UiSelector().descriptionMatches("通知.*")

点击-投票
    Click Wait Element    android=UiSelector().descriptionMatches("投票.*")

点击-请假
    Click Wait Element    android=UiSelector().descriptionMatches("请假.*")

点击-动态
    Click Wait Element    android=UiSelector().descriptionMatches("动态.*")

点击-班级相册
    Click Wait Element    android=UiSelector().descriptionMatches("班级相册.*")

点击-进入聊天界面
    [Arguments]    ${index}=1
    Click Wait Element    xpath=//android.view.View[@content-desc="班级相册"]/following-sibling::android.widget.ImageView[${index}]
