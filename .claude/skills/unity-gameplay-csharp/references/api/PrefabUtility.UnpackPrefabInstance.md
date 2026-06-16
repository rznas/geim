<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.UnpackPrefabInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceRoot | The root of the Prefab instance to unpack. |
| unpackMode | Whether to unpack the outermost root or unpack completely. |
| action | The interaction mode to use for this action. |

### Description

Unpacks a given Prefab instance so that it is replaced with the contents of the Prefab Asset while retaining all override values.

The given object must be the root of a Prefab instance.

The contents of a prefab asset is the objects you see when you open it in prefab editing mode. Unpacking with a PrefabUnpackMode of OutermostRoot replaces the prefab instance with that content. Unpacking with a PrefabUnpackMode of Completely also unpacks any prefab instances that are part of the unpacked content, so that the end result is nothing but regular GameObjects and no prefab instances.

The contents of a regular prefab or a model prefab always has a regular GameObject at the root, so unpacking one of those leaves a regular GameObject at the root where the prefab instance was before.

The contents of a prefab variant has an instance of the base prefab at the root, so unpacking a prefab variant with a PrefabUnpackMode of OutermostRoot leaves an instance of the base prefab where the prefab variant instance was before.

Unpacking throws an ArgumentException if the given object is not the root of a prefab instance, or if it's part of a prefab asset. This does not include prefab contents opened in prefab editing mode.

InteractionMode determines if the action should be undoable.
