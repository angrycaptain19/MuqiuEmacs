# MuQiuEmacs 4.0
> 一份比较基础实用的Emacs配置
> 最近更新: 2021-1-21
> 版本: V4.0

## 更新信息
+ Magit
+ 平滑滚动
+ 邮件收发

## 基本功能: 
1. 有道词典快捷翻译英文文档，阅读方便
2. 高亮括号匹配
3. 更改company提示，对hy提供支持
4. hylang支持
5. 高亮显示缩进线，括号
6. Clojure Java的LSP-Mode
7. 邮件收发
8. git项目管理

## 安装

```Shell
cd ~
git clone https://gitee.com/muqiu-han/emacs.d .emacs.d
```

## gnus
> 邮件客户端
+ <font color='red'>需要先到init.el 123行配置你的邮件相关信息</font>
+ __M-x gnus__ 打开
+ __C-x m__ 快速发送邮件

## magit
> git管理
+ __C-c g__ 打开magit-mode
+ __C-c s__ 在magit-mode内打开status

## Treemacs
> 侧栏文件树
+ __C-x C-t__ 打开/关闭treemacs

## org-mode
> 没啥可说的
+ __C-c C-h__ 生成当前文件的html文件
+ __C-c C-m__ 生成当前文件的markdown文件

## window-numbering
> 快速窗口跳转
+ __M-(1~9)__ 跳转到窗口序号对应的窗口

## lsp-mode
> 智能现代化补全
__支持语言:__
+ java
+ clojure

## dash-board
> 启动页
+ 默认显示居中
+ 提供 logo（黑） logo-light（白）两个颜色logo

## web-mode
+ emmet集成到web-mode, 在编辑html时输入emmet公式__C-j__ 生成

## company-mode
> 补全系统
+ 全局启用
+ 延迟为0, 可以通过company-idle-delay更改

## highlight-parentheses
> 括号高亮匹配
+ 默认全局启用

## highlight-indent-guides-mode
> 缩进线显示
+ 支持主流语言， 添加对Hy支持
+ highlight-indent-guides-method控制显示，默认为竖线

## youdao-dictionary
> 有道翻译, 依赖popup

+ 快捷键: 选中某个单词或者句子 __C-q__

## hylang
> [github链接](https://github.com/hylang/hy) [文档链接](https://docs.hylang.org/en/stable/)
+ 选中某个hy表达式, __C-c C-f__ 默认竖分屏打开hy REPL解释选中的表达式
+ __C-c C-b__ 将当前文件中的所有hy表达式解释
