<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-androidVulkanDenyFilterList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies a list of AndroidDeviceFilterData parameters to restrict Android devices from using Vulkan API when running Unity applications.

Each parameter value in each AndroidDeviceFilterData entry is processed using logical AND operation to determine if the device matches the specified filter. The device is restricted from using Vulkan if its AndroidDeviceFilterData.vulkanApiVersionString and AndroidDeviceFilterData.driverVersionString values are less than or equal to the specified filter values, and it meets the other specified filter values.

If you enter the same values in the PlayerSettings.Android.androidVulkanAllowFilterList and `PlayerSettings.Android.androidVulkanDenyFilterList` lists, Unity ignores the filter.
