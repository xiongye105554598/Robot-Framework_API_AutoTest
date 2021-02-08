*** Settings ***
Suite Setup       获取测试数据D1
Resource          L2接口层.robot

*** Test Cases ***
新增汽车
    [Tags]    BVT
    ${licensePlateNumber}    Randomstr    4    20
    新增汽车1    ${test_data[0]}    ${licensePlateNumber}
    删除Car_id    ${licensePlateNumber}

licensePlateNumber重复
    ${data}    json.loads    ${test_data[1]['data']}
    新增汽车1    ${test_data[1]}    ${data["licensePlateNumber"]}

licensePlateNumber为空
    新增汽车1    ${test_data[2]}    ${air}

licensePlateNumber为3个字符
    ${licensePlateNumber}    Randomstr    3    3
    新增汽车1    ${test_data[3]}    ${licensePlateNumber}

licensePlateNumber为4个字符
    ${licensePlateNumber}    Randomstr    4    4
    新增汽车1    ${test_data[4]}    ${licensePlateNumber}
    删除Car_id    ${licensePlateNumber}

licensePlateNumber为20个字符
    ${licensePlateNumber}    Randomstr    20    20
    新增汽车1    ${test_data[5]}    ${licensePlateNumber}
    删除Car_id    ${licensePlateNumber}

licensePlateNumber为21个字符
    ${licensePlateNumber}    Randomstr    21    21
    新增汽车1    ${test_data[6]}    ${licensePlateNumber}

licensePlateNumber含数字字符
    ${licensePlateNumber}    Randomint
    新增汽车1    ${test_data[7]}    ${licensePlateNumber}
    删除Car_id    ${licensePlateNumber}

licensePlateNumber含特殊字符
    ${licensePlateNumber}    Randomsp
    新增汽车1    ${test_data[8]}    ${licensePlateNumber}
    删除Car_id    ${licensePlateNumber}

model为空
    ${licensePlateNumber}    Randomstr    4    20
    新增汽车1    ${test_data[9]}    ${licensePlateNumber}

model为3个字符
    ${licensePlateNumber}    Randomstr    4    20
    新增汽车1    ${test_data[10]}    ${licensePlateNumber}

model为4个字符
    ${licensePlateNumber}    Randomstr    4    20
    新增汽车1    ${test_data[11]}    ${licensePlateNumber}
    删除Car_id    ${licensePlateNumber}

model为25个字符
    ${licensePlateNumber}    Randomstr    4    20
    新增汽车1    ${test_data[12]}    ${licensePlateNumber}
    删除Car_id    ${licensePlateNumber}

model为26个字符
    ${licensePlateNumber}    Randomstr    4    20
    新增汽车1    ${test_data[13]}    ${licensePlateNumber}

id重复
    新增汽车2    ${test_data[14]}

id为空
    新增汽车2    ${test_data[15]}

id错误
    新增汽车2    ${test_data[16]}
