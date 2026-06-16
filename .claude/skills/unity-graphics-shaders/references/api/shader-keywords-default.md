<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-keywords-default.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Default shader keywords

Unity uses predefined sets of **shader** keywords to generate shader variants that enable common functionality.

Unity adds the following sets of shader variant keywords at compile time:

- By default, Unity adds this set of keywords to all graphics shader programs: STEREO_INSTANCING_ON, STEREO_MULTIVIEW_ON, STEREO_CUBEMAP_RENDER_ON, UNITY_SINGLE_PASS_STEREO. You can strip these keywords using an Editor script. For more information, see Shader variant stripping.
- By default, Unity adds this set of keywords to the Standard Shader: LIGHTMAP_ON, DIRLIGHTMAP_COMBINED, DYNAMICLIGHTMAP_ON, LIGHTMAP_SHADOW_MIXING, SHADOWS_SHADOWMASK. You can strip these keywords using the Graphics settings window.
- In the Built-in **Render Pipeline**, if your project uses tier settings that differ from each other, Unity adds this set of keywords to all graphics shaders: UNITY_HARDWARE_TIER1, UNITY_HARDWARE_TIER2, UNITY_HARDWARE_TIER3. For more information, see Graphics tiers: Graphics tiers and shader variants.
