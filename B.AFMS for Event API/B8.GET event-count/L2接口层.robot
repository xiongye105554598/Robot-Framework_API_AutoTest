*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取测试数据B8
    ${test_data}    Get Xlsx    B8
    Set Suite Variable    ${test_data}

获取事件数量
    [Arguments]    ${test_data}
    ${params}    json.loads    ${test_data['params']}
    ${info}    Get_method    ${test_data['path']}    ${params}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}
