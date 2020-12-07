// swiftc -c LaunchPoint.swift -emit-module -emit-module-path build/LaunchPoint.swiftmodule -module-name index -whole-module-optimization -parse-as-library -o build/LaunchPoint.o -Xcc -ivfsoverlay -Xcc tmp/vfs-overlay.yaml -I /MyObjcPod

import MyObjcPod

public class LaunchPoint {
  func haveATry() {
    if (random_number_under_ten() == 9) {
      Swift.print("Good Luck!")
    } else {
      Swift.print("Come on, Man!")
    }
  }
}