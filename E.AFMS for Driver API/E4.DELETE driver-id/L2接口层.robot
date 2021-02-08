*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
返回新增司机id
    ${test_data}    Get Xlsx    E2
    ${random}    Randomstr    4    50
    ${dict}    json.loads    ${test_data[0]['data']}
    ${data1}    update_value1    ${dict}    licenseId    ${random}
    ${data}    update_value1    ${data1}    digitalId    ${random}
    ${info}    Post_method    ${test_data[0]['path']}    ${data}
    ${test_data1}    Get Xlsx    E1
    ${params}    json.loads    ${test_data1[0]['params']}
    ${info}    Get_method    ${test_data1[0]['path']}    ${params}
    ${id}    Get Value    ${info.json()["data"]['list']}    digitalId    ${random}    id
    [Return]    ${id}

删除司机
    [Arguments]    ${path}    ${code}
    ${info}    Delete_method    ${path}    ${air}
    Assert    ${info.json()['code']}    ${code}
    [Return]    ${info}

获取测试数据E4
    ${test_data}    Get Xlsx    E4
    Set Suite Variable    ${test_data}
