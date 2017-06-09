## Theme
Pass by value summary demo for iOS/OSX.

<br />


## 界面传值几种方法
1.属性传值

```
svc.属性 = 需要传进去的值
```

2.方法传值

```
[[SecondViewController alloc]initWithValue:_txtFiled.text];（init传进去就行了）
```

3.Delegate

```
[self method_delegate];
```

4.Notification

```
[self method_notification];
```

5.block

```
[self method_block];
```

6.单例

```
[self method_singleton];
```

7.NSUserDefault

```
[self method_NSUserdefault];
```

<br />