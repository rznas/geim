<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectInt.SetMinMax.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the bounds to the `min` and `max` value of the rect.

Use this function to set both the minimum and maximum value of the RectInt at the same time, faster than setting the values separately.

This function resolves for the minimum value first, then for the maximum value. When the function resolves for the minimum value, if you enter a minimum value that is greater than the current maximum value, then the entered value becomes the new maximum value and the previous maximum value becomes the new minimum value.

However when the function resolves for the maximum value, it only compares the original entered maximum value against the resolved minimum value, and ignores the new maximum value. If you entered a maximum value that is less than the resolved minimum value, then the entered value becomes the new minimum value and the resolved minimum value becomes the new maximum value.

The position and size of the RectInt is then adjusted based on the final resolved minimum and maximum values.
