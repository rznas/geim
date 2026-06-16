<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CullingGroup.SetBoundingSpheres.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| array | The BoundingSpheres to cull. |

### Description

Sets the array of bounding sphere definitions that the CullingGroup should compute culling for.

Note that the provided array is simply referenced, not copied; therefore you can simply modify the data in the array on successive frames without calling SetBoundingSpheres again each time.
