# WYBlendColor
会变色的label

# 效果图
<img src="https://raw.githubusercontent.com/wangyansnow/WYBlendColor/master/ScreenShot/BlendColor.gif"/>

# 使用方法
把项目中`WYColorLabel`拖入到项目中
```
WYColorLabel *label = [[WYColorLabel alloc] initWithFrame:CGRectMake(100,100,50,20)];
label.blendColor = [UIColor orangeColor];
label.colorRatio = 0.3;
[self.view addSubview:label];
```
