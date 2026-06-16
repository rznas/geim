<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJNI.SetBooleanArrayElement.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| array | The array of native booleans. |
| index | Index of the array element to set. |
| val | The value to set. |

### Description

Sets the boolean value of one element in a primitive array.

This function is a special case of SetBooleanArrayRegion(), called with region size set to 1.

Additional resources: Java Native Interface Specification (Oracle)

### Parameters

| Parameter | Description |
| --- | --- |
| array | The array of native booleans. |
| index | Index of the array element to set. |
| val | The value to set - for 'true' use 1, for 'false' use 0. |

### Description

Sets the boolean value of one element in a primitive array.

This function is a special case of SetBooleanArrayRegion(), called with region size set to 1.

This overload is obsolete. Use the overload that takes the bool `val` parameter instead.

Additional resources: Java Native Interface Specification (Oracle)
