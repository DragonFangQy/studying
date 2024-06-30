## Pandas 介绍

### Pandas 概念

- 开源的数据挖掘库
- 用于数据探索
- 封装了 matplotlib, numpy

### 案例知识点

- 创建DataFrame
  - pd.DataFrame( ndarray )
- 创建日期
  - pd.date_range()
    - start  --  开始日期
    - end  --  结束日期
    - periods  -- 时间跨度
    - freq  --  指定时间序列的频率

### DataFrame 介绍  --  类比二维数组

- dataframe 属性
  - 对象.shape
  - 对象.index
  - 对象.columns
  - 对象.T
  - 对象.head()
  - 对象.tail()
- dataframe 设置索引
  - 修改行列索引
    - 必须 整行 或者 整列 修改
  - 必须 整行 或者 整列 修改
  - 重设索引
    - 对象.reset_index
  - 对象.reset_index
  - 设置新索引
    - 对象.set_index
    - 如果设置索引是两个的时候就是 multiIndex
  - 对象.set_index
  - 如果设置索引是两个的时候就是 multiIndex

### MultiIndex 和 panel  --  类比三维数组

- MultiIndex
  - 对象.index
  - 对象.index.names
- panel  -- 已经弃用, 了解

### Series  --   一维数组

- 创建
  - 通过 ndarray 创建
  - 指定索引创建
  - 通过字典创建
- 属性
  - 对象.index
  - 对象.value

## 基本数据操作

### 索引操作

- 直接  --  先列后行
- loc  --  先行后列, 索引值
- iloc  --  先行后列, 索引值的下标

### 赋值操作

- 对象["<列名>"]
- 对象.<列名>

### 排序

- dataframe
  - 对象.sort_value
    - by  --  按照什么排序
    - ascending  --  True:升序, False:降序
  - 对象.sort_index
  - 注意: by 这个参数可以接受多个值, 优先按照第一个索引, 如果相同, 按照后面的
- series
  - 对象.sort_values()
  - 对象.sort_index()

### DataFrame 运算

- 算术运算
  - 直接使用 add sub
  - 也就可以使用符号 + - * /
- 逻辑运算
  - 逻辑运算符号  `< > ` |  &
    - 直接判断
  - 逻辑运算函数
    - 对象.query
    - 对象.isin
- 统计函数
  - 对象.describe
  - 统计函数
    - sum
    - mean
    - mode  --  众数
    - idxmax  --  最大值的索引
    - idxmin  -- 最小值的索引
- 累计统计函数

| 函数    | 作用                     |
| ------- | ------------------------ |
| cumsum  | 按行或者按列进行累加运算 |
| cummax  | 按行或者按列计算最大值   |
| cummin  | 按行或者按列计算最小值   |
| cumprod | 按行或者按列计算乘积     |

- 自定义运算
  - apply

### Pandas 画图

- 对象.plot
  - kind
    - line
    - bar
    - barh
    - hist
    - pie
    - scatter

### 文件的读取与存储

- csv
  - 读取  --  pd.read_csv
  - 保存  -- 对象.to_csv
- hdf
  - 读取  -- pd.read_hdf
  - 保存  -- 对象.to_hdf
- json
  - 读取  --  pd.read_json
  - 保存  --  对象.to_json
- 推荐使用  hdf
  - 压缩方式, 读取效率快
  - 压缩后, 节省空间
  - 支持跨平台
