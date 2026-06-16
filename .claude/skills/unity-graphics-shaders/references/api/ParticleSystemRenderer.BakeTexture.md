<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer.BakeTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| verticesTexture | A Texture2D to receive the snapshot of the particle vertices. |
| indicesTexture | An optional Texture2D to receive the snapshot of the particle indices. |
| camera | The Camera used to determine which way camera-space particles face. |
| options | Specifies whether to include the rotation and scale of the Transform in the baked Texture2D. |

### Returns

**int** The number of indices used by the Particle System.

### Description

Creates a snapshot of ParticleSystemRenderer and stores it in a `Texture2D`.
