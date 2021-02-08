*** Settings ***
Suite Setup       获取测试数据B6
Resource          L2接口层.robot

*** Test Cases ***
获取指定警报事件
    [Tags]    BVT
    获取指定警报事件    ${test_data[0]}

eventid为空
    获取指定警报事件    ${test_data[1]}

eventid错误
    获取指定警报事件    ${test_data[2]}

获取其它账号下的eventid
    获取指定警报事件    ${test_data[3]}
