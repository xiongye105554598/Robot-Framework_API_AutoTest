*** Settings ***
Suite Setup       获取测试数据B4
Resource          L2接口层.robot

*** Test Cases ***
更新RDB_SERIOUS_BREAK事件块
    [Tags]    BVT
    更新事件块    ${test_data[0]}

更新EVENT_MIDDLE_CRASH事件块
    [Template]
    更新事件块    ${test_data[1]}

更新EVENT_BIG_CRASH事件块
    [Template]
    更新事件块    ${test_data[2]}

更新RDB_SERIOUS_TURN事件块
    [Template]
    更新事件块    ${test_data[3]}

更新RDB_SERIOUS_ACCELERATION事件块
    [Template]
    更新事件块    ${test_data[4]}

更新ADAS_FCW事件块
    [Template]
    更新事件块    ${test_data[5]}

更新ADAS_LDW_LEFT事件块
    [Template]
    更新事件块    ${test_data[6]}

更新ADAS_LDW_RIGHT事件块
    [Template]
    更新事件块    ${test_data[7]}

更新STOP_AND_GO事件块
    [Template]
    更新事件块    ${test_data[8]}

eventDisplayName重复
    [Template]
    更新事件块    ${test_data[9]}

eventDisplayName为空
    [Template]
    更新事件块    ${test_data[10]}

eventDisplayName为30个字符
    [Template]
    ${eventDisplayName}    Randomstr    30    30
    ${dict}    json.loads    ${test_data[11]['data']}
    ${data}    update_value1    ${dict}    eventDisplayName    ${eventDisplayName}
    ${info}    Put_method    /event/setting/account/${blockid}    ${data}
    Assert    ${info.json()['code']}    ${test_data[11]['code']}

eventDisplayName为31个字符
    [Template]
    ${eventDisplayName}    Randomstr    31    31
    ${dict}    json.loads    ${test_data[12]['data']}
    ${data}    update_value1    ${dict}    eventDisplayName    ${eventDisplayName}
    ${info}    Put_method    /event/setting/account/${blockid}    ${data}
    Assert    ${info.json()['code']}    ${test_data[12]['code']}

timeWindowInMillis错误
    [Template]
    更新事件块    ${test_data[13]}

timeWindowInMillis为4999
    [Template]
    更新事件块    ${test_data[14]}

timeWindowInMillis为5000
    [Template]
    更新事件块    ${test_data[15]}

timeWindowInMillis为60000
    [Template]
    更新事件块    ${test_data[16]}

timeWindowInMillis为60001
    [Template]
    更新事件块    ${test_data[17]}

eventType为多次
    [Template]
    更新事件块    ${test_data[18]}

eventType为一次_count
    [Template]
    更新事件块    ${test_data[19]}

count为空
    [Template]
    更新事件块    ${test_data[20]}

count为非整数
    [Template]
    更新事件块    ${test_data[21]}

count值为1
    [Template]
    更新事件块    ${test_data[22]}

count值为5
    [Template]
    更新事件块    ${test_data[23]}

count值为6
    [Template]
    更新事件块    ${test_data[24]}

resolverClassName为空
    [Template]
    更新事件块    ${test_data[25]}

resolverClassName不存在
    [Template]
    更新事件块    ${test_data[26]}

series为空
    更新事件块    ${test_data[27]}

series不存在
    更新事件块    ${test_data[28]}
