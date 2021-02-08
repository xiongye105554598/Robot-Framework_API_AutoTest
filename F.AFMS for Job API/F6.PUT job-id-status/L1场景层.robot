*** Settings ***
Suite Setup       获取测试数据F6
Resource          L2接口层.robot

*** Test Cases ***
更新工作状态
    [Tags]    BVT
    ${job_id}    返回新增Job_id
    更新工作状态    /job/${job_id}[0]/status    ${test_data[0]['data']}    ${test_data[0]['code']}
    更新工作状态    /job/${job_id}[0]/status    ${test_data[1]['data']}    ${test_data[1]['code']}
    更新工作状态    /job/${job_id}[0]/status    ${test_data[2]['data']}    ${test_data[2]['code']}

更新工作状态为cancel
    ${job_id}    返回新增Job_id
    更新工作状态    /job/${job_id}[0]/status    ${test_data[3]['data']}    ${test_data[3]['code']}

status为空
    更新工作状态    ${test_data[4]['path']}    ${test_data[4]['data']}    ${test_data[4]['code']}

status错误
    更新工作状态    ${test_data[5]['path']}    ${test_data[5]['data']}    ${test_data[5]['code']}

id错误
    更新工作状态    ${test_data[6]['path']}    ${test_data[6]['data']}    ${test_data[6]['code']}
