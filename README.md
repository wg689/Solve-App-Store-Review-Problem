 Solve-App-Store-Review-Problem
###a collection   to solve app store review problem (appstore 审核遇到问题和解决方案的汇总)
#上架前认真阅读此指南
[**app审核指南中英文对照版**](http://appstore.icewindtech.com)


###appstore 审核遇到有问题欢迎给我提issue 或者咨询appstore审核问答群:`369250107`(免验证加入)

# 敬请右上角Star,你的star是我持续更新的动力,谢谢
<br>
#目录:
##1) 后台定位被拒绝的终极解决方案(6种情况说明,让天下没有解决不了的后台定位问题)
##2) ipv6 被拒绝解决方案(QQ群至少有5位ipv6被拒绝了,都是用这个方案)
##3) 问题:没有填写耗电的描述被拒绝
##4) 广告标示选择错误被拒绝解决方案
##5) app崩溃(Crash)问题
##6) 提交审核无法选择文件

____

#📣问题:ipv6被拒绝

**苹果邮件描述**<br>**被拒的描述1**:<br>From Apple<br> 2. 1 PERFORMANCE: APP COMPLETENESS<br> 2. 3 PERFORMANCE: ACCURATE METADATA<br> Performance - 2.1 <br> We were unable to review your app as it crashed on launch. We have attached detailed crash logs to help troubleshoot this issue.<br> Next Steps<br> Please revise your app and test it on a device while connected to an IPv6 network (all apps must support IPv6) to ensure it will launch without crashing.<br> Resources<br> For additional information about supporting IPv6 Networks, please refer to Supporting IPv6 DNS64/NAT64 Networks and Supporting IPv6-only Networks.<br> For a networking overview, please see About Networking.<br> For information on how to symbolicate and read a crash log, please see Tech Note TN2151 Understanding and Analyzing iPhone OS Application Crash Reports.<br> If you have difficulty reproducing this issue, please try testing the workflow described in Testing Workflow with Xcode's Archive feature.<br> If you have code-level questions after utilizing the above resources, you may wish to consult with Apple Developer Technical Support. When the DTS engineer follows up with you, please be ready to provide:<br> - complete details of your rejection issue(s)<br> - screenshots<br> - steps to reproduce the issue(s)<br> - symbolicated crash logs - if your issue results in a crash log  <br> <br>**被拒描述2**:<br> We discovered one or more bugs in your app when reviewed on iPhone running iOS 9.3.4 on Wi-Fi connected to an IPv6 network.<br>At launch, the app crashes or display message as “请检查网络连接”.<br>We've attached screenshot(s) for your reference.<br>Next Steps<br>Please run your app on a device while connected to an IPv6 network (all apps must support IPv6) to identify the issue(s), then revise and resubmit your app for review. <br><br>**被拒描述3**<br> We discovered one or more bugs in your app when reviewed on iPad and iPhone running iOS 9.3.4 on Wi-Fi connected to an IPv6 network.  Specifically, <br>we were unable to load the video contents. The loading icon kept spinning. No mote further action was taken.  <br>We've attached screenshot(s) for your reference.
<br><br>**被拒的描述4** 发件人 Apple<br>2. 1 PERFORMANCE: APP COMPLETENESS<br>2. 3 PERFORMANCE: ACCURATE METADATA<br>2. 4 PERFORMANCE: HARDWARE COMPATIBILITY<br>4. DESIGN: PREAMBLE<br>Performance - 2.1<br>We discovered one or more bugs in your app when reviewed on iPhone running iOS 9.3.4 on Wi-Fi connected to an IPv6 network.
<br><br>**被拒的描述5**....只要苹果拒绝邮件含有ipv6就需要适配ipv6

##解决方案:

解决方案上面的描述不一样, 解决方案都一样,都需要支持ipv6(**只要苹果拒绝邮件含有ipv6就需要适配ipv6**) 
<br>1)搭建ipv6 环境,搭建好的ipv6 ,环境会有一个共享wifi, 具体如何搭建ipv6测试环境参考[本地如何搭建IPv6环境测试你的APP](http://www.jianshu.com/p/632d995749e1)<br>

**如果搭建ipv6 遇到问题,热点连不上,别人教程的选项我没有怎么办?**
多找找 如何搭建ipv6的帖子(我第一次搭建看了好几篇帖子,试了好几种方法),如果都不行[这里有很多如何搭建ipv6 的文章](http://www.jianshu.com/search?q=ipv6+%E6%90%AD%E5%BB%BA&page=1&type=notes)

2)app连上搭建好的共享wifi测试你的app,会发现某些 模块无法连接网络, 更换相应的模块即可,**让测试人员把所有的模块功能都点一下,最好在搭建好的ipv6下使用iOS9.3.0以上的系统测试,苹果审核使用iOS9.3.0以上的系统审核**,这样就会某些模块网络,其他异常或者崩溃一般需要更换两种模块有两种:<br>  2.1)第三方SDk <br>  2.2)比较老的网络请求函数,比如使用ASI或者AFN的版本太低,使用最新的AFN即可解决问题<br>需要更换那些SDK 可以参考我的博客 [适配IPV6需要替换的第三方SDK](http://www.jianshu.com/p/afc0b19fd5d3)  
<br>3)如果你的友盟,shareSDk是6.1号之前集成的,一定要去更换这些SDK,6.5号左右友盟出了最新的SDk适配ipv6<br>
 4)解决ipv6 这篇文章也非常值得参考[App store应用审核由于 IPv6 网络问题被拒的一点分析](http://www.jianshu.com/p/d18ada23f78d) 
 <br>**注意确认:ipv6 搭建连接是否正确 ?所有功能是否在ipv6下都测试了,app安装在iphon6 以上的机器测试,iphon5 可能连不上ipv6 wifi,搭建ipv6 可以使用mac连接网线和mac连无线,两种方法都可以试试,** 
[ipv6测试](http://test-ipv6.com) 这个连接可以进行ipv6 测试 大家可以试试

如果上面的解决方案还不行,努力尝试过,你觉得适配了ipv6 ,苹果那边说你没适配ipv6,参考这个帅哥的
![参考这个帅哥的1](https://github.com/wg689/Solve-App-Store-Review-Problem/blob/master/Picture/ipv6_1.png)
![参考这个帅哥的2](https://github.com/wg689/Solve-App-Store-Review-Problem/blob/master/Picture/ipv6_2.png)





____


____

#📣问题: 后台定位被拒

**苹果邮件描述**<br>苹果被拒邮件内容：<br>your app declares support for location in the UIBackgroundModes key in your Info.plist <br>file but still does not declare any features that require persistent location. Apps that declare support for <br>location in the UIBackgroundModes key in your Info.plist file must have features that require persistent location.<br>Next Steps<br>Please revise your app to include features that require the persistent use of real-time <br>location updates while the app is in the background. Please also add the following battery use disclaimer in <br>your Application Description:<br>"Continued use of GPS running in the background can dramatically decrease <br>battery life."<br>If your app does not require persistent real-time location updates, please remove the <br>"location" setting <br>from the UIBackgroundModes key. You may wish to use the significant-change location <br>service or the region <br>monitoring location service if persistent real-time location updates are not required for your app features.  

##解决方案:
 1)如果你的应用根本不需要使用后台定位,根本不需要定位功能,但是还是在.info.plist 里面添加了 location in the<br> UIBackgroundModes key ,那么在plist文件里面移除 UIBackgroundModes key 就可以,这中情况较少,新手小白会犯这种错误<br><br>2)如果你的应用使用了后台定位模式,而且你的应用只需要短暂的获取少数的用户的位置,比如美团,新闻类的应用需要<br>获得当前用户的所在城市,,这种情况没必要使用后台定位,这种情况使用后台定位被拒绝,只需要去掉.plist 的文件中的UIBackgroundModes <br><br>3)你的应用真的需要使用后台定位,比如考勤打卡类的应用,需要跟踪货车车司机的实时位<br>置,或者跑步软件之类的应用,那么你不能只是实时获取到用户的无数的定位点传到服务器,而APP没有任何界面展示这些定位数据,这种情况苹果会回复`如果没有使用必<br>要使用后台定位需要移除.plist的UIBackgroundModes key ,如果真的需要后台定位需要more feature(更多细节)`,这些更多细节怎么实现?大家观察<br>appstore 的可以使用后台定位的软件,基本上有一个共同的特点,他们后台定位的数据要么有一个绘制的轨迹,或者有一个界面展示出所有定位的点,具体详情可以参考<br>红圈营销(考勤类的app),他们后台定位的点用tableView 展示出来了,每一个cell就是一个定位的数据,这些数据包含定位的地点(比如北京市天安门2号楼),时间到<br>几分几秒.所以如果你想实现后台定位功能也需要通过表格或者轨迹展示出后台定位的数据,**再提交审核的时候告诉苹果那个功能需要后台定位**,具体展示后台定位的<br>数据在那个界面,最后需要`Continued use of GPS running in the background can dramatically decrease <br>battery life`加到app描述里<br>面,可以参考滴滴出行的描述,否则也会被拒绝<br><br> 3.1)最近有一哥们因为需要把订单准确的投放给用户，然后确定用户当前就是在订单投放的范围内才能收到一<br>条推送,需要使用后台定位,被拒绝了几次了,现在他想了一个方案，做一个导航，然后那个backgroundmode就能通过了。然后那个定位的问题也能用了,这也是一种可<br>以试试的方案,后续会持续跟踪他的解决方案 ,将是否有效告诉大家,最后验证是通过审核了,中间苹果发了邮件要这个哥们告诉在哪里使用了定位,这哥们回了就通过了,这也是一种实现思路**总之如果想使用第三种方式解决问题,一定让苹果感觉你有必要使用后台定<br>位,而不是偷偷地把定位点发给服务器,其他的啥界面啥功能都没有,增加轨迹(学跑步软件),增加列表显示定位数据(学红圈营销),增加导航也可以,有`界面`和功能让苹<br>果感觉你真的需要使用后台定位功能,提交的时候一定要告诉苹果那个功能使用了后台定位**<br><br>4)如果让用户可以使用后台定位,又不想展示定位数据,就用企业<br>证书发布,企业签名的ipa发布到蒲公英或者fir.im平台,让用户下载,这样就可以绕过苹果的审核,放肆的使用后台定位了,此方法只适合用户量在3W以下的app,超过3W的用户量<br>这么干会被封企业证书,更多企业证书相关的问题参考我的博客:[企业账号科普15问15答和交流](www.jianshu.com/p/33f037e41cfb),我负责维护的另外一个<br>付费的考勤类的app ,为了绕过苹果后台定位审核,另外一个项目比较忙,不想花更多时间在这个付费的考勤类的app上,就是用的企业账号发布的,从此愉快的开启后台定位 <br><br>5)还有一种方案和老板或者产品经理聊聊,app 是不是一定得要后台定位这个功能,这个功能用户不喜欢,后台持续定位涉及隐私和耗电,我看到至少有3例最后是老板妥协了,主动放弃后台定位的功能 <br><br>6)可以先传一个不带后台定位的版本,再慢慢解决后台定位的问题,这样只是少一个后台定位的功能,其他的功能用户还可<br>以正常使用,作为缓兵之计这个方案也是可行的

