<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BuiltinShaderDefine.UNITY_HARDWARE_TIER2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

UNITY_HARDWARE_TIER2 is set when compiling shaders for GraphicsTier.Tier2.

**Note:** Graphics tiers are only supported in the Built-in Render Pipeline.

Unity generates tier shader variants if your shader source code includes `#pragma hardware_tier_variants`, or if the Tier settings for your project are not all identical.

For more information on Graphics tiers and shader variants, see Graphics tiers.

Additional resources: Graphics tiers, TierSettings GraphicsTier, Graphics.activeTier, EditorGraphicsSettings.GetTierSettings, EditorGraphicsSettings.SetTierSettings.
