*** Settings ***
Resource          ../../L3Public.robot
Resource          ../D1.POST car/L2接口层.robot

*** Variables ***

*** Keywords ***
返回新增汽车id
    ${test_data}    Get Xlsx    D1
    ${licensePlateNumber}    Randomstr    4    20
    ${id}    返回deviceid
    ${dict}    json.loads    ${test_data[0]['data']}
    ${data1}    update_value1    ${dict}    licensePlateNumber    ${licensePlateNumber}
    ${data}    update_value2    ${data1}    device    id    ${id}
    ${info}    Post_method    ${test_data[0]['path']}    ${data}
    ${test_data2}    Get Xlsx    D2
    ${params}    json.loads    ${test_data2[0]['params']}
    ${info}    Get_method    ${test_data2[0]['path']}    ${params}
    ${car_id}    Get Value    ${info.json()["data"]['list']}    licensePlateNumber    ${licensePlateNumber}    id
    [Return]    ${car_id}

删除汽车
    [Arguments]    ${path}    ${code}
    ${info}    Delete_method    ${path}    ${air}
    Assert    ${info.json()['code']}    ${code}
    [Return]    ${info}

获取测试数据D3
    ${test_data}    Get Xlsx    D3
    Set Suite Variable    ${test_data}
