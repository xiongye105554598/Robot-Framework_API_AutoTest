*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取指定事件块
    [Arguments]    ${path}    ${code}
    ${info}    Get_method    ${path}    ${air}
    Assert    ${info.json()['code']}    ${code}
    [Return]    ${info}

返回blockid
    ${test_data}    Get Xlsx    B2
    ${info}    Get_method    ${test_data[0]['path']}    ${air}
    ${blockid}    Set variable    ${info.json()['result'][-3]['blockid']}
    Set Global Variable    ${blockid}

获取测试数据B3
    ${test_data}    Get Xlsx    B3
    Set Suite Variable    ${test_data}
