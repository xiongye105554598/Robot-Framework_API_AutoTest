*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
更新司机1
    [Arguments]    ${test_data}
    ${info}    Put_method    ${test_data['path']}    ${test_data['data']}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

更新司机2
    [Arguments]    ${test_data}    ${digitalId}
    ${dict}    json.loads    ${test_data['data']}
    ${data}    update_value1    ${dict}    digitalId    ${digitalId}
    ${info}    Put_method    ${test_data['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据E3
    ${test_data}    Get Xlsx    E3
    Set Suite Variable    ${test_data}
