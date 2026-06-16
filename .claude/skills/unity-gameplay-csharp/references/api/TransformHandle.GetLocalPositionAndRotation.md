<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.GetLocalPositionAndRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| localPosition | Out parameter that will receive the position of the transform in local space. |
| localRotation | Out parameter that will receive the rotation of the transform in local space. |

### Description

Updates the value of the out parameters `localPosition` and `localRotation` with the transform's current `position` and `rotation` in local space (that is, relative to its parent's `transformHandle`).

**Note**: When getting both the `localPosition` and `localRotation` of a `TransformHandle`, calling this method is slightly more efficient than querying TransformHandle.localPosition and TransformHandle.localRotation individually.

If the transform has no parent, then calling this is equivalent to calling TransformHandle.GetPositionAndRotation.

The typical usage for this method is to retrieve a transform's `position` and `rotation` in local space, to either display them or evaluate them. For example:

`transformHandle.GetLocalPositionAndRotation(out Vector3 localPosition, out Quaternion localRotation)`

The following example logs the position and rotation of a `GameObject`'s `TransformHandle` in local space.

```csharp
using UnityEngine;// Attach this script to a GameObject as a component.
public class GetLocalPositionAndRotationExample : MonoBehaviour
{
    void Start()
    {
        // transformHandle refers to the TransformHandle of the GameObject this script is attached to.
        transformHandle.GetLocalPositionAndRotation(out Vector3 localPosition, out Quaternion localRotation);        // We will convert the rotation Quaternion to Euler angles for readability.
        Debug.Log($"{name} is located at {localPosition}, and has the rotation {localRotation.eulerAngles} relative to its parent.");
    }
}
```

Additional resources: Quaternion, Vector3.
