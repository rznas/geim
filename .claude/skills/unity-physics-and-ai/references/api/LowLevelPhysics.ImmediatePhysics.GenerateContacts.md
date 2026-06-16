<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics.ImmediatePhysics.GenerateContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| geom1 | The array that holds the first member of each pair of GeometryHolder objects with shapes assigned. |
| geom2 | The array that holds the second member of each pair of GeometryHolder objects with shapes assigned. |
| xform1 | The array that holds the first member of each pair of ImmediateTransforms. |
| xform2 | The array that holds the second member of each pair of ImmediateTransforms. |
| pairCount | The number of pairs provided in the GeometryHolder and ImmediateTransform arrays. |
| outContacts | The output array of contacts that were generated. |
| outContactCounts | The output array of how many contacts were generated for each pair. |
| contactDistance | The distance at which contacts begin to be generated between the pairs. |

### Returns

**int** Returns the total number of contact points that were generated.

### Description

Generates the contact points for all the given pairs of shapes. Stores the resulting contacts in the ImmediateContact array, and the number of contacts per each pair in the `outContactCounts` array.

This code sample defines how many pairs of objects PhysX should expect in the scene. You can set a specific number for a small contact check or, if you intend to run a more complex simulation, you might want to implement broadphase filtering to find out how many pairs of objects will interact. The easiest and least performant option is to put all the possible pairs of bodies into a GenerateContacts function that exists in the scene. This example shows a basic setup of manually adding two pairs of bodies and checking for contacts between them.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.LowLevelPhysics;
using Unity.Collections;public class ImmediatePhysics_GenerateContacts_Example : MonoBehaviour
{
    private int m_NumberOfPairs = 2;    // Pull in a reference from the Editor to the Mesh Collider.
    [SerializeField]
    private MeshCollider m_Mesh;    List<Vector3> contactPoints = new List<Vector3>();    // There is no way to know how many contacts the shapes will generate,
    // so set a maximum value that should confidently fit all of them.
    int s_MaxContactCount = 100;    void Start()
    {
        // Create and set up geometry and transform arrays.
        NativeArray<GeometryHolder> geom1 = new NativeArray<GeometryHolder>(m_NumberOfPairs, Allocator.Temp);
        NativeArray<GeometryHolder> geom2 = new NativeArray<GeometryHolder>(m_NumberOfPairs, Allocator.Temp);        // Create a box shape that is 1 meter wide on each axis, and use that to construct a GeometryHolder object.
        BoxGeometry boxShape = new BoxGeometry(new Vector3(0.5f, 0.5f, 0.5f));
        GeometryHolder box = GeometryHolder.Create(boxShape);        // Get the geometry of an existing collider.
        GeometryHolder convexMesh = m_Mesh.GeometryHolder;        NativeArray<ImmediateTransform> xForms1 = new NativeArray<ImmediateTransform>(m_NumberOfPairs, Allocator.Temp);
        NativeArray<ImmediateTransform> xForms2 = new NativeArray<ImmediateTransform>(m_NumberOfPairs, Allocator.Temp);        ImmediateTransform body1Transform = new ImmediateTransform
        {
            Position = new Vector3(0, 0, 0),
            Rotation = Quaternion.identity
        };        ImmediateTransform body2Transform = new ImmediateTransform
        {
            Position = new Vector3(0, 0.75f, 0),
            Rotation = Quaternion.Euler(new Vector3(45f, 0, 0))
        };
        // First pair is two boxes interacting.
        geom1[0] = box;
        geom2[0] = box;        xForms1[0] = body1Transform;
        xForms2[0] = body2Transform;        // Second pair is a box and a convex Mesh Collider.
        geom1[1] = convexMesh;
        geom1[2] = box;        xForms1[1] = body1Transform;
        xForms2[1] = body2Transform;        // This code re-uses the same transforms, which means that if all the bodies
        // were part of the same simulation, they would all overlap with each other. However,
        // because we are only generating contacts per pair, one pair of bodies does not affect
        // the other pairs.        // Create a place to hold the output contacts and their counts per pair.
        // There is no way to know how many contacts the shapes will generate,
        // so set a maximum value that should confidently fit all of them.
        NativeArray<ImmediateContact> contacts = new NativeArray<ImmediateContact>(s_MaxContactCount, Allocator.Temp);
        // The number of contactCounts is the same as the number of pairs.
        NativeArray<int> contactCounts = new NativeArray<int>(m_NumberOfPairs, Allocator.Temp);        // Finally, call the GenerateContacts function and put all the arrays in. 
        // Keep note of the ReadOnly status of the input arrays.        var totalContacts = ImmediatePhysics.GenerateContacts(geom1.AsReadOnly(), geom2.AsReadOnly(), xForms1.AsReadOnly(), xForms2.AsReadOnly(), m_NumberOfPairs, contacts, contactCounts);        // It is now possible to check whether there were any contacts for the pairs.
        // First, iterate over the number of input pairs defined in m_NumberOfPairs.
        int idx = 0;
        for (int i = 0; i < m_NumberOfPairs; i++)
        {
            // Iterate over the number of contacts that were generated per each pair.
            for (int j = 0; j < contactCounts[i]; j++)
            {
                // Add the contact points to a list for visualization later.
                contactPoints.Add(contacts[idx].Point);                // The number of contact points per each pair can be variable, so
                // use a separate index to keep track of which contact to retrieve.
                idx++;
            }
        }
    }
}
```
