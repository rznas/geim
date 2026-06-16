<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-shadowNormalBias.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shadow mapping normal-based bias.

Shadow caster surfaces are pushed inwards along their normals by this amount, to help prevent self-shadowing ("shadow acne") artifacts. Units of normal-based bias are expressed in terms of shadowmap texel size; typically values between 0.3-0.7 work well.

Larger values prevent shadow acne better, at expense of making shadow shape smaller than the object actually is.

Currently normal-based bias is only implemented for directional lights; it has no effect for other light types.

Additional resources: shadows, shadowBias properties.
