<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshEditorHelpers.DrawBuildDebug.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| navMeshData | NavMesh object for which debug data has been deliberately collected during the build process. |
| flags | Bitmask that designates the types of data to show at one time. |

### Description

Displays in the Editor the precise intermediate data used during the build process of the specified NavMesh.

Additional resources: NavMeshBuildSettings.debug.

```csharp
using System.Collections.Generic;
using UnityEditor.AI;
using UnityEngine;
using UnityEngine.AI;public class NavMeshBuildDebugDraw : MonoBehaviour
{
    NavMeshData m_NavMeshData;    void Start()
    {
        var bounds = new Bounds(transform.position, new Vector3(100.0f, 100.0f, 100.0f));
        var markups = new List<NavMeshBuildMarkup>();
        var sources = new List<NavMeshBuildSource>();
        NavMeshEditorHelpers.CollectSourcesInStage(
            bounds, ~0, NavMeshCollectGeometry.RenderMeshes, 0, markups, gameObject.scene, sources);        var settings = NavMesh.GetSettingsByID(0);
        var debug = new NavMeshBuildDebugSettings();
        debug.flags = NavMeshBuildDebugFlags.All;
        settings.debug = debug;        m_NavMeshData = new NavMeshData();
        UnityEngine.AI.NavMeshBuilder.UpdateNavMeshDataAsync(m_NavMeshData, settings, sources, bounds);
    }    void OnDrawGizmos()
    {
        NavMeshEditorHelpers.DrawBuildDebug(
            m_NavMeshData, NavMeshBuildDebugFlags.Regions | NavMeshBuildDebugFlags.SimplifiedContours);
    }
}
```
