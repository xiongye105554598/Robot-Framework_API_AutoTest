*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
向设备发送消息
    [Arguments]    ${path}    ${data}
    ${info}    Post_method    ${path}    ${data}
    [Return]    ${info}

获取测试数据C1
    ${test_data}    Get Xlsx    C1
    Set Suite Variable    ${test_data}
