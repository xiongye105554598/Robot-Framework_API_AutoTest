*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
获取测试数据E2
    ${test_data}    Get Xlsx    E2
    Set Suite Variable    ${test_data}

删除司机id
    [Arguments]    ${digitalId}
    ${test_data}    Get Xlsx    E1
    ${params}    json.loads    ${test_data[0]['params']}
    ${info}    Get_method    ${test_data[0]['path']}    ${params}
    ${id}    Get Value    ${info.json()["data"]['list']}    digitalId    ${digitalId}    id
    Delete_method    /driver/${id}    ${air}

新增司机1
    [Arguments]    ${test_data}    ${digitalId}
    ${licenseId}    Randomstr    4    30
    ${dict}    json.loads    ${test_data['data']}
    ${data1}    update_value1    ${dict}    licenseId    ${licenseId}测试~！@#￥%123
    ${data}    update_value1    ${data1}    digitalId    ${digitalId}
    ${info}    Post_method    ${test_data['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

新增司机2
    [Arguments]    ${test_data}    ${licenseId}    ${digitalId}
    ${dict}    json.loads    ${test_data['data']}
    ${data1}    update_value1    ${dict}    licenseId    ${licenseId}
    ${data}    update_value1    ${data1}    digitalId    ${digitalId}
    ${info}    Post_method    ${test_data['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}
