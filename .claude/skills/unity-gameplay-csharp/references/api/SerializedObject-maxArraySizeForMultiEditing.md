<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedObject-maxArraySizeForMultiEditing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the maximum size beyond which arrays cannot be edited when multiple objects are selected.

This value controls the maximum array size that you can edit during multiple-object-editing in the Inspector.

When you select two or more GameObjects and the minimum array size for a property is larger than this value, the Inspector shows an empty array and SerializedProperty.arraySize returns 0. In that case, SerializedProperty.minArraySize exposes the actual minimum size.

As a compromise between performance and utility, the default array size is 64.

If your serialized object typically has arrays larger than this, you can set this value to a higher number to allow multi-editing on those arrays. Please be aware that setting too high a value might affect Inspector performance when editing large arrays or a large number of objects.
