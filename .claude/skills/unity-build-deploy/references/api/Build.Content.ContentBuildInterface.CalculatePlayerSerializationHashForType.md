<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ContentBuildInterface.CalculatePlayerSerializationHashForType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of the object. |
| typeDB | The user script TypeDB for the player. |

### Returns

**Hash128** The unique hash for a type's serialized layout.

### Description

Returns a unique hash for a given type's serialized layout.

Passing in null will provide a hash for the serialized layout of the type as it exists in the editor, passing in a valid TypeDB for a player will provide a hash for the layout as it exists in the player.

Internal use only. See note on ContentBuildInterface.
