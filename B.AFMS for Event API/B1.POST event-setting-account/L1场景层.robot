*** Settings ***
Suite Setup       获取测试数据B1
Resource          L2接口层.robot

*** Test Cases ***
新增RDB_SERIOUS_BREAK事件块
    [Tags]    BVT
    [Template]
    新增事件块1    ${test_data[0]}

新增EVENT_MIDDLE_CRASH事件块
    [Template]
    新增事件块1    ${test_data[1]}

新增EVENT_BIG_CRASH事件块
    [Template]
    新增事件块1    ${test_data[2]}

新增RDB_SERIOUS_TURN事件块
    [Template]
    新增事件块1    ${test_data[3]}

新增RDB_SERIOUS_ACCELERATION事件块
    [Template]
    新增事件块1    ${test_data[4]}

新增ADAS_FCW事件块
    [Template]
    新增事件块1    ${test_data[5]}

新增ADAS_LDW_LEFT事件块
    [Template]
    新增事件块1    ${test_data[6]}

新增ADAS_LDW_RIGHT事件块
    [Template]
    新增事件块1    ${test_data[7]}

新增STOP_AND_GO事件块
    [Template]
    新增事件块1    ${test_data[8]}

eventDisplayName重复
    [Template]
    ${info}    Post_method    ${test_data[9]['path']}    ${test_data[9]['data']}
    Assert    ${info.json()['code']}    ${test_data[9]['code']}

eventDisplayName为空
    [Template]
    ${info}    Post_method    ${test_data[10]['path']}    ${test_data[10]['data']}
    Assert    ${info.json()['code']}    ${test_data[10]['code']}

eventDisplayName为30个字符
    [Template]
    ${eventDisplayName}    Randomstr    30    30
    ${dict}    json.loads    ${test_data[11]['data']}
    ${data}    update_value1    ${dict}    eventDisplayName    ${eventDisplayName}
    ${info}    Post_method    ${test_data[11]['path']}    ${data}
    删除新增事件块    ${info.json()['blockid']}
    Assert    ${info.json()['code']}    ${test_data[11]['code']}

eventDisplayName为31个字符
    [Template]
    ${eventDisplayName}    Randomstr    31    31
    ${dict}    json.loads    ${test_data[12]['data']}
    ${data}    update_value1    ${dict}    eventDisplayName    ${eventDisplayName}
    ${info}    Post_method    ${test_data[12]['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data[12]['code']}

timeWindowInMillis错误
    [Template]
    新增事件块2    ${test_data[13]}

timeWindowInMillis为4999
    [Template]
    新增事件块2    ${test_data[14]}

timeWindowInMillis为5000
    [Template]
    新增事件块1    ${test_data[15]}

timeWindowInMillis为60000
    [Template]
    新增事件块1    ${test_data[16]}

timeWindowInMillis为60001
    [Template]
    新增事件块2    ${test_data[17]}

eventType为多次
    [Template]
    新增事件块1    ${test_data[18]}

eventType为一次_count
    [Template]
    新增事件块1    ${test_data[19]}

count为空
    [Template]
    新增事件块2    ${test_data[20]}

count为非整数
    [Template]
    新增事件块2    ${test_data[21]}

count值为1
    [Template]
    新增事件块1    ${test_data[22]}

count值为5
    [Template]
    新增事件块1    ${test_data[23]}

count值为6
    [Template]
    新增事件块2    ${test_data[24]}

resolverClassName为空
    [Template]
    新增事件块2    ${test_data[25]}

resolverClassName不存在
    [Template]
    新增事件块2    ${test_data[26]}

series为空
    [Template]
    新增事件块2    ${test_data[27]}

series不存在
    [Template]
    新增事件块2    ${test_data[28]}
