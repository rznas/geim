<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource.GetCustomCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The curve type to get. |

### Returns

**AnimationCurve** The custom AnimationCurve corresponding to the given curve type.

### Description

Get the current custom curve for the given AudioSourceCurveType.

Note that if there is no curve set, or the corresponding curve type value setter has been set, a single key AnimationCurve will be returned corresponding to the current value.
