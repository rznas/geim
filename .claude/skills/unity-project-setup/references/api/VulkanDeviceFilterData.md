<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VulkanDeviceFilterData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set of parameters used to define an Android device or group of Android devices.

Specify a list of parameters to identify an Android device or set of Android devices. Enter values for one or multiple parameters. The parameter values are processed using logical AND operation to check if the device properties match with all the specified values.

Unity ignores the filter if all parameters are empty.

### Properties

| Property | Description |
| --- | --- |
| androidOsVersionString | The Android operating system version the device runs on. |
| brandName | The manufacturer name of the Android device. |
| deviceName | The name of the GPU model used in the Android device. |
| driverVersionString | Vulkan device driver version. |
| productName | The product codename for the Android device. |
| vendorName | Vendor name of the GPU hardware used in the Android device. |
| vulkanApiVersionString | Vulkan API version. |
