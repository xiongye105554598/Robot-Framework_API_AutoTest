*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
向组发送消息
    [Arguments]    ${path}    ${data}
    ${info}    Post_method    ${path}    ${data}
    [Return]    ${info}

获取测试数据C2
    ${test_data}    Get Xlsx    C2
    Set Suite Variable    ${test_data}
