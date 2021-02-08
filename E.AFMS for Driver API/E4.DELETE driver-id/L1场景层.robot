*** Settings ***
Suite Setup       获取测试数据E4
Resource          L2接口层.robot

*** Test Cases ***
删除司机
    [Tags]    BVT
    ${id}    返回新增司机id
    删除司机    /driver/${id}    ${test_data[0]['code']}

id已删除
    删除司机    ${test_data[1]['path']}    ${test_data[1]['code']}

id错误
    删除司机    ${test_data[2]['path']}    ${test_data[2]['code']}

id已使用
    删除司机    ${test_data[3]['path']}    ${test_data[3]['code']}
