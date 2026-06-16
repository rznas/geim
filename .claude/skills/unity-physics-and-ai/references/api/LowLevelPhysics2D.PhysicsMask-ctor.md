<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsMask-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bitIndicies | The indices of the bits to set in the mask. An index must be in the range [0, 63]. |

### Description

Create a PhysicsMask by specifying multiple bits to set (1).

### Parameters

| Parameter | Description |
| --- | --- |
| layerMask | The LayerMask to use. |

### Description

Create a PhysicsMask from a LayerMask. A UnityEngine.LayerMask is only 32-bits wide so the PhysicsMask will have the upper 32-bits set to zero.
