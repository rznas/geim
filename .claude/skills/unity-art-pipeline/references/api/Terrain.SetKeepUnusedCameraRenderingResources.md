<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain.SetKeepUnusedCameraRenderingResources.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cameraInstanceID | The InstanceID of the camera for which freeUnusedRenderingResources is being set. See Object.GetInstanceID. |
| freeUnusedRenderingResources | The value to set to this camera's freeUnusedRenderingResources flag. |
| cameraEntityId | The EntityId of the camera for which freeUnusedRenderingResources is being set. See Object.GetEntityId. |

### Description

Defines whether Unity cleans up rendering resources for a given Camera during garbage collection.

Each Camera has its own `KeepUnusedRenderingResources` setting, which is `false` by default. Unity uses this per-Camera setting in combination with the Terrain's overall `KeepUnusedRenderingResources` setting. If either setting is `true`, Unity preserves all rendering resources regardless of how long they've remained unused.

Additional resources: Terrain.GetKeepUnusedCameraRenderingResources, Terrain.keepUnusedRenderingResources.
