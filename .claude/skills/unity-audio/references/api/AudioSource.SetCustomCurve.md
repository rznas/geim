<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource.SetCustomCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The curve type that should be set. |
| curve | The curve that should be applied to the given curve type. |

### Description

Set the custom curve for the given AudioSourceCurveType.

The curve will be scaled so that it is applied over AudioSource.maxDistance from the AudioSource.

Note that the internal AnimationCurve to be rescaled to range from 0..1 for performance reasons. This means calling AudioSource.GetCustomCurve will return a potentially different curve to what was just set.
