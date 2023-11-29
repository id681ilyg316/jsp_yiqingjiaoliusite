## 本项目实现的最终作用是基于JSP疫情防控宣传交流平台
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 地区信息管理
 - 定点医院管理
 - 实时通知管理
 - 检测机构管理
 - 用户管理
 - 疫情数据管理
 - 疫情相关管理
 - 疫苗信息管理
 - 病人轨迹管理
 - 管理员登录
 - 系统管理
### 第2个角色为用户角色，实现了如下功能：
 - 提交留言
 - 查看疫苗详情
 - 查看资讯
 - 用户注册
 - 用户登录
## 数据库设计如下：
# 数据库设计文档

**数据库名：** yiqingjiaoliusite

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [allusers](#allusers) |  |
| [bingrenguiji](#bingrenguiji) |  |
| [diquxinxi](#diquxinxi) |  |
| [dx](#dx) |  |
| [jiancejigou](#jiancejigou) |  |
| [liuyanban](#liuyanban) |  |
| [pinglun](#pinglun) |  |
| [quanguoyiqing](#quanguoyiqing) |  |
| [quanqiuyiqing](#quanqiuyiqing) |  |
| [shoucangjilu](#shoucangjilu) |  |
| [tongzhixinxi](#tongzhixinxi) |  |
| [xinwentongzhi](#xinwentongzhi) |  |
| [yimiao](#yimiao) |  |
| [yimiaojiezhong](#yimiaojiezhong) |  |
| [yiyuan](#yiyuan) |  |
| [yonghuzhuce](#yonghuzhuce) |  |
| [youqinglianjie](#youqinglianjie) |  |
| [yuangongxinxi](#yuangongxinxi) |  |

**表名：** <a id="allusers">allusers</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | cx |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="bingrenguiji">bingrenguiji</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | huanzhexinxi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | diqu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | fengxian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | guiji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | riqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 日期  |
|  7   | shuoming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | tianjiaren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 添加人  |
|  9   | issh |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="diquxinxi">diquxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | diqu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | shuoming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="dx">dx</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  3   | content |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |

**表名：** <a id="jiancejigou">jiancejigou</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | jigoumingchen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | diqu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | lianxifangshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | jianceshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | shuoming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="liuyanban">liuyanban</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | cheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  4   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  5   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  6   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  7   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  9   | huifuneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="pinglun">pinglun</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xinwenID |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | pinglunneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | pinglunren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | pingfen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | biao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="quanguoyiqing">quanguoyiqing</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | diqu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xinguanhuanzheshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | zengchanghuanzheshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | zhiyuhuanzheshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | gelirenshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | shuoming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="quanqiuyiqing">quanqiuyiqing</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | guojia |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xinguanhuanzheshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | xinzengchanghuanzheshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | zhiyuhuanzheshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | gelirenshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | shuoming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="shoucangjilu">shoucangjilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | xwid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | ziduan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | biao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="tongzhixinxi">tongzhixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | diqu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | faburen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="xinwentongzhi">xinwentongzhi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  4   | neirong |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | tianjiaren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 添加人  |
|  6   | shouyetupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 首页图片  |
|  7   | dianjilv |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yimiao">yimiao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yimiaobianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | yimiaomingchen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | gongsimingchen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | fuzuoyong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | tupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | jiezhongdian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | jieshao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 介绍  |
|  9   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yimiaojiezhong">yimiaojiezhong</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | guojia |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | leijijiezhong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | xinzengjiezhong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | jiezhonglu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | shuoming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yiyuan">yiyuan</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yiyuanmingchen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | diqu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | lianxidianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 联系电话  |
|  5   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | jiezhongshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | shuoming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yonghuzhuce">yonghuzhuce</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  6   | diqu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | chushengnianyue |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  9   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  10   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  11   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  14   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  15   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="youqinglianjie">youqinglianjie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | wangzhanmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | wangzhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | logo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yuangongxinxi">yuangongxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yuangonggonghao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | yuangongxingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | nianling |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | shouji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | jianjie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
