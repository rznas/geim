<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.UnpackPrefabInstanceAndReturnNewOutermostRoots.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceRoot | Root GameObject of the Prefab instance. |
| unpackMode | The unpack mode to use. |

### Returns

**GameObject[]** Array of GameObjects representing roots of unpacked Prefab instances.

### Description

Unpacks the given Prefab instance using the behaviour specified by unpackMode.

If the PrefabUnpackMode is the PrefabUnpackMode.OutermostRoot this function will return any new Prefab root GameObjects from any nested Prefabs at the first level.

Unlike UnpackPrefabInstance, this function can’t be made undoable. You will have to handle undo yourself.

See UnpackPrefabInstance for a full description of the unpacking behaviour.
