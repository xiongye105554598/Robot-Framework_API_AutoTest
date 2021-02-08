*** Settings ***
Suite Setup       获取测试数据G2
Resource          L2接口层.robot

*** Test Cases ***
新增多边形地理围栏
    [Tags]    BVT
    ${name}    Randomstr    4    50
    新增地理围栏    ${test_data[0]}    ${name}
    删除Geofence_id    ${name}

新增圆形地理围栏
    ${name}    Randomstr    4    50
    新增地理围栏    ${test_data[1]}    ${name}
    删除Geofence_id    ${name}

name已存在
    ${dict}    json.loads    ${test_data[2]['data']}
    新增地理围栏    ${test_data[2]}    ${dict["name"]}

name为空
    ${dict}    json.loads    ${test_data[3]['data']}
    新增地理围栏    ${test_data[3]}    ${dict["name"]}

name含空格
    ${name}    Randomstr    4    10
    新增地理围栏    ${test_data[4]}    ${name} t e s t
    删除Geofence_id    ${name} t e s t

name含数字字符
    ${name}    Randomint
    新增地理围栏    ${test_data[5]}    ${name}
    删除Geofence_id    ${name}

name含中文字符
    ${name}    Randomch
    新增地理围栏    ${test_data[6]}    ${name}
    删除Geofence_id    ${name}

name含特殊字符
    ${name}    Randomsp
    新增地理围栏    ${test_data[7]}    ${name}
    删除Geofence_id    ${name}

name为1个字符
    ${name}    Randomstr    1    1
    新增地理围栏    ${test_data[8]}    ${name}
    删除Geofence_id    ${name}

name为2个字符
    ${name}    Randomstr    2    2
    新增地理围栏    ${test_data[9]}    ${name}
    删除Geofence_id    ${name}

name为50个字符
    ${name}    Randomstr    50    50
    新增地理围栏    ${test_data[10]}    ${name}
    删除Geofence_id    ${name}

name为51个字符
    ${name}    Randomstr    51    51
    新增地理围栏    ${test_data[11]}    ${name}

description为空
    ${name}    Randomstr    4    50
    新增地理围栏    ${test_data[12]}    ${name}

description为1个字符
    ${name}    Randomstr    4    50
    新增地理围栏    ${test_data[13]}    ${name}
    删除Geofence_id    ${name}

description为2个字符
    ${name}    Randomstr    4    50
    新增地理围栏    ${test_data[14]}    ${name}
    删除Geofence_id    ${name}

description为100个字符
    ${name}    Randomstr    4    50
    新增地理围栏    ${test_data[15]}    ${name}
    删除Geofence_id    ${name}

description为101个字符
    ${name}    Randomstr    4    50
    新增地理围栏    ${test_data[16]}    ${name}
