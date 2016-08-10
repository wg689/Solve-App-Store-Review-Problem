# Solve-App-Store-Review-Problem
a collection   to solve app store review problem (appstore 审核遇到问题和解决方案的汇总)

[**app审核指南中英文对照版**](http://appstore.icewindtech.com)

本文链接:

#appstore 审核遇到有问题欢迎给我提issue 或者咨询我qq:596201463,我汇总到这,并给出解决方案

| 问题描述       | 问题分类           | 解决方案 |
| ------------- |:------:|----|
|      |   后台定位    |  待完善  |
|From Apple<br> 2. 1 PERFORMANCE: APP COMPLETENESS<br> 2. 3 PERFORMANCE: ACCURATE METADATA<br> Performance - 2.1 <br> We were unable to review your app as it crashed on launch. We have attached detailed crash logs to help troubleshoot this issue.<br> Next Steps<br> Please revise your app and test it on a device while connected to an IPv6 network (all apps must support IPv6) to ensure it will launch without crashing.<br> Resources<br> For additional information about supporting IPv6 Networks, please refer to Supporting IPv6 DNS64/NAT64 Networks and Supporting IPv6-only Networks.<br> For a networking overview, please see About Networking.<br> For information on how to symbolicate and read a crash log, please see Tech Note TN2151 Understanding and Analyzing iPhone OS Application Crash Reports.<br> If you have difficulty reproducing this issue, please try testing the workflow described in Testing Workflow with Xcode's Archive feature.<br> If you have code-level questions after utilizing the above resources, you may wish to consult with Apple Developer Technical Support. When the DTS engineer follows up with you, please be ready to provide:<br> - complete details of your rejection issue(s)<br> - screenshots<br> - steps to reproduce the issue(s)<br> - symbolicated crash logs - if your issue results in a crash log       | ipv6 被拒 |  解决方案支持ipv6 ,<br>1)搭建ipv6 环境,搭建好的ipv6<br>环境会有一个共享wifi,<br>2)app连上搭建好的<br>wifi测试app,会发现某些<br>模块无法连接网络,<br>更换相应的模块即可s<br>更多详情参考<br>下面两篇文章<br>6.1后苹果要求APP<br>兼容IPv6 <br><br>本地如何搭建IPv6<br>环境测试你的APP](http://www.jianshu.com/p/632d995749e1)s<br><br>[适配IPV6需要替<br>换的第三方SDK](http://www.jianshu.com/p/afc0b19fd5d3) |
|      |       |    |








