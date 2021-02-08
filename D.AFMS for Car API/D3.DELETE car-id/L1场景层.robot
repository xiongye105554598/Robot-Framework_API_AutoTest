*** Settings ***
Suite Setup       获取测试数据D3
Resource          L2接口层.robot

*** Test Cases ***
删除汽车
    [Tags]    BVT
    ${car_id}    返回新增汽车id
    ${info}    删除汽车    /car/${car_id}    ${test_data[0]['code']}

id已删除
    ${info}    删除汽车    ${test_data[1]['path']}    ${test_data[1]['code']}

id错误
    ${info}    删除汽车    ${test_data[2]['path']}131    ${test_data[2]['code']}

id已使用
    ${info}    删除汽车    ${test_data[3]['path']}    ${test_data[3]['code']}
