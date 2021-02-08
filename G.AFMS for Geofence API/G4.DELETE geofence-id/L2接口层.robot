*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
返回新增地理围栏id
    ${test_data}    Get Xlsx    G2
    ${name}    Randomstr    4    25
    ${dict}    json.loads    ${test_data[0]['data']}
    ${data}    update_value1    ${dict}    name    ${name}
    ${info}    Post_method    ${test_data[0]['path']}    ${data}
    ${test_data1}    Get Xlsx    G1
    ${params}    json.loads    ${test_data1[0]['params']}
    ${info}    Get_method    ${test_data1[0]['path']}    ${params}
    ${id}    Get Value    ${info.json()["data"]['list']}    name    ${name}    id
    [Return]    ${id}

删除地理围栏
    [Arguments]    ${path}    ${code}
    ${info}    Delete_method    ${path}    ${air}
    Assert    ${info.json()['code']}    ${code}
    [Return]    ${info}

获取测试数据G4
    ${test_data}    Get Xlsx    G4
    Set Suite Variable    ${test_data}
