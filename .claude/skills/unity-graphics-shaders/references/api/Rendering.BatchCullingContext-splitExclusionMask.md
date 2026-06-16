<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingContext-splitExclusionMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A bitmask that represents the BatchCullingContext.cullingSplits Unity ignores in a BatchDrawCommand struct.

The bitmask is 8 bits. A bit value of 1 means Unity ignores the culling split. The least significant bit corresponds to the first culling split in the BatchCullingContext.cullingSplits array, and each successive bit corresponds to the next culling split, up to a maximum of six bits. This means that any of the bits set to 1 in the exclusion mask do not need to be set in the BatchDrawCommand.splitMask either.
