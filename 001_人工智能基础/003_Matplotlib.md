## Matplotlib

### 定义

> 主要用于开发2D图表（3D），数据分析，基于分析进行展示

### 绘图流程

- 创建画布
- 绘制图像
- 显示图像

### matplotlib 三层结构

- 容器层
  - canvas
  - figure
  - axes
- 辅助显示层
  - 添加 x 轴、y 轴描述
  - 标题 等
- 图像层
  - 绘制什么图像的声明

### 折线图（plot）与基础绘图功能

- 图像保存
  - plot.savefig()
  - 注意：保存图像一定要放在 show 之前
- 添加 x 轴，y 轴刻度
  - plt.xticks()
  - plt.yticks()
  - 注意: 第一个参数必须是数字. 如果不是数字, 需要进行值替换
- 添加网格
  - plt.grid()
    - 参数
      - linestyle  -- 绘制网格的方式
      - alpha -- 透明度
- 添加描述信息
  - plt.xlabel("时间")
  - plt.ylabel("温度")
  - plt.title("一小时温度变化图", fontsize=20)
- 多次plot
  - 在一张图内显示多条折线
- 显示图例
  - plt.legend()
  - 注意: 需要在显示之前, 声明plot 里面的具体值
- 多个坐标系图像
  - fig, axes = plt.subplots()
    - nrows -- 几行
    - ncols -- 几列
    - 注意: 有些方法需要添加 set_*
- 折线图的应用场景
  - 表示数据变化
  - 绘制一些数学图像
-
