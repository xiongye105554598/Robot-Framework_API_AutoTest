*** Settings ***
Suite Setup       获取测试数据B7
Resource          L2接口层.robot

*** Test Cases ***
获取指定事件ID信息
    [Tags]    BVT
    ${info}    获取指定事件ID信息    ${test_data[0]['path']}
    Assert    ${info.status_code}    ${test_data[0]['code']}

eventid错误
    ${info}    获取指定事件ID信息    ${test_data[1]['path']}
    Assert    ${info.json()['error']['code']}    ${test_data[1]['code']}

获取其它账号下的eventid
    ${info}    获取指定事件ID信息    ${test_data[2]['path']}
    Assert    ${info.json()['error']['code']}    ${test_data[2]['code']}
