*** Settings ***
Suite Setup       获取测试数据C3
Resource          L2接口层.robot

*** Test Cases ***
获取消息历史列表
    [Tags]    BVT
    ${info}    获取消息历史列表    ${test_data[0]['path']}    ${test_data[0]['params']}
    Assert    ${info.status_code}    ${test_data[0]['code']}
    Should Not Be Empty    ${info.json()['messageList']}

startDate为空
    ${info}    获取消息历史列表    ${test_data[1]['path']}    ${test_data[1]['params']}
    Assert    ${info.json()['code']}    ${test_data[1]['code']}

startDate为非整数
    ${info}    获取消息历史列表    ${test_data[2]['path']}    ${test_data[2]['params']}
    Assert    ${info.json()['code']}    ${test_data[2]['code']}

endDate为空
    ${info}    获取消息历史列表    ${test_data[3]['path']}    ${test_data[3]['params']}
    Assert    ${info.json()['code']}    ${test_data[3]['code']}

endDate为非整数
    ${info}    获取消息历史列表    ${test_data[4]['path']}    ${test_data[4]['params']}
    Assert    ${info.json()['code']}    ${test_data[4]['code']}

endDate小于startDate
    ${info}    获取消息历史列表    ${test_data[5]['path']}    ${test_data[5]['params']}
    Assert    ${info.json()['code']}    ${test_data[5]['code']}

count为空
    ${info}    获取消息历史列表    ${test_data[6]['path']}    ${test_data[6]['params']}
    Assert    ${info.json()['code']}    ${test_data[6]['code']}

count为非整数
    ${info}    获取消息历史列表    ${test_data[7]['path']}    ${test_data[7]['params']}
    Assert    ${info.json()['code']}    ${test_data[7]['code']}

type为group
    ${info}    获取消息历史列表    ${test_data[8]['path']}    ${test_data[8]['params']}
    Assert    ${info.status_code}    ${test_data[8]['code']}

type为device
    ${info}    获取消息历史列表    ${test_data[9]['path']}    ${test_data[9]['params']}
    Assert    ${info.status_code}    ${test_data[9]['code']}
