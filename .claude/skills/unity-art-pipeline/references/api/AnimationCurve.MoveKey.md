<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationCurve.MoveKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the key to move. |
| key | The keyframe containing the new time and value. |

### Returns

**int** The index of the keyframe after it is moved.

### Description

Moves the key at `index` to `key.time` and `key.value`.

This method removes the keyframe at `index` and inserts the updated `key` at the correctly sorted position in AnimationCurve.keys.
 Use this method to move a keyframe in two dimensions: time and value. To use this method as intended, use AnimationCurve.keys to acquire the keyframe, modify the value and/or time, then invoke this method with the updated keyframe. If you use this method with a different keyframe, this method replaces the keyframe with a new one.
 AnimationCurve does not support two keys with the same time. If `key.time` is the same as another keyframe, `key` is reinserted at the time of the keyframe at `index`. This cancels the move operation in the time dimension and keeps the modification in the value dimension.
 See Also: AnimationCurve.keys
