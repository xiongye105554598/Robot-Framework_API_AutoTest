*** Settings ***
Suite Setup       获取测试数据F3
Resource          L2接口层.robot

*** Test Cases ***
更新工作name
    [Tags]    BVT
    更新工作    ${test_data[0]}

status不传参
    更新工作    ${test_data[1]}

status为空
    更新工作    ${test_data[2]}

status不存在
    更新工作    ${test_data[3]}

name不传参
    更新工作    ${test_data[4]}

name为空
    更新工作    ${test_data[5]}

name为1个字符
    更新工作    ${test_data[6]}

name为50个字符
    更新工作    ${test_data[7]}

name为51个字符
    更新工作    ${test_data[8]}

description不传参
    更新工作    ${test_data[9]}

description为空
    更新工作    ${test_data[10]}

description为1个字符
    更新工作    ${test_data[11]}

description为300个字符
    更新工作    ${test_data[12]}

description为301个字符
    更新工作    ${test_data[13]}

start_time不传参
    更新工作    ${test_data[14]}

start_time为非整数
    更新工作    ${test_data[15]}

end_time不传参
    更新工作    ${test_data[16]}

end_time为非整数
    更新工作    ${test_data[17]}

start_time等于end_time
    更新工作    ${test_data[18]}

start_time大于end_time
    更新工作    ${test_data[19]}

start_location不传参
    更新工作    ${test_data[20]}

start_location为空
    更新工作    ${test_data[21]}

start_location为1个字符
    更新工作    ${test_data[22]}

start_location为50个字符
    更新工作    ${test_data[23]}

start_location为51个字符
    更新工作    ${test_data[24]}

destination不传参
    更新工作    ${test_data[25]}

destination为空
    更新工作    ${test_data[26]}

destination为1个字符
    更新工作    ${test_data[27]}

destination为50个字符
    更新工作    ${test_data[28]}

destination为51个字符
    更新工作    ${test_data[29]}

Speed Limit不传参
    更新工作    ${test_data[30]}

Speed Limit为空
    更新工作    ${test_data[31]}

Speed Limit为0
    更新工作    ${test_data[32]}

Speed Limit为1
    更新工作    ${test_data[33]}

Speed Limit为55
    更新工作    ${test_data[34]}

Speed Limit为56
    更新工作    ${test_data[35]}

Speed Limit为非数字
    更新工作    ${test_data[36]}

breaking_time不传参
    更新工作    ${test_data[37]}

breaking_time为空
    更新工作    ${test_data[38]}

breaking_time为59999
    更新工作    ${test_data[39]}

breaking_time为60000
    更新工作    ${test_data[40]}

breaking_time为3600000
    更新工作    ${test_data[41]}

breaking_time为3600001
    更新工作    ${test_data[42]}

breaking_time为非数字
    更新工作    ${test_data[43]}

driving_time不传参
    更新工作    ${test_data[44]}

driving_time为空
    更新工作    ${test_data[45]}

driving_time为3599999
    更新工作    ${test_data[46]}

driving_time为3600000
    更新工作    ${test_data[47]}

driving_time为86400000
    更新工作    ${test_data[48]}

driving_time为86400001
    更新工作    ${test_data[49]}

driving_time为非数字
    更新工作    ${test_data[50]}

geofence不传参
    更新工作    ${test_data[51]}

geofence为空
    更新工作    ${test_data[52]}

geofence已使用
    更新工作    ${test_data[53]}

geofence不存在
    更新工作    ${test_data[54]}

driver为空
    更新工作    ${test_data[55]}

driver已使用
    更新工作    ${test_data[56]}

driver不存在
    更新工作    ${test_data[57]}

car为空
    更新工作    ${test_data[58]}

car已使用
    更新工作    ${test_data[59]}

car不存在
    更新工作    ${test_data[60]}

id错误
    更新工作    ${test_data[61]}

job状态错误
    更新工作    ${test_data[62]}
