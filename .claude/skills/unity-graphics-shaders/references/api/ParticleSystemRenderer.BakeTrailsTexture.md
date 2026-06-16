<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer.BakeTrailsTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| verticesTexture | A Texture2D to receive the snapshot of the particle trail vertices. |
| indicesTexture | A Texture2D to receive the snapshot of the particle trail indices. |
| camera | The Camera used to determine which way camera-space particles face. |
| options | Specifies whether to include the rotation and scale of the Transform in the baked Texture2D. |

### Returns

**int** The number of indices used by the Particle System trails.

### Description

Creates a snapshot of ParticleSystem Trails and stores them in a `Texture2D`.
