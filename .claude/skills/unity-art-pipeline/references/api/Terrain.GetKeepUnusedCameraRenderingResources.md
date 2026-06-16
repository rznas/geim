<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain.GetKeepUnusedCameraRenderingResources.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cameraInstanceID | The InstanceID of the camera being queried. See Object.GetInstanceID. |
| cameraEntityId | The EntityId of the camera being queried. See Object.GetEntityId. |

### Returns

**bool** Returns `true` if all rendering resources for the given camera are saved regardless of usage. Returns `false` if garbage collection is allowed to free unused resources.

### Description

Each Camera has its own `KeepUnusedRenderingResources` setting, which is `false` by default. Unity uses this per-Camera setting in combination with the Terrain's overall `KeepUnusedRenderingResources` setting. If either setting is `true`, Unity preserves all rendering resources regardless of how long they've remained unused.

Additional resources: Terrain.SetKeepUnusedCameraRenderingResources, Terrain.keepUnusedRenderingResources.
