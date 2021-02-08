*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
删除Geofence_id
    [Arguments]    ${name}
    ${test_data}    Get Xlsx    G1
    ${params}    json.loads    ${test_data[0]['params']}
    ${info}    Get_method    ${test_data[0]['path']}    ${params}
    ${id}    Get Value    ${info.json()["data"]['list']}    name    ${name}    id
    ${test_data}    Get Xlsx    G4
    Delete_method    /geofence/${id}    ${air}

新增地理围栏
    [Arguments]    ${test_data}    ${name}
    ${dict}    json.loads    ${test_data['data']}
    ${data}    update_value1    ${dict}    name    ${name}
    ${info}    Post_method    ${test_data['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据G2
    ${test_data}    Get Xlsx    G2
    Set Suite Variable    ${test_data}
