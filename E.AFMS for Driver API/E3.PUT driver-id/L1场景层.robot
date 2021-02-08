*** Settings ***
Suite Setup       获取测试数据E3
Resource          L2接口层.robot

*** Test Cases ***
更新司机
    [Tags]    BVT
    更新司机1    ${test_data[0]}

firstName为空
    更新司机1    ${test_data[1]}

firstName为1个字符
    更新司机1    ${test_data[2]}

firstName为25个字符
    更新司机1    ${test_data[3]}

firstName为26个字符
    更新司机1    ${test_data[4]}

firstName含数字字符
    更新司机1    ${test_data[5]}

firstName含中文字符
    更新司机1    ${test_data[6]}

firstName含特殊字符
    更新司机1    ${test_data[7]}

lastName为空
    更新司机1    ${test_data[8]}

lastName为1个字符
    更新司机1    ${test_data[9]}

lastName为25个字符
    更新司机1    ${test_data[10]}

lastName为26个字符
    更新司机1    ${test_data[11]}

lastName含数字字符
    更新司机1    ${test_data[12]}

lastName含中文字符
    更新司机1    ${test_data[13]}

lastName含特殊字符
    更新司机1    ${test_data[14]}

digitalId重复
    更新司机1    ${test_data[15]}

digitalId为空
    更新司机1    ${test_data[16]}

digitalId为3个字符
    ${digitalId}    Randomstr    3    3
    更新司机2    ${test_data[17]}    ${digitalId}

digitalId为4个字符
    ${digitalId}    Randomstr    4    4
    更新司机2    ${test_data[18]}    ${digitalId}

digitalId为50个字符
    ${digitalId}    Randomstr    50    50
    更新司机2    ${test_data[19]}    ${digitalId}

digitalId为51个字符
    ${digitalId}    Randomstr    51    51
    更新司机2    ${test_data[20]}    ${digitalId}

digitalId含数字字符
    ${digitalId}    Randomint
    更新司机2    ${test_data[21]}    ${digitalId}

digitalId含中文字符
    ${digitalId}    Randomch
    更新司机2    ${test_data[22]}    ${digitalId}

digitalId含特殊字符
    ${digitalId}    Randomsp
    更新司机2    ${test_data[23]}    ${digitalId}

id不存在
    更新司机1    ${test_data[24]}

firstName不传参
    更新司机1    ${test_data[25]}

lastName不传参
    更新司机1    ${test_data[26]}

digitalId不传参
    更新司机1    ${test_data[27]}
