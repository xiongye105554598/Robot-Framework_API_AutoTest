*** Settings ***
Resource          ../L3Public.robot

*** Keywords ***
获取测试数据A1
    ${test_data}    Get Xlsx    A1
    Set Suite Variable    ${test_data}

获取测试数据A2
    ${test_data}    Get Xlsx    A2
    Set Suite Variable    ${test_data}

wss_path
    ${x-key-hash}    get_headers    info    x-key-hash_wss
    ${ws_url}    get_headers    info    ws_url
    ${ws_path}    Set variable    ${ws_url}?Authorization=Bearer%20${login_info.json()['access_token']}&x-key-hash=${x-key-hash}
    Set Global Variable    ${ws_path}

wss
    [Arguments]    ${ws_data}
    ${info}    Websocket Test    ${ws_path}    ${ws_data}
    log    ${info}
    [Return]    ${info}
