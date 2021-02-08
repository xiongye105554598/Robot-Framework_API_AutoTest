*** Settings ***
Suite Setup       获取测试数据A2
Resource          ../L2接口层.robot

*** Test Cases ***
set
    [Tags]    BVT    websocket
    ${info}    wss    ${test_data[0]['data']}

clear
    [Tags]    websocket
    ${info}    wss    ${test_data[1]['data']}
