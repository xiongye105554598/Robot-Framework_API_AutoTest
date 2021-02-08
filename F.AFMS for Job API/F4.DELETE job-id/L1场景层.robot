*** Settings ***
Suite Setup       获取测试数据F4
Resource          L2接口层.robot

*** Test Cases ***
删除queue状态工作
    [Tags]    BVT
    ${id}    返回新增Job_id
    删除工作    /job/${id}[0]    ${test_data[0]['code']}
    Delete_method    /car/${id}[1]    ${air}
    Delete_method    /driver/${id}[2]    ${air}

删除start状态工作
    删除工作    ${test_data[1]['path']}    ${test_data[1]['code']}

删除inprogress状态工作
    删除工作    ${test_data[2]['path']}    ${test_data[2]['code']}

删除done状态工作
    删除工作    ${test_data[3]['path']}    ${test_data[3]['code']}

删除cancel状态工作
    删除工作    ${test_data[4]['path']}    ${test_data[4]['code']}

id已删除
    删除工作    ${test_data[5]['path']}    ${test_data[5]['code']}

id错误
    删除工作    ${test_data[6]['path']}    ${test_data[6]['code']}
