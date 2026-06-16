<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VulkanDeviceFilterLists.EnsureValidOrThrow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ensures all filters defined in VulkanDeviceFilterData.vulkanDeviceDenyFilters, VulkanDeviceFilterData.vulkanDeviceAllowFilters, and VulkanDeviceFilterData.vulkanGraphicsJobsDeviceFilters are valid. This API is only available in the Unity Editor.

Use this function to validate that there are no errors defined in any of the filter criteria or else it will throw an exception.
