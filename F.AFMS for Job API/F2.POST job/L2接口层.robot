*** Settings ***
Resource          ../../L3Public.robot
Resource          ../../D.AFMS for Car API/D3.DELETE car-id/L2接口层.robot
Resource          ../../E.AFMS for Driver API/E4.DELETE driver-id/L2接口层.robot

*** Variables ***

*** Keywords ***
删除Job_id
    [Arguments]    ${car_id}    ${driver_id}
    ${test_data}    Get Xlsx    F1
    ${params}    json.loads    ${test_data[0]['params']}
    ${info}    Get_method    ${test_data[0]['path']}    ${params}
    ${job_id}    Get Value1    ${info.json()['data']['list']}    ${car_id}    ${driver_id}
    Delete_method    /job/${job_id}    ${air}
    删除Car_Driver_id    ${car_id}    ${driver_id}

删除Car_Driver_id
    [Arguments]    ${car_id}    ${driver_id}
    Delete_method    /car/${car_id}    ${air}
    Delete_method    /driver/${driver_id}    ${air}

新增工作
    [Arguments]    ${test_data}    ${car_id}    ${driver_id}
    ${dict}    json.loads    ${test_data['data']}
    ${data1}    update_value2    ${dict}    car    id    ${car_id}
    ${data}    update_value2    ${data1}    driver    id    ${driver_id}
    ${info}    Post_method    ${test_data['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data['code']}
    [Return]    ${info}

获取测试数据F2
    ${test_data}    Get Xlsx    F2
    Set Suite Variable    ${test_data}
