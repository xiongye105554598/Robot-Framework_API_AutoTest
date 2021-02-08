*** Settings ***
Suite Setup       获取测试数据C2
Resource          L2接口层.robot

*** Test Cases ***
向组发送消息
    [Tags]    BVT
    ${info}    向组发送消息    ${test_data[0]['path']}    ${test_data[0]['data']}
    Assert    ${info.status_code}    ${test_data[0]['code']}

向组发送消息sound_url
    ${info}    向组发送消息    ${test_data[1]['path']}    ${test_data[1]['data']}
    Assert    ${info.status_code}    ${test_data[1]['code']}

type为空
    ${info}    向组发送消息    ${test_data[2]['path']}    ${test_data[2]['data']}
    Assert    ${info.json()['code']}    ${test_data[2]['code']}

type错误
    ${info}    向组发送消息    ${test_data[3]['path']}    ${test_data[3]['data']}
    Assert    ${info.json()['code']}    ${test_data[3]['code']}

payload为空
    ${info}    向组发送消息    ${test_data[4]['path']}    ${test_data[4]['data']}
    Assert    ${info.json()['code']}    ${test_data[4]['code']}

payload含特殊字符
    ${data}    json.dumps    ${test_data[6]['data']}    ensure_ascii=False
    ${info}    向组发送消息    ${test_data[5]['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data[5]['code']}

payload含中文字符
    ${data}    json.dumps    ${test_data[6]['data']}    ensure_ascii=False
    ${info}    向组发送消息    ${test_data[6]['path']}    ${data}
    Assert    ${info.json()['code']}    ${test_data[6]['code']}

deviceid错误
    ${info}    向组发送消息    ${test_data[7]['path']}    ${test_data[7]['data']}
    Assert    ${info.json()['code']}    ${test_data[7]['code']}
