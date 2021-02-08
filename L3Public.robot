*** Settings ***
Library           RequestsLibrary
Library           Public.py
Library           json

*** Variables ***
${air}            ${EMPTY}

*** Keywords ***
Headers
    ${x-client-id}    get_headers    info    x-client-id    #获取x-client-id
    ${login_header}    Create Dictionary    x-client-id=${x-client-id}    Content-Type=application/json    #登录信息头
    ${login_host}    get_headers    info    login_host    #获取登录host
    ${login_path}    get_headers    info    login_path    #获取登录path
    ${login_data}    get_headers    info    login_data    #获取登录账号、密码
    ${host}    get_headers    info    host    #获取主地址
    Set Global Variable    ${host}
    Create Session    api    ${login_host}    ${login_header}    verify=True    #用户登录
    ${login_info}    Post Request    api    ${login_path}    data=${login_data}
    Set Global Variable    ${login_info}
    ${x-key-hash}    get_headers    info    x-key-hash_http
    ${headers}    Create Dictionary    x-api-key=${login_info.json()['x_api_key']}    x-key-hash=${x-key-hash}    Authorization=Bearer ${login_info.json()['access_token']}    Content-Type=application/json;charset=utf-8    #头信息
    Set Global Variable    ${headers}

Get_method
    [Arguments]    ${path}    ${params}
    Create Session    api    ${host}    verify=True    #创建一个session，连接某个服务器
    ${info}    Get Request    api    ${path}    ${headers}    params=${params}    #发送GET请求
    log    ${info.json()}
    [Return]    ${info}    # 返回GET请求结果

Post_method
    [Arguments]    ${path}    ${data}    # 头信息，路径，传入数据
    Create Session    api    ${host}    ${headers}    verify=True    #创建一个session，连接某个服务器
    ${info}    Post Request    api    ${path}    data=${data}    #发送POST请求
    log    ${info.json()}
    [Return]    ${info}    # 返回POST请求结果

Put_method
    [Arguments]    ${path}    ${data}
    Create Session    api    ${host}    ${headers}    verify=True
    ${info}    Put Request    api    ${path}    data=${data}
    log    ${info.json()}
    [Return]    ${info}

Delete_method
    [Arguments]    ${path}    ${data}    # 头信息，路径，传入数据
    Create Session    api    ${host}    ${headers}    verify=True    #创建一个session，连接某个服务器
    ${info}    Delete Request    api    ${path}    data=${data}    #发送POST请求
    log    ${info.json()}
    [Return]    ${info}    # 返回POST请求结果

Assert
    [Arguments]    ${status_code}    ${expected_code}
    Should Be Equal As Strings    ${status_code}    ${expected_code}

Assert_len
    [Arguments]    ${list}    ${list_num}
    ${num}    Len Num    ${list}
    Assert    ${num}    ${list_num}
