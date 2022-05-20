## NvChad 的自定义配置文件
### 使用方法
1. cd ~/.config
2. git clone https://github.com/NvChad/NvChad nvim
3. git clone git@github.com:gaffeyQiu/nvchad-custom.git ~/.config/nvim/lua/custom
4. nvim +PackerSync

## 快捷键介绍
### 普通映射
|  键位   | 作用  |
|  ----  | ----  |
| J/K | 选中文本进行上下移动 |
| leader + sv | 垂直分屏 |
| leader + sh | 水平分屏 |
| leader + sc | 关闭分屏 |
| leader + so | 关闭其他分屏 |
| Ctrl + hijk | 光标在分屏移动 |
| Ctrl + = | 等分窗口大小 |
| Ctrl + 小键盘箭头 | 调整分屏大小 |
| Alt + h/l | buffer左右切换 |

### 搜索映射
|  键位   | 作用  |
|  ----  | ----  |
| leader + p  | 项目内根据文件名搜索 |
| leader + f | 项目内根据内容文字进行搜索 |
| Ctrl + v | 垂直打开 |
| Ctrl + x | 水平打开 |
| Ctrl + u | 预览页面向上滚屏 |
| Ctrl + d | 预览页面向下滚屏 |
| Ctrl + c | 关闭搜索页面 |

### 代码映射
|  键位   | 作用  |
|  ----  | ----  |
| gi  | 查看接口实现 |
| gr  | 查看函数引用 |
| gd  | 查看函数定义 |
| gD  | 查看函数声明 |
| gc | 查看查看调用链路 |
| gh | 悬浮查看文档 |
| Leader + k | 查看函数签名 |
| Leader + rn | 修改变量名 |
| Leader + tr | 打开问题诊断 |
| [ + d | 跳到下一个问题点 |
| ] + d | 跳到上一个问题点 |
| Leader + ca | code action |
| Leader + cs | 代码大纲 |
| Leader + tf | 悬浮打开终端 |
| Leader + tg | 悬浮打开 lazygit |
| Leader + fm | 格式化代码 |
| Ctrl + / | 注释代码 |

### Go 语言插件
|  键位   | 作用  |
|  ----  | ----  |
| sf  | 填充结构体字段 |
| se  | 生成 if err 代码片段 |
| st  | 填充结构体tag |
| sc  | 清除结构体tag |

### nvimtree 插件
|  键位   | 作用  |
|  ----  | ----  |
| Ctrl + n  | 打开 nvimtree |
| Leader + e  | 聚焦到 nvimtree |
| o | 打开文件 |
| tab | 预览形式打开 |
| Ctrl + v | 垂直打开 |
| Ctrl + x | 水平打开 |
| a | 创建文件 |
| d | 删除文件 |
| r / Ctrl + r | 重命名文件 |
| f | 搜索文件 |
| c | 复制文件 |
| x | 剪切文件 |
| y | 复制文件名 |
| Y | 复制相对路径 |
| gy | 复制绝对路径 |
| Ctrl + k | 查看文件信息 |
| R | 刷新 |
| s | 系统打开 |

