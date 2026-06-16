<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXManager.IsCameraBufferNeeded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cam | The Camera for which to query needed buffers. |

### Returns

**VFXCameraBufferTypes** A list of all needed buffer flags.

### Description

Queries which buffers the VFX Manager needs for the given Camera.

Use this call to make your custom SRP support screen space effects in VFX Graph.
