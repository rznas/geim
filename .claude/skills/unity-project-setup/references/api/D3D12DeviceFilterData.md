<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/D3D12DeviceFilterData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set of parameters used to define a Windows device or group of Windows devices.

Specify a list of parameters to identify an Windows device or set of Windows devices. Enter values for one or multiple parameters. The parameter values are processed using logical AND operation to check if the device properties match with all the specified values.

 Unity ignores the filter if all parameters are empty.

### Properties

| Property | Description |
| --- | --- |
| deviceName | The name of the GPU model used in the Windows device. |
| deviceType | Defines the type of the GPU as D3D12GraphicsDeviceType. |
| driverVersion | Graphics card driver version. |
| driverVersionComparator | The operator to use when comparing to the driver version. |
| featureLevel | The D3D12 feature level. |
| featureLevelComparator | The operator to use when comparing to the D3D12 feature level. |
| graphicsMemory | The amount of video memory on the graphics card in megabytes. |
| graphicsMemoryComparator | The operator to use when comparing to the graphics memory. |
| processorCount | The number of CPUs on the device. |
| processorCountComparator | The operator to use when comparing to the processor count. |
| vendorName | Vendor name of the GPU hardware. |
