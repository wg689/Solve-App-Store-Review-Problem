# Solve-App-Store-Review-Problem
a collection   to solve app store review problem (appstore 审核遇到问题和解决方案的汇总)


#问题:ipv6被拒绝

>From Apple
2. 1 PERFORMANCE: APP COMPLETENESS
2. 3 PERFORMANCE: ACCURATE METADATA
Performance - 2.1
We were unable to review your app as it crashed on launch. We have attached detailed crash logs to help troubleshoot this issue.
Next Steps
Please revise your app and test it on a device while connected to an IPv6 network (all apps must support IPv6) to ensure it will launch without crashing.
Resources
For additional information about supporting IPv6 Networks, please refer to Supporting IPv6 DNS64/NAT64 Networks and Supporting IPv6-only Networks.
For a networking overview, please see About Networking.
For information on how to symbolicate and read a crash log, please see Tech Note TN2151 Understanding and Analyzing iPhone OS Application Crash Reports.
If you have difficulty reproducing this issue, please try testing the workflow described in Testing Workflow with Xcode's Archive feature.
If you have code-level questions after utilizing the above resources, you may wish to consult with Apple Developer Technical Support. When the DTS engineer follows up with you, please be ready to provide:
 complete details of your rejection issue(s)
 screenshots
 steps to reproduce the issue(s)
 symbolicated crash logs - if your issue results in a crash log




 解决方案支持ipv6 ,

1)搭建ipv6 环境,搭建好的ipv6环境会有一个共享wifi,
2)app连上搭建好的wifi测试app,会发现某些模块无法连接网络,更换相应的模块即可

更多详情参考下面两篇文章

[6.1后苹果要求APP兼容IPv6，本地如何搭建IPv6环境测试你的APP](http://www.jianshu.com/p/632d995749e1)

[适配IPV6需要替换的第三方SDK](http://www.jianshu.com/p/afc0b19fd5d3)
