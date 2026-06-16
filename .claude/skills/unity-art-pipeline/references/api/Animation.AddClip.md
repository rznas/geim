<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animation.AddClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds a `clip` to the animation with name `newName`.

### Parameters

| Parameter | Description |
| --- | --- |
| addLoopFrame | Should an extra frame be inserted at the end that matches the first frame? Turn this on if you are making a looping animation. |

### Description

Adds `clip` to the only play between `firstFrame` and `lastFrame`. The new clip will also be added to the animation with name `newName`.

If a clip with that name already exists it will be replaced with the new clip.
