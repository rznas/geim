<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadowSamplingMode.CompareDepths.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Default shadow sampling mode: sampling with a comparison filter.

The texture and sampler should be declared with: `UNITY_DECLARE_SHADOWMAP(_Shadowmap);`

and sampled with: `UNITY_SAMPLE_SHADOW(_Shadowmap, half3(uv, depth_for_comparison));`.
