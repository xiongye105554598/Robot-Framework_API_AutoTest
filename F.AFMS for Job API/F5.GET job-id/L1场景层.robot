*** Settings ***
Suite Setup       获取测试数据F5
Resource          L2接口层.robot

*** Test Cases ***
获取工作
    [Tags]    BVT
    ${info}    获取工作    ${test_data[0]}
    Should Not Be Empty    ${info.json()['data']}

id错误
    ${info}    获取工作    ${test_data[1]}
    Should Be Empty    ${info.json()['data']}

获取已删除job_id
    获取工作    ${test_data[2]}

获取其它账号下的job_id
    获取工作    ${test_data[3]}
