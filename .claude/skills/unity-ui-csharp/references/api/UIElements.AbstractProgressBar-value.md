<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.AbstractProgressBar-value.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the progress value. The value is clamped between lowValue and highValue.

The progress percentage is calculated as `100 * (value - lowValue) / (highValue - lowValue)`. 

 If the value has changed, dispatches an ChangeEvent_1 of type float.
