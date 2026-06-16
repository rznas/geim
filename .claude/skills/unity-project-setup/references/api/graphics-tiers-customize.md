<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/graphics-tiers-customize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Configure graphics tiers in the Built-In Render Pipeline

## Using graphics tiers with C# scripts

Unity stores the value of the current graphics tier in Graphics.activeTier, represented by a GraphicsTier enum. To add custom behavior based on the current graphics tier, you can test against this value.

To override the value of `Graphics.activeTier`, set it directly. Note that you must do this before Unity loads any **shaders** that vary based on graphics tier. A good place to set this value is in a pre-loading **scene**, before you load your main scene.

## Tier settings

In the Unity Editor, you can configure **tier settings**. Tier settings allow you to enable or disable graphics features for each tier.

Tier settings work by changing `#define` preprocessor directives in Unity’s internal shader code. These changes automatically affect prebuilt shaders for the Built-in **Render Pipeline** (such as the Standard Shader), and the internal shader library code for Surface Shaders. You can also add code to your own hand-coded shaders that changes their behavior based on tier settings. For more information, see Graphics tiers and shader variants.

The default tier settings are suitable for most use cases. You should only change them if you are experiencing performance issues, or if you want to enable features on lower-end devices that are not enabled by default.

You can configure different tier settings for each graphics tier of a given build target. You can change tier settings in the following ways:

- Use the Graphics Settings window, in the **Tier Settings** section.
- Use these APIs in an Editor script:
  - EditorGraphicsSettings
  - TierSettings

You can test tier settings in the Editor. To do this, navigate to **Edit > Graphics Tier** and choose the tier that you want the Unity Editor to use.
