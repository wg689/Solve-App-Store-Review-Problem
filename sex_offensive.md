
____

# 📣问题:有objectionable(反感的讨厌的) and offensive(不愉快的)被拒绝

**苹果邮件描述**<br>
Your app includes content that many users would find objectionable(反感的讨厌订单) and offensive(冒犯).
Specifically, your app facilitate paids(付费) companionship(陪同 伙伴) which is not appropriate for the App Store.
We've attached screenshot(s) for your reference.
Please remove all objectionable content from your app and submit your revised binary for review. 
苹果截图

 <img src="Picture/offensive/offensive_1.png" width="30%"> <img src="Picture/offensive/offensive_2.png" width="30%">


## 解决方案:
看到上文的汉字和红色箭头大致知道什么问题了
苹果认为付费陪玩不符合苹果审核指南

解决方案:上图中的45元/15分钟  调用后台接口,当在审核的时候隐藏

____



____

# 📣问题:如何隐藏部分功能
每次app 登陆掉一个接口 返回yes 或者no

<img src="Picture/offensive/howtoHide.png" width="80%">

**有的公司设个时间,超过了一定的时间比如7天后,某个界面的功能才正常显示,否则这个界面就隐藏部分内容,这样没有接口控制灵活不推荐**
这种隐藏普遍被使用,一经被苹果发现会被警告或者被封开发者账号,有公司隐藏被发现的
____

# 隐藏会不会发现
会被发现概率很低,博主知道的是小于3% 的概率会被发现,下面的案例是一个约单 app (将一个tabbar隐藏发现了)
<img src="Picture/hide_some_content.png" width="80%">
# 隐藏被暴露之后怎么办 (几点供参考)
- 按照苹果规则来
- 支付宝隐藏 换内购,按照苹果爸爸的意见来
- 约炮按钮隐藏了 ? 显示出来
- 企业账号发布,可以为所欲为,只是适合初期的创业公司
- 找产品经理老板改需求
- 更换账号继续隐藏上传


