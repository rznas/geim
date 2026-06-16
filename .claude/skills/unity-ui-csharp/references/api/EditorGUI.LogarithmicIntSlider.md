<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.LogarithmicIntSlider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the long field. |
| label | Label to display in front of the long field. |
| sliderValue | The value to edit. |
| leftValue | The value at the left end of the slider. |
| rightValue | The value at the right end of the slider. |
| logbase | The logarithm base. The resulting value will be a power of this value. |
| textFieldMin | The value to display at the left end of the slider. |
| textFieldMax | The value to display at the right end of the slider. |

### Returns

**int** The value entered by the user.

### Description

Makes a text field for entering an integer on a logarithmic scale.

Additional resources: IntField, FloatField, DoubleField.
