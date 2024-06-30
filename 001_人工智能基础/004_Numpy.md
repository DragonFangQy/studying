## Numpy 优势

- 定义
  - 开源的 Python 科学计算库
  - 用于快速处理任意维度的数组
  - Numpy 中, 存储对象是ndarray
- 创建
  - np.array([])
- Numpy 的优势
  - 内存块风格  -- 一体式存储
  - 支持并行化运算
  - 效率高高于纯 Python 代码  -- 底层使用了 C, 内部释放了 GIL

## N 维数组 - ndarray

- ndarray 的属性

  - ndarray.shape    	数组维度的元组
  - ndarray.ndim		数组维数
  - ndarray.size		数组中元素的数量
  - ndarray.itemsize	数组中元素的长度(字节)
  - ndarray.dtype		数组中元素的类型
- ndarray 的形状

  - np.array()
- ndarray 的类型

  - bool
  - int
  - float
  - .....
  - 注意: 若不指定, 整数默认 int64, 小数默认 float64

## 基本操作

- 生成数组的方法

  - 生成 0 或者 1 数组
    - np.ones((2,3,4))  np.zeros((2,3,4))  ones_like  zeros_like
      - np.ones((2,3,4))
      - np.ones((2,))
      - np.ones(2)
- 从现有数据组中生成

  - np.asarray  -- 浅拷贝
  - np.array  -- 深拷贝
- 生成固定范围的数组

  - np.linspace(start = 0, stop = 100, num = 5)

    - [start, stop]   闭区间
    - num 生成个数(包含端点)
  - np.arange(start=3,stop=7,step=0.5,dtype=float)

    - [start, stop)   左闭右开
    - step  步长；可忽略不写，默认步长为1

    * dtype  默认为None，设置显示元素的数据类型
  - np.logspace(start=0, stop=10, num=11)

    - [start, stop]   闭区间
    - num 生成以10 为底的 N 次幂的数据
- 生成随机数组

  - 均匀分布生成
    - np.random.uniform(low=0, high=10, size=100)
    - np.random.uniform(low=0, high=10, size=(2,5))
      - [low, high)   左闭右开
      - size  生成数量
  - 正态分布
    - 均值, 方差
    - 均值  --  图形的左右位置
    - 方差  --  图形是胖, 还是瘦
      - 方差越小, 数据越集中, 图形越瘦高
      - 方差越大, 数据越分散, 图形越矮胖
  - 正态分布 Api
    - np.random.nomal(loc=0, scale=10, size=100)
    - np.random.nomal(loc=0, scale=10, size=(2,5))
      - loc  Mean (“centre”) of the distribution.
      - scale  Standard deviation (spread or “width”) of the distribution. Must be non-negative.

## 数组的索引和切片

- 数组的索引和切片

  - 直接索引
  - 先对行进行索引, 再对列进行索引
  - 高维数组索引, 从宏观到微观
- 形状修改

  - 对象.reshape
    - 不进行行列互换
    - 产生新变量
  - 对象.resize
    - 进行行列互换
    - 对原值进行更改
  - 对象.T
    - 进行行列互换
- 类型修改

  - 对象.astype()
- 数组去重

  - np.unique()
- ndarray 运算

  - 逻辑运算
    - 大于, 小于直接进行判断
    - 赋值: 满足要求, 直接进行赋值
  - 通用判断函数
    - np.all  -- 所有满足要求, 才返回 True
    - np.any  -- 只要有一个满足要求, 就返回True
  - 三元运算符
    - np.where
      - 满足要求, 赋第一个值, 否则赋第二个值
    - np.logical_and  -- and
    - np.logical_or  -- or
  - 统计运算
    - np.min
    - np.max
    - np.median
    - np.mean
    - np.std
    - np.var
    - np.argmax
    - np.argmin

## 矩阵

- 矩阵和项链

  - 矩阵  --  二维数组
  - 向量  --  一维数组
- 加法和标量乘法

  - 加法  --  对应位置相加 (必须具有相同的行数和列数)
  - 标量乘法--  标量和每个位置元素相乘
- 矩阵乘法

  - [M行, N列] * [N行, L列]  = [M行, L列]
- 矩阵乘法的性质

  - 满足结合律, 不满足交换律
- 单位矩阵

  - 对角线为1 的矩阵, 其他位置为0 的矩阵
- 矩阵的逆

  - 矩阵A * 矩阵B = 单位矩阵I
  - 那么矩阵 A和B 就互为逆矩阵
- 转置

  - 行列互换

## 数组间运算

- 数组和数字是可以直接进行运算的
- 数组和数组
  - 需要满足广播机制
    - 维度相同
    - shape 对应位置为1
- 矩阵乘法 API
  - np.dot  --  点乘
  - np.matmul  -- 矩阵相乘
  - 注意: 两者之间在矩阵相乘时, 没有区别. 但是, dot 支持矩阵和数字相乘
