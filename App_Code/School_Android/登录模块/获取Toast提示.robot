*** Settings ***
Suite Teardown    Close Application
Resource          ../../../App_Resource/School_Android.robot

*** Test Cases ***
获取验证码错误Toast提示
    安卓家长端登录    18367157420    1234
    Sleep    5
