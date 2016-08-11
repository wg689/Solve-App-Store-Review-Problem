# Solve-App-Store-Review-Problem
a collection   to solve app store review problem (appstore 审核遇到问题和解决方案的汇总)

[**app审核指南中英文对照版**](http://appstore.icewindtech.com)

本文链接:

#appstore 审核遇到有问题欢迎给我提issue 或者咨询我qq:596201463,我汇总到这,并给出解决方案


|1| 问题描述       | 问题分类 |
| -------------| ------------- |:------:|
|被拒描述|From Apple<br> 2. 1 PERFORMANCE: APP COMPLETENESS<br> 2. 3 PERFORMANCE: ACCURATE METADATA<br> Performance - 2.1 <br> We were unable to review your app as it crashed on launch. We have attached detailed crash logs to help troubleshoot this issue.<br> Next Steps<br> Please revise your app and test it on a device while connected to an IPv6 network (all apps must support IPv6) to ensure it will launch without crashing.<br> Resources<br> For additional information about supporting IPv6 Networks, please refer to Supporting IPv6 DNS64/NAT64 Networks and Supporting IPv6-only Networks.<br> For a networking overview, please see About Networking.<br> For information on how to symbolicate and read a crash log, please see Tech Note TN2151 Understanding and Analyzing iPhone OS Application Crash Reports.<br> If you have difficulty reproducing this issue, please try testing the workflow described in Testing Workflow with Xcode's Archive feature.<br> If you have code-level questions after utilizing the above resources, you may wish to consult with Apple Developer Technical Support. When the DTS engineer follows up with you, please be ready to provide:<br> - complete details of your rejection issue(s)<br> - screenshots<br> - steps to reproduce the issue(s)<br> - symbolicated crash logs - if your issue results in a crash log       |ipv6被拒|
|解决方案|  解决方案支持ipv6 ,<br>1)搭建ipv6 环境,搭建好的ipv6<br>环境会有一个共享wifi,<br>2)app连上搭建好的<br>wifi测试app,会发现某些<br>模块无法连接网络,<br>更换相应的模块即可s<br>更多详情参考<br>6.1后苹果要求APP兼容IPv6<br><br>下面三篇文章 <br>[本地如何搭建IPv6环境测试你的APP](http://www.jianshu.com/p/632d995749e1)s<br>[适配IPV6需要替换的第三方SDK](http://www.jianshu.com/p/afc0b19fd5d3) ||






|2| 问题描述       | 问题分类           |
|------------- | ------------- |:------:|
|被拒描述|苹果被拒邮件内容：<br>your app declares support for location in the UIBackgroundModes key in your Info.plist file but still does not declare any features that require persistent location. Apps that declare support for location in the UIBackgroundModes key in your Info.plist file must have features that require persistent location.<br>Next Steps<br>Please revise your app to include features that require the persistent use of real-time location updates while the app is in the background. Please also add the following battery use disclaimer in your Application Description:<br>"Continued use of GPS running in the background can dramatically decrease battery life."<br>If your app does not require persistent real-time location updates, please remove the "location" setting from the UIBackgroundModes key. You may wish to use the significant-change location service or the region monitoring location service if persistent real-time location updates are not required for your app features.   |后台定位被拒|
|解决方案| 1)如果你的应用根本不需要使用后台定位,根本不需要定位功能,但是还是在.info.plist 里面添加了 location in the UIBackgroundModes key ,那么在past 里面移除 UIBackgroundModes key 就可以,这中情况较少<br>2)如果你的应用使用了后台定位模式,而且你的应用只需要短暂的获取少数的用户的位置,比如美团,新闻类的应用需要获得当前用户的所在城市,,这种情况没必要使用后台定位,这种情况使用后台定位被拒绝,只需要去掉.plist 的文件中的UIBackgroundModes||
