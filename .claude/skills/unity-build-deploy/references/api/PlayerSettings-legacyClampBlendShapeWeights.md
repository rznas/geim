<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-legacyClampBlendShapeWeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines whether the BlendShape weight range in SkinnedMeshRenderers is clamped.

If set to true, the range of BlendShape weights in SkinnedMeshRenderers will be clamped, otherwise BlendShape weights can take any value.

The weight of a BlendShape represents how much the Mesh has been blended (or morphed) from its original shape to a target BlendShape (another Mesh containing the same topology, but with different vertex positions than the original). The BlendShape weight range includes values between the minimum and the maximum weights defined in the model.
