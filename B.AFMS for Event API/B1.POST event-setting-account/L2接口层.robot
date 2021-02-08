*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
删除新增事件块
    [Arguments]    ${blockid}
    Delete_method    /event/setting/account/${blockid}    ${air}

新增事件块1
    [Arguments]    ${test_data}
    ${eventDisplayName}    Randomstr    1    30
    ${dict}    json.loads    ${test_data['data']}
    ${data}    update_value1    ${dict}    eventDisplayName    ${eventDisplayName}
    ${info}    Post_method    ${test_data['path']}    ${data}
    删除新增事件块    ${info.json()['blockid']}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

新增事件块2
    [Arguments]    ${test_data}
    ${eventDisplayName}    Randomstr    1    30
    ${dict}    json.loads    ${test_data['data']}
    ${data}    update_value1    ${dict}    eventDisplayName    ${eventDisplayName}
    ${info}    Post_method    ${test_data['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据B1
    ${test_data}    Get Xlsx    B1
    Set Suite Variable    ${test_data}
