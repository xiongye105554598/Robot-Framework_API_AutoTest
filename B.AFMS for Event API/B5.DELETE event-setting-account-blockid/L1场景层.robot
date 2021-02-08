*** Settings ***
Suite Setup       获取测试数据B5
Resource          L2接口层.robot

*** Test Cases ***
删除事件块
    [Tags]    BVT
    ${blockid_new}    返回新增blockid
    删除事件块    /event/setting/account/${blockid_new}    ${test_data[0]['code']}

blockid不存在
    删除事件块    ${test_data[1]['path']}    ${test_data[1]['code']}
