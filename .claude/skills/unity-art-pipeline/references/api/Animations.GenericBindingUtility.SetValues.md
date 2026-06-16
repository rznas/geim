<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GenericBindingUtility.SetValues.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| boundProperties | The list of BoundProperty to set the values for. |
| values | The list of float or integer values to set. |

### Description

Sets the float or integer value for each [[BoundProperty].

This method throws an ArgumentException if the NativeArray is not yet created.

This method throws an ArgumentException if the indices list does not match the length of the boundProperties list.

### Parameters

| Parameter | Description |
| --- | --- |
| boundProperties | The list of BoundProperty to set the values for. |
| indices | The list of indices where each BoundProperty value will be read. |
| values | The list of float or integer values. |

### Description

Sets the float/integer values for each [[BoundProperty] and uses the value at the index define in indices.

This method throws an ArgumentException if the NativeArray is not yet created.

This method throws an ArgumentException if the indices list does not match the length of the boundProperties list.

This method throws an IndexOutOfRangeException if an index in the indices list is out of range.
