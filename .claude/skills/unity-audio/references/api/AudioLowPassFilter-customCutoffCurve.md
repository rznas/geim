<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioLowPassFilter-customCutoffCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns or sets the current custom frequency cutoff curve.

The curve will be scaled so that it is applied over AudioSource.maxDistance from the AudioSource.

Note that if there is no curve set, or AudioLowPassFilter.cutoffFrequency has been set, a single key AnimationCurve will be returned corresponding to the current cutoff frequency.

Setting the curve will result in the internal AnimationCurve to be rescaled to range from 0..1 for performance reasons. This means calling AudioLowPassFilter.customCutoffCurve will return a potentially different curve to what was just set.
