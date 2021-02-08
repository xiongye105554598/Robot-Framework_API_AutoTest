*** Settings ***
Suite Setup       获取测试数据F2
Resource          L2接口层.robot

*** Test Cases ***
新增工作
    [Tags]    BVT
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[0]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

status不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[1]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

status为空
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[2]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

status不存在
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[3]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

name不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[4]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

name为空
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[5]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

name为1个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[6]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

name为50个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[7]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

name为51个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[8]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

description不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[9]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

description为空
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[10]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

description为1个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[11]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

description为300个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[12]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

description为301个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[13]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

start_time不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[14]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

start_time为非整数
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[15]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

end_time不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[16]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

end_time为非整数
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[17]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

start_time等于end_time
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[18]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

start_time大于end_time
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[19]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

start_location不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[20]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

start_location为空
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[21]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

start_location为1个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[22]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

start_location为50个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[23]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

start_location为51个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[24]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

destination不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[25]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

destination为空
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[26]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

destination为1个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[27]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

destination为50个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[28]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

destination为51个字符
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[29]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

Speed Limit不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[30]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

Speed Limit为空
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[31]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

Speed Limit为0
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[32]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

Speed Limit为1
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[33]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

Speed Limit为55
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[34]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

Speed Limit为56
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[35]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

Speed Limit为非数字
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[36]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

breaking_time不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[37]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

breaking_time为空
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[38]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

breaking_time为59999
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[39]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

breaking_time为60000
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[40]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

breaking_time为3600000
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[41]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

breaking_time为3600001
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[42]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

breaking_time为非数字
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[43]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

driving_time不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[44]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

driving_time为空
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[45]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

driving_time为3599999
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[46]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

driving_time为3600000
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[47]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

driving_time为86400000
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[48]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

driving_time为86400001
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[49]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

driving_time为非数字
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[50]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

geofence不传参
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[51]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

geofence为空
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[52]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

geofence已使用
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[53]}    ${car_id}    ${driver_id}
    删除Job_id    ${car_id}    ${driver_id}

geofence不存在
    ${car_id}    返回新增汽车id
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[54]}    ${car_id}    ${driver_id}
    删除Car_Driver_id    ${car_id}    ${driver_id}

driver为空
    ${dict}    json.loads    ${test_data[55]['data']}
    ${car_id}    返回新增汽车id
    新增工作    ${test_data[55]}    ${car_id}    ${dict['driver']['id']}
    Delete_method    /car/${car_id}    ${air}

driver已使用
    ${dict}    json.loads    ${test_data[56]['data']}
    ${car_id}    返回新增汽车id
    新增工作    ${test_data[56]}    ${car_id}    ${dict['driver']['id']}
    Delete_method    /car/${car_id}    ${air}

driver不存在
    ${dict}    json.loads    ${test_data[57]['data']}
    ${car_id}    返回新增汽车id
    新增工作    ${test_data[57]}    ${car_id}    ${dict['driver']['id']}
    Delete_method    /car/${car_id}    ${air}

car为空
    ${dict}    json.loads    ${test_data[58]['data']}
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[58]}    ${dict['car']['id']}    ${driver_id}
    Delete_method    /driver/${driver_id}    ${air}

car已使用
    ${dict}    json.loads    ${test_data[59]['data']}
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[59]}    ${dict['car']['id']}    ${driver_id}
    Delete_method    /driver/${driver_id}    ${air}

car不存在
    ${dict}    json.loads    ${test_data[60]['data']}
    ${driver_id}    返回新增司机id
    新增工作    ${test_data[60]}    ${dict['car']['id']}    ${driver_id}
    Delete_method    /driver/${driver_id}    ${air}
