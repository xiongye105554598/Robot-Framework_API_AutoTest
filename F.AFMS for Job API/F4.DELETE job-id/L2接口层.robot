*** Settings ***
Resource          ../../L3Public.robot
Resource          ../F2.POST job/L2接口层.robot

*** Variables ***

*** Keywords ***
返回新增Job_id
    ${test_data}    Get Xlsx    F2
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    ${dict}    json.loads    ${test_data[0]['data']}
    ${data1}    update_value2    ${dict}    car    id    ${car_id}
    ${data2}    update_value2    ${data1}    driver    id    ${driver_id}
    ${info}    Post_method    ${test_data[0]['path']}    ${data2}
    ${test_data1}    Get Xlsx    F1
    ${params}    json.loads    ${test_data1[0]['params']}
    ${info}    Get_method    ${test_data1[0]['path']}    ${params}
    ${job_id}    Get Value1    ${info.json()['data']['list']}    ${car_id}    ${driver_id}
    [Return]    ${job_id}    ${car_id}    ${driver_id}

删除工作
    [Arguments]    ${path}    ${code}
    ${info}    Delete_method    ${path}    ${air}
    Assert    ${info.json()['code']}    ${code}
    [Return]    ${info}

获取测试数据F4
    ${test_data}    Get Xlsx    F4
    Set Suite Variable    ${test_data}
