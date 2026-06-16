<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuilder.BuildNavMeshForMultipleScenes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| paths | Array of paths to Scenes that are used for building the navmesh. |

### Description

Builds the combined NavMesh for the contents of multiple Scenes.

Loads all the Scenes by path and then builds the combined navmesh data.

The resulting navmesh data is stored in a single file. The navmesh file path is identical to the default path for the first Scene in the array – e.g. "Assets/Scene1/NavMesh.asset".

The navmesh data is shared between all the Scenes specified.

Note that your current Scene will be saved before, and restored after, the build process. Additionally all Scenes passed to this method will be saved in order to reference the combined navmesh data.

```csharp
using UnityEditor;
using UnityEngine;public class BuildNavMeshFor3Scenes
{
    [MenuItem("NavMesh/BuildNavMeshFor3Scenes")]
    public static void Build()
    {
        string[] sceneNames = { "Assets/Scene1.unity", "Assets/Scene2.unity", "Assets/Scene3.unity" };
        UnityEditor.AI.NavMeshBuilder.BuildNavMeshForMultipleScenes(sceneNames);
    }
}
```
