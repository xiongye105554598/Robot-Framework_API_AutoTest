*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取所有地理围栏
    [Arguments]    ${test_data}
    ${params}    json.loads    ${test_data['params']}
    ${info}    Get_method    ${test_data['path']}    ${params}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据G1
    ${test_data}    Get Xlsx    G1
    Set Suite Variable    ${test_data}
