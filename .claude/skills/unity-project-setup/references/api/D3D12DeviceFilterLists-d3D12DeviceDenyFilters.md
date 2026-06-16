<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/D3D12DeviceFilterLists-d3D12DeviceDenyFilters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies a list of D3D12DeviceFilterData parameters to restrict Windows devices from using D3D12 API when running Unity applications. This API is only available in the Unity Editor. The list is immutable at runtime.

Each parameter value in each D3D12DeviceFilterData entry is processed using logical AND operation to determine if the device matches the specified filter. The device is restricted from using D3D12 if its D3D12DeviceFilterData.driverVersion, D3D12DeviceFilterData.featureLevel, D3D12DeviceFilterData.graphicsMemory, and D3D12DeviceFilterData.processorCount values compared with the corresponding comparison operators to the the specified filter values, and it meets the other specified filter values.

 If you enter the same values in the D3D12DeviceFilterLists.d3D12AllowFilterList and `D3D12DeviceFilterLists.d3D12DenyFilterList` lists, Unity ignores the filter.
