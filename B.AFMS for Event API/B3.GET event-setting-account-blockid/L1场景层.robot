*** Settings ***
Suite Setup       获取测试数据B3
Resource          L2接口层.robot

*** Test Cases ***
获取指定事件块
    [Tags]    BVT
    [Setup]
    ${info}    获取指定事件块    /event/setting/account/${blockid}    ${test_data[0]['code']}
    Should Not Be Empty    ${info.json()['result']}

blockid不存在
    ${info}    获取指定事件块    ${test_data[1]['path']}    ${test_data[1]['code']}
    Should Be Empty    ${info.json()['result']}
