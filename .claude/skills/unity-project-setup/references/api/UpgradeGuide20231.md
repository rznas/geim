<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UpgradeGuide20231.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Upgrade to Unity 2023.1

This page lists changes in Unity 2023.1 which might affect existing projects when you upgrade them from a 2022 LTS version to 2023.1.

### Page outline

- Render pipelines
- Gaussian Filter Radius properties from `LightingSettings` are now floating point values
- Improvements to light probe energy conservation
- Enlighten Baked Global Illumination is no longer available
- Android: Java class UnityPlayer needs to be renamed to UnityPlayerForActivityOrService
- Android: UnityPlayer java class no longer extends FrameLayout
- FetchFirstCompatibleTypeUsingScriptableRenderPipelineExtension replaced by GetDerivedTypesSupportedOnCurrentPipeline
- CustomEditorForRenderPipelineAttribute and VolumeComponentMenuForRenderPipelineAttribute deprecated
- Changes to Android Gradle templates usage

## Render pipelines

This upgrade guide describes how to upgrade to version 2023.1 of Unity’s built-in render pipeline. To upgrade other render pipelines to version 2023.1, see:

- The URP upgrade guide
- The HDRP upgrade guide

To upgrade other packages, refer to the documentation for the packages you are using.

## Gaussian Filter Radius properties from LightingSettings are now floating point values

The Progressive Lightmapper includes a **Gaussian** option among its **Advanced** filtering options (**Lighting Window > Lightmapping Settings > Filtering > Direct Filter > Gaussian**). The **Radius** control for **Gaussian** filtering now supports decimal increments, such as 0.5. Previously, this control only supported integer steps (1 to 5).

As a result of this change, these properties are now deprecated in the C# API:

- `int LightingSettings.filteringGaussRadiusAO`
- `int LightingSettings.filteringGaussRadiusDirect`
- `int LightingSettings.filteringGaussRadiusIndirect`

The floating point replacements for the deprecated properties are:

- `float LightingSettings.filteringGaussianRadiusAO`
- `float LightingSettings.filteringGaussianRadiusDirect`
- `float LightingSettings.filteringGaussianRadiusIndirect`

You can call one of the deprecated member functions to round the Gaussian filter radius to the nearest integer.

## Improvements to light probe energy conservation

Light Probes are now as bright as **lightmaps**. Previously, Unity’s **Light Probes** were only 94% as bright as they should be. For this reason, objects lit with light probes appeared a bit darker than objects lit with lightmaps. Because of the subtlety of this change, it is possible that many users won’t see a noticeable difference.

Should you prefer the old appearance, you can achieve it in the following way:

1. Bake light probes.
2. Use C# to get a copy of the array LightmapSettings.lightProbes.bakedProbes.
3. For each SphericalHarmonicsL2 instance, multiply coefficient 0 with 16/17.
4. Write your copy of the array back into LightmapSettings.lightProbes.bakedProbes.

## Enlighten Baked Global Illumination is no longer available

The **Enlighten** Baked **Global Illumination** lightmapping backend is no longer available.

When you upgrade a project to this version, Unity removes the Enlighten baking backend from the **lightmapper** selection dropdown and substitutes a Progressive Lightmapper in every **Scene** where you’ve selected the Enlighten baking backend.

On Apple silicon devices, Unity substitutes the Progressive GPU Lightmapper for the Enlighten baking backend. On all other devices, Unity selects the CPU Progressive Lightmapper.

Enlighten precomputed Realtime Global Illumination is still available and is supported up until Unity 6.

## Android: Java class UnityPlayer needs to be renamed to UnityPlayerForActivityOrService

The `UnityPlayer` Java class has been replaced by two new bridge classes, `UnityPlayerForActivityOrService` and `UnityPlayerForGameActivity`. These new classes both derive from `UnityPlayer`, but public methods such as `displayChanged` and `windowFocusChanged` have moved from `UnityPlayer` specifically to `UnityPlayerForActivityOrService`.

If you extend the default Unity activity and use the `UnityPlayer` class, you might encounter compile errors. In this case, rename `UnityPlayer` to `UnityPlayerForActivityOrService`.

## Android: UnityPlayer java class no longer extends FrameLayout

The `UnityPlayer` Java class no longer extends `FrameLayout`. If you need to access `FrameLayout`, call the `getFrameLayout` function on the `UnityPlayer` instance.

## FetchFirstCompatibleTypeUsingScriptableRenderPipelineExtension replaced by GetDerivedTypesSupportedOnCurrentPipeline

`RenderPipelineEditorUtility.FetchFirstCompatibleTypeUsingScriptableRenderPipelineExtension` is now deprecated. Use GetDerivedTypesSupportedOnCurrentPipeline instead. This method’s signature is also different; now it returns all derived types, not just the first one it encounters. This prevents inconsistencies, because Unity does not guarantee type order.

## CustomEditorForRenderPipelineAttribute and VolumeComponentMenuForRenderPipelineAttribute deprecated

CustomEditorForRenderPipelineAttribute and VolumeComponentMenuForRenderPipelineAttribute are now deprecated. Use CustomEditor and VolumeComponentMenu instead. To restrict the choice of pipeline when these attributes are active, combine them with SupportedOnRenderPipelineAttribute and specify a RenderPipelineAsset type. If you want to activate an SRP attribute that does work with the Built-In Render Pipeline, use SupportedOnRenderPipelineAttribute without parameters. This provides a unified workflow for both attributes when there’s a need to activate them on a specific pipeline.

## Changes to Android Gradle templates usage

A new API to modify the Android **Gradle** project was introduced. The API can be used to replace the old Android Gradle templates workflow. Templates will still work as before if the new API is not used.

To use the new API a Templates Upgrader can be used:

1. Open **Android **Player Settings****.
2. Go to **Publishing Settings** > **Build**.
3. Select **Upgrade templates to C#**.

## Additional Resources

- What’s New in Unity 2023.1
- Install Unity
- API updater
