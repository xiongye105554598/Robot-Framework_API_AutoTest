*** Settings ***
Suite Setup       获取测试数据G3
Resource          L2接口层.robot

*** Test Cases ***
更新地理围栏
    [Tags]    BVT
    ${name}    Randomstr    4    50
    更新地理围栏    ${test_data[0]}    ${name}

name已存在
    ${name}    json.loads    ${test_data[1]['data']}
    更新地理围栏    ${test_data[1]}    ${name['name']}

name为空
    更新地理围栏    ${test_data[2]}    ${air}

name含空格
    ${name}    json.loads    ${test_data[3]['data']}
    更新地理围栏    ${test_data[3]}    ${name['name']}

name含数字字符
    ${name}    Randomint
    更新地理围栏    ${test_data[4]}    ${name}

name含中文字符
    ${name}    Randomch
    更新地理围栏    ${test_data[5]}    ${name}

name含特殊字符
    ${name}    Randomsp
    更新地理围栏    ${test_data[6]}    ${name}

name为1个字符
    ${name}    Randomstr    1    1
    更新地理围栏    ${test_data[7]}    ${name}

name为2个字符
    ${name}    Randomstr    2    2
    更新地理围栏    ${test_data[8]}    ${name}

name为50个字符
    ${name}    Randomstr    50    50
    更新地理围栏    ${test_data[9]}    ${name}

name为51个字符
    ${name}    Randomstr    51    51
    更新地理围栏    ${test_data[10]}    ${name}

description为空
    ${name}    Randomstr    4    50
    更新地理围栏    ${test_data[11]}    ${name}

description为1个字符
    ${name}    Randomstr    4    50
    更新地理围栏    ${test_data[12]}    ${name}

description为2个字符
    ${name}    Randomstr    4    50
    更新地理围栏    ${test_data[13]}    ${name}

description为100个字符
    ${name}    Randomstr    4    50
    更新地理围栏    ${test_data[14]}    ${name}

description为101个字符
    ${name}    Randomstr    4    50
    更新地理围栏    ${test_data[15]}    ${name}
