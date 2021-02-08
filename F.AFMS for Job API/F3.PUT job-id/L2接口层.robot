*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
更新工作
    [Arguments]    ${test_data}
    ${info}    Put_method    ${test_data['path']}    ${test_data['data']}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据F3
    ${test_data}    Get Xlsx    F3
    Set Suite Variable    ${test_data}
