*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取指定警报事件
    [Arguments]    ${test_data}
    ${data}    json.loads    ${test_data['params']}
    ${info}    Get_method    ${test_data['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据B6
    ${test_data}    Get Xlsx    B6
    Set Suite Variable    ${test_data}
