# MuqiuEmacs 2021.2.x

## 简介

> MuqiuEmacs是一个模块化，支持多语言的Emacs配置，适用于Linux/Unix/Mac平台
>
> 作者: 韩暮秋
>
> 版本: 2021.2.23.10
>
> 反馈邮箱: muqiu-han@outlook.com
>
> QQ群: 780653172

### 对语言的支持情况

#### Lisp:

+ CommonLisp
+ Clojure
+ Racket/Scheme
+ Hylang
+ newLisp

#### 其他

+ C/C++
+ Java
+ Python

#### Web

+ HTML/CSS
+ JavaScript
+ Typescript

#### 笔记

+ markdown

+++

### 下载

#### git

```
git clone https://gitee.com/muqiu-han/MuqiuEmacs ~/.emacs.d --depth=1 
```



#### package

1. 链接: [https://pan.baidu.com/s/1V3y9DOsTIqi6y19lUr2sWA](https://pan.baidu.com/s/1V3y9DOsTIqi6y19lUr2sWA) 提取码: y3b9

### 一些有用的插件

+ 有道翻译
+ vterm内嵌终端

---



## 更新信息

1. 添加内嵌终端自定义
2. 添加窗口调整快捷键，透明度调节
3. 修复有道翻译快捷键无反应问题

---



## 一些全局快捷键

### 窗口

+ M-<left>: 水平缩小窗口
+ M-<right>: 水平扩大窗口
+ M-<up>: 平衡所有窗口
+ M-<down>: 垂直扩大窗口
+ F10: 调节窗口透明度



### 插件

+ 有道翻译: C-c q
+ 打开内置终端: C-c v
+ gnus: C-c m
+ 文件管理: C-c t

---



## 帮助

### Lisp

#### CommonLisp

> 在使用CommonLisp之前，请确保您的系统安装了slime以及sbcl

+ 加载当前文件: C-c l
+ 编译当前文件: C-c c
+ 打开slime: C-c s



#### Clojure

> 在使用Clojure之前，请确保您安装了leiningen, 以及clojure-lsp (通过lsp-install-server)

+ expand-region: C-c C-v
+ cider-inspect-last-result: C-c <tab>
+ cider-eval-last-sexp: s-<return>
+ cider-eval-defun-at-point: C-<return>
+ cljr-add-keybindings-with-prefix: C-,



#### Racket/Scheme

> 在使用racket之前，请确保您安装了racket

+ 打开racket-repl: C-c j



#### Hylang

> 在使用hy之前，请确保您安装了hy, jedhy(pip)

+ hy-shell-eval-buffer: C-c b
+ hy-shell-eval-current-form: C-c c
+ hy-shell-eval-last-sexp: C-c l
+ hy-shell-eval-region: C-c r



#### newLisp

+ 开箱及用



#### C/C++

> 在使用C/C++之前，请确保您安装了[ccls](https://github.com/MaskRay/ccls), ggtags, global

##### 补全

+ lsp

##### 代码跳转

+ ggtags

关于如何使用ggtags, 可以看这里[https://github.com/leoliu/ggtags](https://github.com/leoliu/ggtags)

##### gdb

+ F5 - 运行，Shift + F5 - 继续

+ F7/F8 代码级单步， 以及 Shift-F7/F8 指令级单步

+ F9 - 设置断点，Shift-F9 删除断点  取决于当前的源码窗口箭头在哪一行

+ F10 - 跳出循环，Shift-F10 跳出函数

+ F4 - 移动到上一个调用栈帧，Shift-F4移动到下一个



#### Java

> 在使用java之前，请确保系统有jdk. 并且有jdtls用于补全
>
> 第一次打开java文件会下载meghanada，需要一小会儿, 如果出现问题，可以自行到[https://github.com/mopemope/meghanada-emacs](https://github.com/mopemope/meghanada-emacs)下载， 也可以使用我在gitee上面给出的镜像下载: 

+ C-c f: 编译当前文件
+ C-c m: 运行main方法

#### Python

> 在使用Python前，请确保您已经安装了Python和以下程序:
>
> + pylin
> + elpy
> + [jedi](https://link.jianshu.com?t=https://github.com/davidhalter/jedi) 
> + [rope](https://link.jianshu.com?t=https://github.com/python-rope/rope)
>
> 他们都可以使用pip安装

+ 代码模板: C-c k
+ 选中所有相同字符串: C-c o



#### Web

##### HTML/CSS

+ emmet公式生成: C-j



##### Typescript

> 如果需要使用typescript, 那么有如下条件
>
> + 需要Emacs25或更高版本。我们建议Emacs27或更高版本支持原生json。
> + 安装node.jsv0.12.0或更高版本。
> + 确保tsconfig.json或jsconfig.json存在于项目的根文件夹中。

+ 在当前目录下生成配置文件: C-c l



#### 笔记

##### markdown

+ 预览markdown: C-c p
  + 导出为HTML: C-c e



