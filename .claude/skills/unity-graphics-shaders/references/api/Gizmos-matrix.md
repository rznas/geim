<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos-matrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the Matrix4x4 that the Unity Editor uses to draw Gizmos.

The Gizmos.matrix stores the position, rotation and scale of the Gizmos. By default, Gizmos always uses world coordinates. The default Gizmos.matrix transforms the world coordinates using a default identity matrix. Transform.localToWorldMatrix changes local coordinate space to world space.

GameObjects often use local coordinates. Gizmos.matrix changes these local coordinates into world coordinates to allow Gizmos to use them. For example, a rotating object uses local coordinates. A transfer into world coordinates happens using Gizmos.matrix. To visualise the object, use Gizmos.DrawCube. See below.

To use the example to draw a red, semi-transparent, cube gizmo:
 1. Place this example script on a Cylinder at the origin.
 2. Select the Cylinder in the Hierarchy and then click the `Play` button.
 3. Next, click the `Scene` button. The gizmo should appear.
 The cylinder will rotate in `Play` mode and be seen rotating in `Scene` view.

```csharp
using UnityEngine;

public class GizmosExample : MonoBehaviour
{
    public float rotationSpeed = 50.0f;

    void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(0.75f, 0.0f, 0.0f, 0.75f);

        // Convert the local coordinate values into world
        // coordinates for the matrix transformation.
        Gizmos.matrix = transform.localToWorldMatrix;
        Gizmos.DrawCube(Vector3.zero, Vector3.one);
    }

    // Rotate the cube.
    void Update()
    {
        float zRot = rotationSpeed * Time.deltaTime;
        transform.Rotate(0.0f, 0.0f, zRot);
    }
}
```
