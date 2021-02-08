*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取指定事件ID信息
    [Arguments]    ${path}
    ${info}    Get_method    ${path}    ${air}
    [Return]    ${info}

获取测试数据B7
    ${test_data}    Get Xlsx    B7
    Set Suite Variable    ${test_data}
