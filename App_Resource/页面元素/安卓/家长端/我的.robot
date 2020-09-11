*** Settings ***
Resource          ../../../Common.robot

*** Keywords ***
点击-我的资料
    Click Wait Element    xpath=//android.view.View[contains(@content-desc, "立即查看")]/preceding-sibling::android.widget.ImageView

点击-立即查看
    Click Wait Element    xpath=//android.view.View[contains(@content-desc, "立即查看")]

点击-我的地址
    Click Wait Element    android=UiSelector().descriptionMatches(".*我的地址.*")

点击-我的订单
    Click Wait Element    android=UiSelector().descriptionMatches(".*我的订单.*")

点击-积分大厅
    Click Wait Element    android=UiSelector().descriptionMatches(".*积分大厅.*")

点击-切换学生
    Click Wait Element    android=UiSelector().descriptionMatches("全部\n.*")

点击-帮助与反馈
    Click Wait Element    android=UiSelector().descriptionMatches(".*帮助与反馈.*")

点击-清理缓存
    Click Wait Element    android=UiSelector().descriptionMatches(".*清理缓存.*")

点击-关于我们
    Click Wait Element    android=UiSelector().descriptionMatches(".*关于我们.*")

点击-联系我们
    Click Wait Element    android=UiSelector().descriptionMatches(".*联系我们.*")

点击-设置
    Click Wait Element    android=UiSelector().descriptionMatches(".*设置.*")
