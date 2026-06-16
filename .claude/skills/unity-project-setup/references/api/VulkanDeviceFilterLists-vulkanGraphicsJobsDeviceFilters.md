<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VulkanDeviceFilterLists-vulkanGraphicsJobsDeviceFilters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies a list of VulkanGraphicsJobsDeviceFilterData parameters to indicate which Graphics Jobs mode the Android device should use running Unity applications with the Vulkan API. This API is only available in the Unity Editor. The list is immutable at runtime.

Each parameter value in each VulkanDeviceFilterData entry is processed using logical AND operation to determine if the device matches the specified filter. The device will use the selected Graphics Jobs mode if the filter passes.

The first passing filter selects the Graphics Jobs mode.
