<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteDataAccessExtensions.GetBindPoses.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sprite | The sprite to retrieve the bind pose from. |

### Returns

**NativeArray<Matrix4x4>** A list of bind poses for this sprite. There is no need to dispose the returned NativeArray.

### Description

Returns an array of BindPoses.

Use this to animate the Sprite at runtime. Or write to it during bind pose editing.
