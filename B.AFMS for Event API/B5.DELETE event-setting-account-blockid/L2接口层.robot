*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
返回新增blockid
    ${test_data}    Get Xlsx    B1
    ${eventDisplayName}    Randomstr    1    30
    ${dict}    json.loads    ${test_data[0]['data']}
    ${data}    update_value1    ${dict}    eventDisplayName    ${eventDisplayName}
    ${info}    Post_method    ${test_data[0]['path']}    ${data}
    [Return]    ${info.json()['blockid']}

删除事件块
    [Arguments]    ${path}    ${code}
    ${info}    Delete_method    ${path}    ${air}
    Assert    ${info.json()['code']}    ${code}
    [Return]    ${info}

获取测试数据B5
    ${test_data}    Get Xlsx    B5
    Set Suite Variable    ${test_data}
