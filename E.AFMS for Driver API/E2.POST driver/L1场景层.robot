*** Settings ***
Suite Setup       获取测试数据E2
Resource          L2接口层.robot

*** Test Cases ***
新增司机
    [Tags]    BVT
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[0]}    ${digitalId}
    删除司机id    ${digitalId}

firstName为空
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[1]}    ${digitalId}

firstName为1个字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[2]}    ${digitalId}
    删除司机id    ${digitalId}

firstName为25个字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[3]}    ${digitalId}
    删除司机id    ${digitalId}

firstName为26个字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[4]}    ${digitalId}

firstName含数字字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[5]}    ${digitalId}

firstName含中文字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[6]}    ${digitalId}

firstName含特殊字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[7]}    ${digitalId}

lastName为空
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[8]}    ${digitalId}

lastName为1个字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[9]}    ${digitalId}
    删除司机id    ${digitalId}

lastName为25个字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[10]}    ${digitalId}
    删除司机id    ${digitalId}

lastName为26个字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[11]}    ${digitalId}

lastName含数字字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[12]}    ${digitalId}

lastName含中文字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[13]}    ${digitalId}

lastName含特殊字符
    ${digitalId}    Randomstr    4    50
    新增司机1    ${test_data[14]}    ${digitalId}

digitalId重复
    ${dict}    json.loads    ${test_data[15]['data']}
    新增司机1    ${test_data[15]}    ${dict["digitalId"]}

digitalId为空
    新增司机1    ${test_data[16]}    ${air}

digitalId为3个字符
    ${digitalId}    Randomstr    3    3
    ${dict}    json.loads    ${test_data[17]['data']}
    新增司机1    ${test_data[17]}    ${digitalId}

digitalId为4个字符
    ${digitalId}    Randomstr    4    4
    ${dict}    json.loads    ${test_data[18]['data']}
    新增司机1    ${test_data[18]}    ${digitalId}
    删除司机id    ${digitalId}

digitalId为50个字符
    ${digitalId}    Randomstr    50    50
    新增司机1    ${test_data[19]}    ${digitalId}
    删除司机id    ${digitalId}

digitalId为51个字符
    ${digitalId}    Randomstr    51    51
    新增司机1    ${test_data[20]}    ${digitalId}

digitalId含数字字符
    ${digitalId}    Randomint
    新增司机1    ${test_data[21]}    ${digitalId}

digitalId含中文字符
    ${digitalId}    Randomch
    新增司机1    ${test_data[22]}    ${digitalId}

digitalId含特殊字符
    ${digitalId}    Randomsp
    新增司机1    ${test_data[23]}    ${digitalId}

licenseId重复
    ${dict}    json.loads    ${test_data[24]['data']}
    ${digitalId}    Randomstr    4    50
    新增司机2    ${test_data[24]}    ${dict['licenseId']}    ${digitalId}

licenseId为空
    ${digitalId}    Randomstr    4    50
    新增司机2    ${test_data[25]}    ${air}    ${digitalId}

licenseId为3个字符
    ${licenseId}    Randomstr    3    3
    ${digitalId}    Randomstr    4    50
    新增司机2    ${test_data[26]}    ${licenseId}    ${digitalId}

licenseId为4个字符
    ${licenseId}    Randomstr    4    4
    ${digitalId}    Randomstr    4    50
    新增司机2    ${test_data[27]}    ${licenseId}    ${digitalId}
    删除司机id    ${digitalId}

licenseId为50个字符
    ${licenseId}    Randomstr    50    50
    ${digitalId}    Randomstr    4    50
    新增司机2    ${test_data[28]}    ${licenseId}    ${digitalId}
    删除司机id    ${digitalId}

licenseId为51个字符
    ${licenseId}    Randomstr    51    51
    ${digitalId}    Randomstr    4    50
    新增司机2    ${test_data[29]}    ${licenseId}    ${digitalId}
