<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/D3D12DeviceFilterLists-d3D12GraphicsJobsDeviceFilters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies a list of D3D12GraphicsJobsDeviceFilterData parameters to indicate which Graphics Jobs mode the Windows device should use running Unity applications with the D3D12 API. This API is only available in the Unity Editor. The list is immutable at runtime.

Each parameter value in each D3D12DeviceFilterData entry is processed using logical AND operation to determine if the device matches the specified filter. The device will use the selected Graphics Jobs mode if the filter passes.

 The first passing filter selects the Graphics Jobs mode.
