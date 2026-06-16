<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/D3D12DeviceFilterLists.EnsureValidOrThrow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ensures all filters defined in D3D12DeviceFilterData.d3D12DeviceDenyFilters, D3D12DeviceFilterData.d3D12DeviceAllowFilters, and D3D12DeviceFilterData.d3D12GraphicsJobsDeviceFilters are valid. This API is only available in the Unity Editor.

Use this function to validate that there are no errors defined in any of the filter criteria or else it will throw an exception.
