*** Settings ***
Suite Setup       获取测试数据A1
Resource          ../L2接口层.robot

*** Test Cases ***
add
    [Tags]    BVT    websocket
    [Template]
    wss    ${test_data[0]['data']}

delete
    [Tags]    websocket
    [Template]
    wss    ${test_data[1]['data']}

list
    [Tags]    websocket
    [Template]
    wss    ${test_data[2]['data']}

set
    [Tags]    websocket
    [Template]
    wss    ${test_data[3]['data']}

clear
    [Tags]    websocket
    [Template]
    wss    ${test_data[4]['data']}
