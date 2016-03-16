
ByValue
========================================
Pass by value summary demo for iOS/OSX.
【 界面传值总结概括demo 】
--------------------------------------


### /***** 1 - 属性传值 *****/
//属性传值,比较简单，就不写了
//例：svc.属性 = 需要传进去的值


### /***** 2 - 方法传值 *****/
//也不写了
//= [[SecondViewController alloc]initWithValue:_txtFiled.text];（init传进去就行了）


### /***** 3 - 代理 *****/
[self method_delegate];
### /***** 4 - 通知 *****/
[self method_notification];
### /***** 5 - block *****/
[self method_block];


### /***** 6 - 单例 *****/
[self method_singleton];
### /***** 7 - 文件/NSUserdefault *****/
[self method_NSUserdefault];


<br />
<br />
使用说明：项目内容都是用代码注释掉了，只要对照着对应的功能，去掉对应功能的注释，运行后就可以看到结果了