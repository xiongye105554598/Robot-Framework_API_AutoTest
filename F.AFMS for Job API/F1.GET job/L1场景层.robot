*** Settings ***
Suite Setup       获取测试数据F1
Resource          L2接口层.robot

*** Test Cases ***
获取所有工作
    [Tags]    BVT
    获取所有工作    ${test_data[0]}

search含参数
    ${info}    获取所有工作    ${test_data[1]}
    Should Not Be Empty    ${info.json()['data']['list']}

search不存在
    ${info}    获取所有工作    ${test_data[2]}
    Should Be Empty    ${info.json()['data']['list']}

page含参数
    ${info}    获取所有工作    ${test_data[3]}

page为非整数
    ${info}    获取所有工作    ${test_data[4]}

size为9
    ${info}    获取所有工作    ${test_data[5]}
    Assert_len    ${info.json()["data"]['list']}    10

size为10
    ${info}    获取所有工作    ${test_data[6]}
    Assert_len    ${info.json()["data"]['list']}    10

size为25
    ${info}    获取所有工作    ${test_data[7]}
    Assert_len    ${info.json()["data"]['list']}    25

size为50
    ${info}    获取所有工作    ${test_data[8]}
    Assert_len    ${info.json()["data"]['list']}    50

size为51
    ${info}    获取所有工作    ${test_data[9]}
    Assert_len    ${info.json()["data"]['list']}    50

size为非整数
    ${info}    获取所有工作    ${test_data[10]}

jobStatusArray含参数
    ${info}    获取所有工作    ${test_data[11]}
    Should Not Be Empty    ${info.json()['data']['list']}

search不传参
    ${info}    获取所有工作    ${test_data[12]}

page不传参
    ${info}    获取所有工作    ${test_data[13]}

size不传参
    ${info}    获取所有工作    ${test_data[14]}

jobStatusArray不传参
    ${info}    获取所有工作    ${test_data[15]}
