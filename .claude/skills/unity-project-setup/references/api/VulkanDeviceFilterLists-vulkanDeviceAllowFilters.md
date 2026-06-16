<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VulkanDeviceFilterLists-vulkanDeviceAllowFilters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies a list of VulkanDeviceFilterData parameters to allow Android devices to always use Vulkan API when running Unity applications. This API is only available in the Unity Editor. The list is immutable at runtime.

Each parameter value in each VulkanDeviceFilterData entry is processed using logical AND operation to determine if the device matches the specified filter. The device is allowed to use Vulkan if its VulkanDeviceFilterData.vulkanApiVersionString and VulkanDeviceFilterData.driverVersionString values are greater than or equal to the specified filter values, and it meets the other specified filter values.

If you enter the same values in the `VulkanDeviceFilterData.vulkanDeviceAllowFilters` and VulkanDeviceFilterData.vulkanDeviceDenyFilters lists, Unity ignores the filter.
