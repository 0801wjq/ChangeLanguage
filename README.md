# ChangeLanguage

实现项目内语言切换的例子

使用:
1.设置支持语言

2.创建InternationalControl

3.注册通知

4.在pch文件里增加宏定义:
文字
KLOCALIZED_String(_STR_) [[InternationalControl bundle] localizedStringForKey:_STR_ value:nil table:@"Localizable"]
图片
KLOCALIZED_UIImageName(_NAME_) [UIImage imageNamed:[[InternationalControl bundle] localizedStringForKey:_NAME_ value:nil table:@"Localizable"]]
...

使用:
_inviteLabel.text = KLOCALIZED_String(@"pic.png");
self.imgView.image = KLOCALIZED_UIImageName(@"pic.png");