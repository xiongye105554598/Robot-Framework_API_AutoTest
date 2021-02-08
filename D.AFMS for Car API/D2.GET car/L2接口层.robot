*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取所有汽车
    [Arguments]    ${test_data}
    ${params}    json.loads    ${test_data['params']}
    ${info}    Get_method    ${test_data['path']}    ${params}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据D2
    ${test_data}    Get Xlsx    D2
    Set Suite Variable    ${test_data}
