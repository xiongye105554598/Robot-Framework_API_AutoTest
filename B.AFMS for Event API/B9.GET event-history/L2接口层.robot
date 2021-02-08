*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取测试数据B9
    ${test_data}    Get Xlsx    B9
    Set Suite Variable    ${test_data}

获取设备历史事件
    [Arguments]    ${path}    ${test_data}
    ${params}    json.loads    ${test_data}
    ${info}    Get_method    ${path}    ${params}
    [Return]    ${info}
