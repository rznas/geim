<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioMixer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AudioMixer asset.

This is a singleton representing a specific audio mixer asset in the project.

### Properties

| Property | Description |
| --- | --- |
| outputAudioMixerGroup | Routing target. |
| updateMode | How time should progress for this AudioMixer. Used during Snapshot transitions. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearFloat | Resets an exposed parameter to its initial value. |
| FindMatchingGroups | Connected groups in the mixer form a path from the mixer's master group to the leaves. This path has the format Master Group/Child of Master Group/Grandchild of Master Group, and so on. For example, in the hierarchy below, the group DROPS has the path Master/WATER/DROPS. To return only the group called DROPS, enter DROPS. The substring Master/AMBIENCE returns three groups, AMBIENCE/CROWD, AMBIENCE/ROAD, and AMBIENCE. The substring /R would return both ROAD and RIVER. |
| FindSnapshot | The name must be an exact match. |
| GetFloat | Returns the value of the exposed parameter specified. If the parameter doesn't exist the function returns false. Prior to calling SetFloat and after ClearFloat has been called on this parameter the value returned will be that of the current snapshot or snapshot transition. |
| SetFloat | AudioMixer.SetFloat sets the value of the exposed parameter specified. Once you call this function, mixer snapshots will no longer control the exposed parameter, and you can only modify the parameter using AudioMixer.SetFloat. |
| TransitionToSnapshots | Transitions to a weighted mixture of the snapshots specified. This can be used for games that specify the game state as a continuum between states or for interpolating snapshots from a triangulated map location. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
