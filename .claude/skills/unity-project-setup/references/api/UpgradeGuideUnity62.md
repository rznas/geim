<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UpgradeGuideUnity62.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Upgrade to Unity 6.2

This page lists changes in Unity 6.2 that can affect existing projects when you upgrade them from Unity 6.1 to Unity 6.2.

Review changes for Unity 6.2 in these areas:

- Graphics
- UI Toolkit

## Graphics

This section outlines recent updates to Unity’s graphics systems that can affect your upgrade experience.

### Select shader APIs are now deprecated

Unity 6.2 deprecates a set of **shader** APIs that are superseded by more recent APIs. Refer to the [6.2 release notes](https://unity.com/releases/editor/whats-new/6000.2.0) for the full list of deprecated APIs and the APIs to replace them with. The deprecated APIs will be removed in a future release.

### Change to AfterRendering injection point timing in URP

The `AfterRendering` injection point now always executes after the final **blit** to the back buffer. In previous Unity versions, `AfterRendering` sometimes executes before the final blit, if, for example, an effect like Fast Approximate Anti-Aliasing (FXAA) or an upscaler requires an additional final **post-processing** render pass.

To preserve the old behavior and continue rendering into an intermediate texture rather than the back buffer, change the event in your custom render pass from `AfterRendering` to `AfterRenderingPostProcessing`. This avoids further changes such as handling y-flips. The change is backward-compatible, so you can apply it to Unity 6.0 and later to maintain compatibility across all Unity 6 versions.

### SetupRenderPasses is deprecated in URP

The `SetupRenderPasses` API is now deprecated in the Universal **Render Pipeline** (URP). This API will be removed in a future release.

If your project contains Scriptable Renderer Features that use `SetupRenderPasses`, rewrite them using the render graph system and the `AddRenderPasses` API. For more information, refer to Render graph system.

For compatibility purposes, Unity 6 includes the option to disable the render graph system and use the **rendering path** from previous URP versions. Unity no longer develops or improves this rendering path. For more information, refer to Compatibility Mode.

## UI Toolkit

This section outlines recent updates to Unity’s UI Toolkit that can affect your upgrade experience.

### VisualElement.transform API deprecated

The VisualElement.transform API has been deprecated.

To set values, use:

- VisualElement.style.translate
- VisualElement.style.rotate
- VisualElement.style.scale

To read values, use:

- VisualElement.resolvedStyle.translate
- VisualElement.resolvedStyle.rotate
- VisualElement.resolvedStyle.scale
