*** Settings ***
Suite Setup       获取测试数据B2
Resource          L2接口层.robot

*** Test Cases ***
获取所有事件块
    [Tags]    BVT
    ${info}    获取所有事件块    ${test_data[0]}
    Should Not Be Empty    ${info.json()['result']}

series为空
    获取所有事件块    ${test_data[1]}

series不存在
    ${info}    获取所有事件块    ${test_data[2]}
    Should Be Empty    ${info.json()['result']}
