<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.GetLocalPositionAndRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| localPosition | Out parameter that will receive the position of the transform in local space. |
| localRotation | Out parameter that will receive the rotation of the transform in local space. |

### Description

Updates the value of the out parameters `localPosition` and `localRotation` with the transform's current `position` and `rotation` in local space (that is, relative to its parent's `transform`).

**Note**: When getting both the `localPosition` and `localRotation` of a `Transform`, calling this method is slightly more efficient than querying Transform.localPosition and Transform.localRotation individually.

If the transform has no parent, then calling this is equivalent to calling Transform.GetPositionAndRotation.

The typical usage for this method is to retrieve a transform's `position` and `rotation` in local space, to either display them or evaluate them. For example:

`transform.GetLocalPositionAndRotation(out Vector3 localPosition, out Quaternion localRotation)`

The following example logs the position and rotation of a `GameObject`'s `Transform` in local space.

```csharp
using UnityEngine;// Attach this script to a GameObject as a component.
public class GetLocalPositionAndRotationExample : MonoBehaviour
{
    void Start()
    {
        // transform refers to the Transform of the GameObject this script is attached to.
        transform.GetLocalPositionAndRotation(out Vector3 localPosition, out Quaternion localRotation);        // We will convert the rotation Quaternion to Euler angles for readability.
        Debug.Log($"{name} is located at {localPosition}, and has the rotation {localRotation.eulerAngles} relative to its parent.");
    }
}
```

Additional resources: Quaternion, Vector3.
