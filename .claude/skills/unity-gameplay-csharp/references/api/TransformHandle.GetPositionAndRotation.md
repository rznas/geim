<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.GetPositionAndRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Out parameter that will receive the position of the transform in world space. |
| rotation | Out parameter that will receive the rotation of the transform in world space. |

### Description

Updates the value of the out parameters `position` and `rotation` with the transform's current `position` and `rotation` in world space (that is, relative to the scene's origin coordinates).

**Note**: When getting both the `position` and `rotation` of a `TransformHandle`, calling this method is more efficient than querying to TransformHandle.position and TransformHandle.rotation individually.

The typical usage for this method is to retrieve a transform's `position` and `rotation` in world space, to either display them or evaluate them. For example:

`transformHandle.GetPositionAndRotation(out Vector3 position, out Quaternion rotation)`

The following example logs the position and rotation of a `GameObject`'s `TransformHandle` in world space.

```csharp
using UnityEngine;// Attach this script to a GameObject as a component.
public class GetPositionAndRotationExample : MonoBehaviour
{
    void Start()
    {
        // transformHandle refers to the TransformHandle of the GameObject this script is attached to.
        transformHandle.GetPositionAndRotation(out Vector3 position, out Quaternion rotation);        // We will convert the rotation Quaternion to Euler angles for readability.
        Debug.Log($"{name} is located at {position}, and has the rotation {rotation.eulerAngles}");
    }
}
```

Additional resources: Quaternion, Vector3.
