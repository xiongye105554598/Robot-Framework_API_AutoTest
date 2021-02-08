*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取消息历史列表
    [Arguments]    ${path}    ${test_data}
    ${params}    json.loads    ${test_data}
    ${info}    Get_method    ${path}    ${params}
    [Return]    ${info}

获取测试数据C3
    ${test_data}    Get Xlsx    C3
    Set Suite Variable    ${test_data}
