*** Settings ***
Suite Setup       获取测试数据E5
Resource          L2接口层.robot

*** Test Cases ***
获取司机
    [Tags]    BVT
    ${info}    获取司机    ${test_data[0]}
    Should Not Be Empty    ${info.json()['data']}

id错误
    ${info}    获取司机    ${test_data[1]}
    Should Be Empty    ${info.json()['data']}

获取已删除driver_id
    获取司机    ${test_data[2]}

获取其它账号下的driver_id
    获取司机    ${test_data[3]}
