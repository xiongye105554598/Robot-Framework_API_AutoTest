*** Settings ***
Resource          ../../L3Public.robot
Resource          ../F4.DELETE job-id/L2接口层.robot

*** Variables ***

*** Keywords ***
更新工作状态
    [Arguments]    ${path}    ${data}    ${code}
    ${info}    Put_method    ${path}    ${data}
    Assert    ${info.json()['code']}    ${code}
    [Return]    ${info}

获取测试数据F6
    ${test_data}    Get Xlsx    F6
    Set Suite Variable    ${test_data}
