*** Settings ***
Suite Teardown    Close Application
Resource          ../../../App_Resource/School_Android.robot
Resource          ../../../App_Resource/页面元素/安卓/家长端/底部菜单栏.robot
Resource          ../../../App_Resource/页面元素/安卓/家长端/班级.robot
Resource          ../../../App_Resource/页面元素/安卓/家长端/我的.robot
Resource          ../../../App_Resource/页面元素/安卓/家长端/首页.robot
Resource          ../../../App_Resource/页面元素/安卓/家长端/作业.robot

*** Variables ***

*** Test Cases ***
账号密码登录
    安卓家长端登录    18367157420    1234
    点击-我的
    点击-班级
    点击-考勤
    [Teardown]

账号密码登录1001
    安卓家长端登录    18367157420    1234
    点击-作业
    点击-未完成
    点击-未完成    2
    [Teardown]
