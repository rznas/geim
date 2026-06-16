<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneView.CameraSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to set SceneView Camera properties.

```csharp
// Create a folder (right click in the Assets directory, click Create>Folder)
// and name it Editor if one doesn't exist already. Create a new C# script called CustomSettings
// and place it in that folder.// This script creates a new menu item Edit>SceneView Settings>Update Camera Settings in the main menu.
// Use it to update the Camera settings in the Scene view.using UnityEditor;public class CustomSettings
{
    [MenuItem("Edit/SceneView Settings/Update Camera Settings")]
    static void UpdateCameraSettings()
    {
        SceneView.CameraSettings settings = new SceneView.CameraSettings();
        settings.accelerationEnabled = false;
        settings.speedMin = 1f;
        settings.speedMax = 10f;
        settings.speed = 5f;
        settings.easingEnabled = true;
        settings.easingDuration = 0.6f;
        settings.dynamicClip = false;
        settings.fieldOfView = 120f;
        settings.nearClip = 0.01f;
        settings.farClip = 1000f;
        settings.occlusionCulling = true;
        SceneView sceneView = SceneView.lastActiveSceneView;
        sceneView.cameraSettings = settings;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| accelerationEnabled | Enables Camera movement acceleration in the SceneView. This makes the Camera accelerate for the duration of movement. |
| dynamicClip | When enabled, the SceneView Camera's near and far clipping planes are calculated relative to the viewport size of the Scene. When disabled, nearClip and farClip are used instead. |
| easingDuration | How long it takes for the speed of the SceneView Camera to accelerate to its initial full speed. Measured in seconds. Valid values are between [0.1, 2]. |
| easingEnabled | Enables Camera movement easing in the SceneView. This makes the Camera ease in when it starts moving, and ease out when it stops. |
| farClip | The furthest point from the SceneView Camera that drawing occurs. The valid minimum value is 0.02. |
| fieldOfView | The height of the view angle for the SceneView Camera. Measured in degrees vertically, or along the local Y axis. |
| nearClip | The closest point to the SceneView Camera where drawing occurs. The valid minimum value is 0.01. |
| occlusionCulling | Enables occlusion culling in the SceneView. This prevents Unity from rendering GameObjects that the Camera cannot see because they are hidden by other GameObjects. |
| speed | The speed of the SceneView Camera. |
| speedMax | The maximum speed of the SceneView Camera. Valid values are between [0.0002, 10000]. |
| speedMin | The minimum speed of the SceneView Camera. Valid values are between [0.0001, 9999]. |
| speedNormalized | The normalized speed of the SceneView Camera, relative to the current minimum/maximum range. Valid values are between [0, 1]. |

### Constructors

| Constructor | Description |
| --- | --- |
| SceneView.CameraSettings | Create a new CameraSettings object. |
