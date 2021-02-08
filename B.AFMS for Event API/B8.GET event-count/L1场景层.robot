*** Settings ***
Suite Setup       获取测试数据B8
Resource          L2接口层.robot

*** Test Cases ***
获取事件数量
    [Tags]    BVT
    获取事件数量    ${test_data[0]}

deviceid不存在
    获取事件数量    ${test_data[1]}

deviceid参数
    获取事件数量    ${test_data[2]}

eventDisplayName不存在
    获取事件数量    ${test_data[3]}

eventDisplayName参数
    获取事件数量    ${test_data[4]}

since为空
    获取事件数量    ${test_data[5]}

since错误
    获取事件数量    ${test_data[6]}

until为空
    获取事件数量    ${test_data[7]}

until错误
    获取事件数量    ${test_data[8]}

since大于until
    获取事件数量    ${test_data[9]}
