# manually-expose-objective-c-API-to-swift-example
借用 VFS 技术，实现手动将 Objective-C 的 API 暴露给 Swift 使用的示例
详情请阅读我写的文章

* [从预编译的角度理解Swift与Objective-C及混编机制](https://tech.meituan.com/2021/02/25/swift-objective-c.html)
* [一款可以让大型iOS工程编译速度提升50%的工具](https://tech.meituan.com/2021/02/25/cocoapods-hmap-prebuilt.html)

在本项目的根目录执行如下命令，查看效果

```sh
swiftc -c LaunchPoint.swift -emit-module -emit-module-path build/LaunchPoint.swiftmodule -module-name index -whole-module-optimization -parse-as-library -o build/LaunchPoint.o -Xcc -ivfsoverlay -Xcc tmp/vfs-overlay.yaml -I /MyObjcPod
```
