<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId-targetPrefabId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ID of the prefab instance that contains the referenced object.

Adding a new prefab instance to a scene creates a new instance of every object the prefab contains, including every GameObject. The GameObject inside a prefab instance doesn't have its own stable local file ID and a single prefab can be instantiated multiple times in a scene. Therefore, to reliably identify a GameObject that's part of a prefab requires both the local file ID of the original version of the GameObject (GameObject.targetObjectId) and the ID of the particular prefab instance it belongs to (`targetPrefabId`).

For more information on creating prefab instances, refer to Creating Prefabs in the Manual.

The `targetPrefabId` constitutes the `{p}` element in the string representation of a `GlobalObjectId`, the format of which is:

`GlobalObjectId_V1-{i}-{a}-{l}-{p}`

Additional resources: PrefabUtility.IsPartOfAnyPrefab
