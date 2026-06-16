<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GenericBindingUtility.GetValues.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| boundProperties | The list of BoundProperty to get the values from. |
| values | Returns the list of float or integer values. |

### Description

Retrieves the float or integer value for each [[BoundProperty].

This method throws an ArgumentException if the NativeArray is not yet created.

This method throws an ArgumentException if the values list does not match the length of the boundProperties list.

### Parameters

| Parameter | Description |
| --- | --- |
| boundProperties | The list of BoundProperty to get the values from. |
| indices | The list of indices where each BoundProperty value will be written. |
| values | Returns the list of float or integer values. |

### Description

Retrieves the float or integer value for each [[BoundProperty] and writes the value at a different index specified by the indices list.

This method throws an ArgumentException if the NativeArray is not yet created.

This method throws an ArgumentException if the indices list does not match the length of the boundProperties list.

This method throws an IndexOutOfRangeException if an index in the indices list is out of range.
