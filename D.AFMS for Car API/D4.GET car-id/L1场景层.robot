*** Settings ***
Suite Setup       获取测试数据D4
Resource          L2接口层.robot

*** Test Cases ***
获取汽车
    [Tags]    BVT
    获取汽车    ${test_data[0]}

id错误
    获取汽车    ${test_data[1]}

获取已删除car_id
    获取汽车    ${test_data[2]}

获取其它账号下的car_id
    获取汽车    ${test_data[3]}
