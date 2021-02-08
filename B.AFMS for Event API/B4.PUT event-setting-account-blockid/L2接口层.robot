*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取测试数据B4
    ${test_data}    Get Xlsx    B4
    Set Suite Variable    ${test_data}

更新事件块
    [Arguments]    ${test_data}
    ${info}    Put_method    /event/setting/account/${blockid}    ${test_data['data']}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}