____
____

#📣问题:没有填写耗电的描述被拒绝

**苹果邮件描述**<br>
![1](https://github.com/wg689/Solve-App-Store-Review-Problem/blob/master/Picture/%E7%94%B5%E6%B1%A0%E6%8F%8F%E8%BF%B0.png)

##解决方案:
#1)添加描述的位置
![添加描述的位置](https://github.com/wg689/Solve-App-Store-Review-Problem/blob/master/Picture/cost%20detail.png)

#2如何描述的例子)
![如何描述的例子](https://github.com/wg689/Solve-App-Store-Review-Problem/blob/master/Picture/custdetailExample.png)
#3)需要在plist告诉用户的
![需要在plist告诉用户的](https://github.com/wg689/Solve-App-Store-Review-Problem/blob/master/Picture/custDetailMiaoshulist.png)
____


____

#📣问题: 广告勾选错误被拒,一妹纸提交审核的时候,苹果问是否有广告,结果这妹纸想以后可能有广告,勾选了,结果被拒了    

**苹果邮件描述**<br>苹果被拒邮件内容：<br>We found that your app uses the Advertising Identifier but does not include ad functionality. This does not comply with the terms of the Apple Developer Program License Agreement, as required by the App Store Review Guidelines.<br>Specifically, section 3.3.12 of the Apple Developer Program License Agreement states:<br>”You and Your Applications (and any third party with whom you have contracted to serve advertising) may use the Advertising Identifier, and any information obtained through the use of the Advertising Identifier, only for the purpose of serving advertising. If a user resets the Advertising Identifier, then You agree not to combine, correlate, link or otherwise associate, <br>either directly or indirectly, the prior Advertising Identifier and any derived information with the reset Advertising Identifier."<br>If your app is serving ads, please:<br>- Ensure that you have tested your app on a device, not just the simulator, and that you have removed all previous versions of your app prior to testing<br>- Provide us the steps to locate ads in your app<br>If your app does not serve ads, please check your code - including any third-party libraries - to <br>remove any instances of:<br>class: ASIdentifierManager<br>selector: advertisingIdentifier<br>framework: AdSupport.framework<br>If you are planning to incorporate ads in a future version, please remove the Advertising Identifier from your app until you have included ad functionality.<br>To help locate the Advertising Identifier, use the "nm" tool. For information on the "nm" tool, please see the nm man page.<br>If you do not have access to the libraries' source, you may be able to search the compiled binary using the "strings" or "otool" command line tools. The "strings" tool lists the methods that the library calls, and "otool -ov" will list the Objective-C class structures and their defined methods. These <br>techniques can help you narrow down where the problematic code resides.

##解决方案: **app没有做广告,是否有广告的勾,就不要打勾了如图片中所示,重新上传!** ![图片](https://github.com/wg689/Solve-App-Store-Review-Problem/blob/master/Picture/ads_select_reject.png)就可解决 

____




____
#📣问题:app崩溃(Crash)问题

**苹果邮件描述**<br>
Thank you for your response.
After reviewing your reply, it seems your question would be best addressed by Apple Developer Technical Support , who can provide discrete code-level assistance. (你的问题最好提交给通过苹果工程师解决)
To ensure the DTS engineers can best help you, be sure to include any available symbolicated crash logs, screenshots, or steps to reproduce the issues encountered in your request.(为了更好的保证工程师帮助你,你需要提供崩溃日志,截图,重现问题的步骤)
For information on how to read or symbolicate a crash log, please see Tech Note TN2151 Understanding and Analyzing iPhone OS Application Crash (关于如何阅读崩溃日志参考ech Note TN2151 Understanding and Analyzing iPhone OS Application Crash)
by:王员外,8824766
##解决方案:
<br>如上英文所述:你的问题最好提交给通过苹果工程师解决,如何联系苹果,网上电话或者邮件,为了更好的保证工程师帮助你,你需要提供崩溃日志,截图,重现问题的步骤,关于如何阅读崩溃日志参考ech Note TN2151 Understanding and Analyzing iPhone OS Application Crash(此文档估计看不懂),如何阅读崩溃日志参考:[iOS崩溃crash大解析](www.jianshu.com/p/1b804426d212)



____

#📣问题:app下载速度很慢的问题啊,我们上线的应用下载好慢?

##解决方案:过段时间就好了,下载量多了就快了
____

____

#📣问题:提交审核无法选择文件
![](https://github.com/wg689/Solve-App-Store-Review-Problem/blob/master/Picture/selectimage/cannotSelectimage.png)

##解决方案:
**删掉重建应用,修改应用bundleid,重新上传,即可提交!qq群网友提供 的解决方案这是一个bug,待苹果修复,**

![](https://github.com/wg689/Solve-App-Store-Review-Problem/blob/master/Picture/selectimage/cannotSelectimageSolve.png)
![](https://github.com/wg689/Solve-App-Store-Review-Problem/blob/master/Picture/selectimage/cannot_select.png)


____
____

#📣问题:

**苹果邮件描述**<br>

##解决方案:

____



# 敬请Star,你的star是我持续更新的动力,谢谢

