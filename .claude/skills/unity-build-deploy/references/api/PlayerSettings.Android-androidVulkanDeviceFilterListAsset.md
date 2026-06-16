<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-androidVulkanDeviceFilterListAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies an VulkanDeviceFilterLists asset which provides filtering criteria for allowing or denying Android devices from using Vulkan API and selecting Graphics Jobs mode when running Unity applications.

This replaces both PlayerSettings.Android.androidVulkanAllowFilterList and PlayerSettings.Android.androidVulkanDenyFilterList as it contains the same functionality but extended. Refer to VulkanDeviceFilterLists for additional information.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class AndroidVulkanDeviceFilterListAssetSample : MonoBehaviour
{
    static string assetName = "New Vulkan Device Filter";
    [MenuItem("Build/Android Vulkan Device Filter List Sample")]
    public static void BuildAndroidVulkanDeviceFilterListAssetSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;
        
        VulkanDeviceFilterLists myVulkanDeviceList = Resources.Load<VulkanDeviceFilterLists>(assetName);
        //Set myVulkanDeviceList to androidVulkanDeviceFilterListAsset
        PlayerSettings.Android.androidVulkanDeviceFilterListAsset = myVulkanDeviceList;
        
        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
