*** Settings ***
Suite Setup       获取测试数据G5
Resource          L2接口层.robot

*** Test Cases ***
获取地理围栏
    [Tags]    BVT
    获取地理围栏    ${test_data[0]}

id错误
    获取地理围栏    ${test_data[1]}

获取已删除geofence_id
    获取地理围栏    ${test_data[2]}

获取其它账号下的geofence_id
    获取地理围栏    ${test_data[3]}
