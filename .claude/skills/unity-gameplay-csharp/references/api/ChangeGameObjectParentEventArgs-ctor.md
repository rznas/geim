<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ChangeGameObjectParentEventArgs-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceId | The instance ID of the GameObject whose parent changed. Note that this is not the instance ID of the Transform component. |
| previousScene | The scene containing the previous parent. This is useful to detect whether a GameObject was moved to another scene. |
| previousParentInstanceId | The instance ID of the GameObject that was the previous parent of the target. Note that this is not the instance ID of its Transform. |
| newScene | The Scene containing the new parent. This is useful to detect whether a GameObject was moved to another scene or moved to the root of a scene. |
| newParentInstanceId | The instance ID of the GameObject that is the new parent of the target. Note that this is not the instance ID of its Transform. |

### Description

Constructs a new instance.
