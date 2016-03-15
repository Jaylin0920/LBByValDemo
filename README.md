
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


--------------------------------------
如何使用：里面的内容都是直接注释掉的，可以直接去掉对应传值方法的注释，观察在各种不同方法下，数据如何进行传递。