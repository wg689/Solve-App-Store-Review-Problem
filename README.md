###### Solve-App-Store-Review-Problem
a collection   to solve app store review problem (appstore 审核遇到问题和解决方案的汇总)

[**app审核指南中英文对照版**](http://appstore.icewindtech.com)

本文链接:

#appstore 审核遇到有问题欢迎给我提issue 或者咨询我qq:596201463,我汇总到这,并给出解决方案

# 敬请右上角Star,你的star是我持续更新的动力,谢谢


|1| 问题描述       | 
| -------------| ------------- |
|ipv6<br>被<br>拒|**被拒的描述1**:<br>From Apple<br> 2. 1 PERFORMANCE: APP COMPLETENESS<br> 2. 3 PERFORMANCE: ACCURATE METADATA<br> Performance - 2.1 <br> We were unable to review your app as it crashed on launch. We have attached detailed crash logs to help troubleshoot this issue.<br> Next Steps<br> Please revise your app and test it on a device while connected to an IPv6 network (all apps must support IPv6) to ensure it will launch without crashing.<br> Resources<br> For additional information about supporting IPv6 Networks, please refer to Supporting IPv6 DNS64/NAT64 Networks and Supporting IPv6-only Networks.<br> For a networking overview, please see About Networking.<br> For information on how to symbolicate and read a crash log, please see Tech Note TN2151 Understanding and Analyzing iPhone OS Application Crash Reports.<br> If you have difficulty reproducing this issue, please try testing the workflow described in Testing Workflow with Xcode's Archive feature.<br> If you have code-level questions after utilizing the above resources, you may wish to consult with Apple Developer Technical Support. When the DTS engineer follows up with you, please be ready to provide:<br> - complete details of your rejection issue(s)<br> - screenshots<br> - steps to reproduce the issue(s)<br> - symbolicated crash logs - if your issue results in a crash log  <br> <br>**被拒描述2**:<br> We discovered one or more bugs in your app when reviewed on iPhone running iOS 9.3.4 on Wi-Fi connected to an IPv6 network.<br>At launch, the app crashes or display message as “请检查网络连接”.<br>We've attached screenshot(s) for your reference.<br>Next Steps<br>Please run your app on a device while connected to an IPv6 network (all apps must support IPv6) to identify the issue(s), then revise and resubmit your app for review.   |
|解决方案| 解决方案支持ipv6 <br>1)搭建ipv6 环境,搭建好的ipv6 ,环境会有一个共享wifi, 具体如何搭建ipv6测试环境参考[本地如何搭建IPv6环境测试你的APP](http://www.jianshu.com/p/632d995749e1)<br>2)app连上搭建好的共享wifi测试你的app,会发现某些 模块无法连接网络, 更换相应的模块即可,一般需要更换两种模块有两种:<br>  2.1)第三方SDk <br>  2.2)比较老的网络请求函数,比如使用ASI或者AFN的版本太低,使用最新的AFN即可解决问题<br>需要更换那些SDK 可以参考我的博客 [适配IPV6需要替换的第三方SDK](http://www.jianshu.com/p/afc0b19fd5d3)  <br>3)如果你的友盟,shareSDk是6.1号之前集成的,一定要去更换这些SDK,6.5号左右友盟出了最新的SDk适配ipv6 |






|2| 问题描述:  后台定位被拒     |
|------------- | ------------- |
|被<br>拒<br>描<br>述|苹果被拒邮件内容：<br>your app declares support for location in the UIBackgroundModes key in your Info.plist <br>file but still does not declare any features that require persistent location. Apps that declare support for <br>location in the UIBackgroundModes key in your Info.plist file must have features that require persistent location.<br>Next Steps<br>Please revise your app to include features that require the persistent use of real-time <br>location updates while the app is in the background. Please also add the following battery use disclaimer in <br>your Application Description:<br>"Continued use of GPS running in the background can dramatically decrease <br>battery life."<br>If your app does not require persistent real-time location updates, please remove the <br>"location" setting <br>from the UIBackgroundModes key. You may wish to use the significant-change location <br>service or the region <br>monitoring location service if persistent real-time location updates are not required for your app features.   |
|解<br>决<br>方<br>案| 1)如果你的应用根本不需要使用后台定位,根本不需要定位功能,但是还是在.info.plist 里面添加了 location in the<br> UIBackgroundModes key ,那么在past 里面移除 UIBackgroundModes key 就可以,这中情况较少<br>2)如果你的应用使用了后台定位模式,而且你的应用只需要短暂的获取少数的用户的位置,比如美团,新闻类的应用需要<br>获得当前用户的所在城市,,这种情况没必要使用后台定位,这种情况使用后台定位被拒绝,只需要去掉.plist 的文件中的UIBackgroundModes|



|3| 问题描述:  广告勾选错误被拒,一妹纸提交审核的时候,苹果问是否有广告,结果这妹纸想以后可能有广告,勾选了,结果被拒了     |
|------------- | ------------- |
|被<br>拒描述|苹果被拒邮件内容：<br>We found that your app uses the Advertising Identifier but does not include ad functionality. This does not comply with the terms of the Apple Developer Program License Agreement, as required by the App Store Review Guidelines.<br>Specifically, section 3.3.12 of the Apple Developer Program License Agreement states:<br>”You and Your Applications (and any third party with whom you have contracted to serve advertising) may use the Advertising Identifier, and any information obtained through the use of the Advertising Identifier, only for the purpose of serving advertising. If a user resets the Advertising Identifier, then You agree not to combine, correlate, link or otherwise associate, <br>either directly or indirectly, the prior Advertising Identifier and any derived information with the reset Advertising Identifier."<br>If your app is serving ads, please:<br>- Ensure that you have tested your app on a device, not just the simulator, and that you have removed all previous versions of your app prior to testing<br>- Provide us the steps to locate ads in your app<br>If your app does not serve ads, please check your code - including any third-party libraries - to <br>remove any instances of:<br>class: ASIdentifierManager<br>selector: advertisingIdentifier<br>framework: AdSupport.framework<br>If you are planning to incorporate ads in a future version, please remove the Advertising Identifier from your app until you have included ad functionality.<br>To help locate the Advertising Identifier, use the "nm" tool. For information on the "nm" tool, please see the nm man page.<br>If you do not have access to the libraries' source, you may be able to search the compiled binary using the "strings" or "otool" command line tools. The "strings" tool lists the methods that the library calls, and "otool -ov" will list the Objective-C class structures and their defined methods. These <br>techniques can help you narrow down where the problematic code resides.  |
|解决方案| app没有做广告,是否有广告的勾,就不要打勾了,重新上传就可解决 |


# 敬请Star,你的star是我持续更新的动力,谢谢

