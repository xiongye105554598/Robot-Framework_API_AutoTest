*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取汽车
    [Arguments]    ${test_data}
    ${info}    Get_method    ${test_data['path']}    ${air}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据D4
    ${test_data}    Get Xlsx    D4
    Set Suite Variable    ${test_data}
