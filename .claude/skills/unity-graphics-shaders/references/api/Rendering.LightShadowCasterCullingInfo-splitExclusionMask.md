<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightShadowCasterCullingInfo-splitExclusionMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A bitmask that represents the shadow splits in LightShadowCasterCullingInfo.splitRange Unity discards.

The bitmask is 8 bits. A bit value of 1 means Unity doesn't render the shadow split, so the CPU can end the culling job early. The least significant bit corresponds to the first shadow split, and each successive bit corresponds to the next shadow split. The maximum number of bits is the length of LightShadowCasterCullingInfo.splitRange.
