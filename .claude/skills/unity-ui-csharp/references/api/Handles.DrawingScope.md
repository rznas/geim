<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DrawingScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposable helper struct for automatically setting and reverting Handles.color and/or Handles.matrix.

This struct allows you to temporarily set the value of Handles.color and/or Handles.matrix inside of a block of code and automatically revert them to their previous values when the scope is exited.

```csharp
using UnityEditor;
using UnityEngine;// a custom editor that draws a labeled circle around the selected MeshRenderer in the scene view
[CustomEditor(typeof(MeshRenderer))]
public class MeshRendererEditor : Editor
{
    protected virtual void OnSceneGUI()
    {
        MeshRenderer meshRenderer = (MeshRenderer)target;        // get an orientation pointing from the selected object to the camera
        Vector3 cameraToTarget = Camera.current.transform.position - meshRenderer.transform.position;
        Quaternion billboardOrientation = Quaternion.LookRotation(cameraToTarget, Camera.current.transform.up);        // set the handle matrix to the target's position, oriented facing the camera
        Matrix4x4 matrix = Matrix4x4.TRS(meshRenderer.transform.position, billboardOrientation, Vector3.one);
        using (new Handles.DrawingScope(Color.magenta, matrix))
        {
            // draw a magenta circle around the selected object with a label at the top
            Vector3 size = meshRenderer.bounds.size;
            float radius = Mathf.Max(size.x, size.y, size.z);
            Handles.DrawWireArc(Vector3.zero, Vector3.forward, Vector3.right, 360f, radius);
            Handles.Label(Vector3.up * radius, meshRenderer.name);
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| originalColor | The value of Handles.color at the time this DrawingScope was created. |
| originalMatrix | The value of Handles.matrix at the time this DrawingScope was created. |

### Constructors

| Constructor | Description |
| --- | --- |
| Handles.DrawingScope | Create a new DrawingScope and set Handles.color and/or Handles.matrix to the specified values. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Automatically reverts Handles.color and Handles.matrix to their values prior to entering the scope, when the scope is exited. You do not need to call this method manually. |
