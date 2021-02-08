# _*_ coding:utf-8 _*_
import random, string, xlrd, os, websocket
from faker import Faker

def update_value1(dict, key, str):
    "修改data中1个值"
    dict[key] = str
    return dict

def update_value2(dict, key1, key2, str):
    "修改data中2个值"
    dict[key1][key2] = str
    return dict

def randomint():
    "生成随机整数"
    return str(random.randint(0, 1000000))

def randomstr(min, max):
    "生成随机字符串"
    return ''.join(random.sample(string.ascii_letters, random.randint(int(min), int(max))))

def randomch():
    "生成随机中文"
    f = Faker(locale='zh_CN')
    return f.name()

def randomsp():
    "生成随机特殊字符"
    return ''.join(random.sample(string.punctuation, random.randint(5, 10)))

def get_headers(sheet, key):
    "获取headers信息"
    excel = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'AFMS_Testdata.xlsx')  # 获取用例文件路径
    file = xlrd.open_workbook(excel)
    sheet = file.sheet_by_name(sheet)  # 获得指定sheet数据
    col_value1 = sheet.col_values(0)  # 获取第1列值
    col_value2 = sheet.col_values(1)
    nrows = sheet.nrows  # 获取当前sheet行数
    dict = {}
    for i in range(0, nrows):  #
        dict[col_value1[i]] = col_value2[i]
    return dict[key]

def get_xlsx(sheet):
    "获取指定Excel数据"
    excel = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'AFMS_Testdata.xlsx')  # 获取用例文件路径
    file = xlrd.open_workbook(excel)
    list = []
    sheet = file.sheet_by_name(sheet)  # 获得指定sheet数据
    row_value1 = sheet.row_values(0)  # 获取第1行的标题
    nrows = sheet.nrows  # 获取当前sheet行数
    ncols = sheet.ncols  # 获取当前sheet列数
    for i in range(1, nrows):  # 从第2行遍历当前sheet
        row = sheet.row_values(i)  # 获取行数据
        dict = {}  # 创建空字典
        for j in range(0, ncols):  # 遍历sheet列，组成字典
            if row_value1[j] == 'NO.' or row_value1[j] == 'code':
                dict[row_value1[j]] = int(row[j])
            else:
                dict[row_value1[j]] = row[j]  # 从第一列开始，将每一列的数据与第1行的数据组成一个键值对，形成字典
        list.append(dict)  # 将字典添加list中
    return list

def get_value(all_list, key1, value1, key2):
    """
    获取属性值
    all_list:列表
    key1:已知key
    value1:已知value值
    key2:返回key的value值

    """
    for i in all_list:
        if i[key1] == value1:
            return i[key2]

def get_value1(all_list, car_id, driver_id):
    """
    获取job_id

    """
    for i in all_list:
        if i["car"]["id"] == car_id and i["driver"]["id"] == driver_id:
            return i["info"]["id"]

def websocket_test(ws_url, ws_data):
    ws = websocket.create_connection(ws_url)
    ws.send(ws_data)
    recv = ws.recv()
    ws.close()
    return eval(recv)

def len_num(str):
    return len(str)
