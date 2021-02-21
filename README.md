# MuqiuEmacs
> Version : 2021.2.21
> Author : MuqiuHan
> Email : muqiu-han@outlook.com
> QQGroup: 780653172

## Introduction
> MuqiuEmacs是个模块化的，精简的Emacs配置

+ 启动页 : dashboard/default/none
+ 文件树 : treemacs/neotree/speedbar/dired
+ 主题界面 : doom-themes
+ 状态栏 : doom-modeline/powerline/default
+ 邮件首发 : gnus
+ 语言支持 : C/C++/Java/Python/CommonLisp/Hylang/Markdown
  + 即将支持: Clojure/Web(HTML/CSS/JavaScript)

---

## 语言支持

### Hylang
> 需要pip install jedhy后使用
+ 打开Hy-shell: ```M-RET```
+ 执行当前buffer: ```C-c b```
+ 执行选中的语句: ```C-r c```


### CommonLisp
#### slime
> 在使用之前需要在操作系统中安装slime

+ 加载当前文件: ```C-c l```
+ 编译当前文件: ```C-c c```

### Python
> 在使用Python之前，要需pip install jedi elpy rope pylint

#### 补全
+ 补全后端使用anaconda
+ 自动扩展: ```C-c k```
> 例如: 输入for, 摁下快捷键后自动补全for形式

+ 重构工具: ```C-c o``` 
> 例如: 选中字符串后，摁下快捷键选中当前文件中所有这个字符串

+ 语法检查flycheck

### Java
#### 补全
+ lsp-java
+ lsp-javacomp

注意: 在使用之前需要执行: (lsp-javacomp-install-server)

### C/C++
#### 补全
+ company
+ company-c-headers

#### gtags
##### 依赖
> 在使用gtags之前，系统需要有这些软件包
+ global
+ ggtags

> 在使用gtags之前，需要在你的工程目录下面执行gtags命令，生成三个文件: GPATH GRTAGS GTAGS

##### 使用方法
1. 从调用一个函数的地方跳转到函数的定义的地方
   ```M-x ggtags-find-definition```
   对应的快捷键： ```M-```

2. 从调用一个函数的地方跳转到函数的定义的地方后，返回到调用函数的地方
	```M-x ggtags-prev-mark```
	对应的快捷键： ```M-,```

3. 或是反过来从函数定义的地方列出所有调用这个函数的地方
   ```M-x ggtags-find-reference```
   对应的快捷键： ```M-]```

4. 查看导航过的历史记录
   ```M-x ggtags-view-tag-history```
   对应的快捷键： ```C-c M-h```

5. 更多的帮助可以使用 ```man gtags``` 查看


#### GDB的配置
+ F5: make自动编译程序
+ F7: 进行GDB调试
+ F9: 设置断点
+ C-F9: 删除断线
+ C-F5: 执行程序
+ F10: 单步执行
+ F11: 单步执行(进入函数)
+ C-F10: 重复执行光标位置语句(util)
+ C-F11: 跳出当前函数
+ Shift-F10: jump到光标位置，下一次从光标位置执行
+ Shift-F5: 继续执行程序
+ F8 : 输出变量的值
+ C-F8: 打印指针对应值

### Web
+ emmet-mode
  + emmet生成html: ```C-j```
+ web-mode

## 其他插件
### youdao-dictionary
> 使用有道翻译选中的单词
+ 选中字符串后，翻译快捷键: ```C-q```

### window-numbering
> ```M-(1~9)``` 跳转到窗口序号对应的窗口

### highlight-parentheses
+ 括号高亮匹配
+ 默认全局启用

### highlight-indent-guides-mode
+ 缩进线显示
+ highlight-indent-guides-method控制显示，默认为竖线
