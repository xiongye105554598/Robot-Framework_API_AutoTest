*** Settings ***
Suite Setup       获取测试数据B9
Resource          L2接口层.robot

*** Test Cases ***
获取设备历史事件
    [Tags]    BVT
    ${info}    获取设备历史事件    ${test_data[0]['path']}    ${test_data[0]['params']}
    Assert    ${info.status_code}    ${test_data[0]['code']}

deviceid为空
    ${info}    获取设备历史事件    ${test_data[1]['path']}    ${test_data[1]['params']}
    Assert    ${info.status_code}    ${test_data[1]['code']}
    Should Not Be Empty    ${info.json()['result']}

deviceid错误
    ${info}    获取设备历史事件    ${test_data[2]['path']}    ${test_data[2]['params']}
    Assert    ${info.status_code}    ${test_data[2]['code']}
    Should Be Empty    ${info.json()['result']}

since为空
    ${info}    获取设备历史事件    ${test_data[3]['path']}    ${test_data[3]['params']}
    Assert    ${info.json()['error']['code']}    ${test_data[3]['code']}

since错误
    ${info}    获取设备历史事件    ${test_data[4]['path']}    ${test_data[4]['params']}
    Assert    ${info.json()['error']['code']}    ${test_data[4]['code']}

until为空
    ${info}    获取设备历史事件    ${test_data[5]['path']}    ${test_data[5]['params']}
    Assert    ${info.json()['error']['code']}    ${test_data[5]['code']}

until错误
    ${info}    获取设备历史事件    ${test_data[6]['path']}    ${test_data[6]['params']}
    Assert    ${info.json()['error']['code']}    ${test_data[6]['code']}

since大于until
    ${info}    获取设备历史事件    ${test_data[7]['path']}    ${test_data[7]['params']}
    Assert    ${info.json()['error']['code']}    ${test_data[7]['code']}

series为空
    ${info}    获取设备历史事件    ${test_data[8]['path']}    ${test_data[8]['params']}
    Assert    ${info.status_code}    ${test_data[8]['code']}

series不存在
    ${info}    获取设备历史事件    ${test_data[9]['path']}    ${test_data[9]['params']}
    Assert    ${info.json()['error']['code']}    ${test_data[9]['code']}
