<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ContentBuildInterface.GetTypeForObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectIDs | The specific objects. |

### Returns

**Type[]** The array of unique types.

### Description

Returns the System.Type of the ObjectIdentifiers and the referenced SerializeReference class types specified by `objectIDs`.

The results do not directly correspond to the input ObjectIdentifiers by index as a single ObjectIdentifier can return multiple types. Use ContentBuildInterface.GetTypesForObject or ContentBuildInterface.GetTypeForObject if you want that information. Internal use only. See note on ContentBuildInterface.
