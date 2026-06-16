<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Space.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The coordinate spaces in which to apply transformation to a GameObject.

You can pass a value from this enum as a parameter to methods such as Transform.Rotate and Transform.Translate to specify which coordinate space the transformation is applied in.

 World coordinate space represented by Space.World refers to the position of a GameObject relative to the origin point (0,0,0) of the x-, y-, and z-axes of the scene. The Transform.position property gives a GameObject's current position in world space.

 Use Space.World to transform a GameObject relative to its Transform.position and the scene axes, ignoring the GameObject's own orientation. For example, `transform.Translate(Vector3.forward, Space.World)` adds one unit to the object's Transform.position on the z-axis of the scene.

 Local coordinate space represented by Space.Self refers to the position of an object relative to its parent GameObject, including any rotation of the parent GameObject. The Transform.localPosition property gives a GameObject's current position in local space, which is relative to the parent GameObject if there is one. If a GameObject has no parent, its Transform.localPosition is the same as its Transform.position.

 For example, a GameObject with no parent and a Transform.position of (1,3,0) will also have a Transform.localPosition of (1,3,0). But if a child GameObject to this first object has Transform.position (1,3,0), the child object's Transform.localPosition is (0,0,0) because it's in the same position as the parent object.

 Use Space.Self to transform a GameObject relative to its Transform.localPosition and its own local axes, taking its orientation into account. For example, `Transform.Translate(Vector3.forward, Space.Self)` adds one unit to the object's Transform.localPosition on the z-axis of the object, which may differ from the z-axis of the scene depending on the object's orientation. Select an object in the Scene view to see its local position and axes.

 For more information, refer to Transforms, Rotation and orientation in Unity, and Position GameObjects in the Manual.

```csharp
// Attach this script to a GameObject.
// This example demonstrates the difference between Space.World and Space.Self in rotation.
// The inWorldSpace field is automatically exposed as a checkbox in the Inspector window labelled In World Space. Enable or disable the checkbox in the Inspector to start in world or self space, respectively.
// Press play to see the GameObject rotating appropriately. Press space or toggle the In World Space checkbox to switch between world and self space.using UnityEngine;public class Example : MonoBehaviour
{
    float rotationSpeed;
    public bool inWorldSpace;    void Start()
    {
        // Set the speed of the rotation
        rotationSpeed = 20.0f;
        // Start off in World.Space
        inWorldSpace = true;
        // Rotate the GameObject a little at the start to show the difference between world and local spaces
        transform.Rotate(60, 0, 60);
    }    void Update()
    {
        // Rotate the GameObject in world space if inWorldSpace is true
        if (inWorldSpace)
            transform.Rotate(Vector3.up * rotationSpeed * Time.deltaTime, Space.World);
        // Otherwise, rotate the GameObject in local space
        else
            transform.Rotate(Vector3.up * rotationSpeed * Time.deltaTime, Space.Self);        // Press the Space button to switch between world and local space states
        if (Input.GetKeyDown(KeyCode.Space))
        {
            // Make the current state switch to the other state
            inWorldSpace = !inWorldSpace;
            // Output the current state to the console
            Debug.Log("World space : " + inWorldSpace.ToString());
        }
    }
}
```

Additional resources: Transform, Transform.Rotate, Transform.Translate.

### Properties

| Property | Description |
| --- | --- |
| World | World coordinate space, relative to the origin point (0,0,0) of the x-, y-, and z-axes of the scene. |
| Self | The local coordinate system of a GameObject relative to its parent, including orientation. |
