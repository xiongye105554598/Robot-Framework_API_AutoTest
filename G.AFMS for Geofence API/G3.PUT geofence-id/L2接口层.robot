*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
更新地理围栏
    [Arguments]    ${test_data}    ${name}
    ${data1}    json.loads    ${test_data['data']}
    ${data}    update_value1    ${data1}    name    ${name}
    ${info}    Put_method    ${test_data['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据G3
    ${test_data}    Get Xlsx    G3
    Set Suite Variable    ${test_data}
