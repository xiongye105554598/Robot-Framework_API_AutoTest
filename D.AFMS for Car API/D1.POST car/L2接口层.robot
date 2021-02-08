*** Settings ***
Resource          ../../L3Public.robot

*** Variables ***

*** Keywords ***
删除Car_id
    [Arguments]    ${licensePlateNumber}
    ${test_data}    Get Xlsx    D2
    ${params}    json.loads    ${test_data[0]['params']}
    ${info}    Get_method    ${test_data[0]['path']}    ${params}
    ${id}    Get Value    ${info.json()["data"]['list']}    licensePlateNumber    ${licensePlateNumber}    id
    Delete_method    /car/${id}    ${air}

返回deviceid
    ${uniqueid_displayname}    Randomstr    4    20
    ${detail}    Create Dictionary    samplekey=test
    ${device_data}    Create Dictionary    model=CDR8010    uniqueid=${uniqueid_displayname}    displayname=${uniqueid_displayname}    detail=${detail}
    ${data}    Create Dictionary    device=${device_data}
    Create Session    api    https://aiot.qat.askeycloudapi.com/v1    ${headers}    verify=True
    ${info}    Post Request    api    /assets/device    data=${data}
    log    ${info.json()}
    [Return]    ${info.json()['deviceid']}

新增汽车1
    [Arguments]    ${test_data}    ${licensePlateNumber}
    ${id}    返回deviceid
    ${dict}    json.loads    ${test_data['data']}
    ${data1}    update_value1    ${dict}    licensePlateNumber    ${licensePlateNumber}
    ${data}    update_value2    ${data1}    device    id    ${id}
    ${info}    Post_method    ${test_data['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

新增汽车2
    [Arguments]    ${test_data}
    ${licensePlateNumber}    Randomstr    4    20
    ${dict}    json.loads    ${test_data['data']}
    ${data}    update_value1    ${dict}    licensePlateNumber    ${licensePlateNumber}
    ${info}    Post_method    ${test_data['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据D1
    ${test_data}    Get Xlsx    D1
    Set Suite Variable    ${test_data}
