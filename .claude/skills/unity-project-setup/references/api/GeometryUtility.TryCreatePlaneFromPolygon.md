<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GeometryUtility.TryCreatePlaneFromPolygon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertices | An array of vertex positions that define the shape of a polygon. |
| plane | A valid plane that goes through the vertices. |

### Returns

**bool** Returns true on success, false if Unity did not create a plane from the vertices.

### Description

GeometryUtility.TryCreatePlaneFromPolygon creates a plane from the given list of `vertices` that define the polygon, as long as they do not characterize a straight line or zero area.

There must be at least three vertices to create the plane; zero, one or two vertices cause `false` to return with no plane. This works for concave polygons and polygons with multiple aligned vertices, but not for self-intersecting polygons.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;// GeometryUtility.TryCreatePlaneFromPolygon - example// Attempt to draw a plane through selected positions.
// Seven positions are generated close to the origin. Each position
// will be in a random +/-1 xz area and random -0.5/0.5 y height.
// Use these random positions for the array of vertices.
// A plane is defined with the new positions. The plane is displayed
// using a square Scene example.public class Example : MonoBehaviour
{
    private Vector3[] positions;
    private GameObject[] gameObjects;
    private int count = 7;
    private float timer = 999999f;
    private Vector3 position;    void Awake()
    {
        // Generate an array of GameObjects.  Use these to show where the
        // positions are based.
        gameObjects = new GameObject[count];
        for (int i = 0; i < count; i++)
        {
            gameObjects[i] = GameObject.CreatePrimitive(PrimitiveType.Cube);
            gameObjects[i].transform.localScale = new Vector3(0.1f, 0.1f, 0.1f);
            gameObjects[i].name = "GO" + i.ToString();
        }
        positions = new Vector3[count];        // Place the Camera in a sensible location.
        Camera.main.transform.position = new Vector3(2.0f, 1.4f, 2.0f);
        Camera.main.transform.localEulerAngles = new Vector3(26.0f, -135.0f, 0.0f);
    }    private Plane plane;
    void Update()
    {
        // Compute positions of the 7 positions.
        if (timer > 5.0f) // True in first call.
        {
            // Generate an array of positions.
            MovePositions(count);            // Now find a plane passing through the positions.
            GeometryUtility.TryCreatePlaneFromPolygon(positions, out plane);            timer = 0.0f;
        }        DrawPlane(Vector3.zero, plane.normal);
        timer += Time.deltaTime;
    }    // Move the positions.
    void MovePositions(int count)
    {
        for (int i = 0; i < count; i++)
        {
            positions[i] = new Vector3(Random.Range(-1.0f, 1.0f), Random.Range(-0.5f, 0.5f), Random.Range(-1.0f, 1.0f));
            gameObjects[i].transform.position = positions[i];
        }
    }    // Generate and display a square that passes through the positions.
    // This only works in the Scene view.
    void DrawPlane(Vector3 position, Vector3 normal)
    {
        Vector3 v3;        if (normal.normalized != Vector3.forward)
        {
            v3 = Vector3.Cross(normal, Vector3.forward).normalized * normal.magnitude;
        }
        else
        {
            v3 = Vector3.Cross(normal, Vector3.up).normalized * normal.magnitude;
        }        // View the square and normal.
        Vector3 corner0 = position + v3;
        Vector3 corner2 = position - v3;
        Quaternion q = Quaternion.AngleAxis(90.0f, normal);
        v3 = q * v3;
        Vector3 corner1 = position + v3;
        Vector3 corner3 = position - v3;        Debug.DrawLine(corner0, corner2, Color.yellow);
        Debug.DrawLine(corner1, corner3, Color.yellow);
        Debug.DrawLine(corner0, corner1, Color.yellow);
        Debug.DrawLine(corner1, corner2, Color.yellow);
        Debug.DrawLine(corner2, corner3, Color.yellow);
        Debug.DrawLine(corner3, corner0, Color.yellow);
        Debug.DrawRay(position, normal, Color.green);        // Draw lines between the positions.
        for (int i = 1; i < count; i++)
        {
            Debug.DrawLine(positions[i], positions[i - 1], Color.blue);
        }
        Debug.DrawLine(positions[0], positions[count - 1], Color.blue);
    }
}
```
