<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.Instantiate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| original | An existing object that you want to make a copy of. |
| position | Position for the new object. |
| rotation | Orientation of the new object. |
| parent | Parent that will be assigned to the new object. |
| instantiateInWorldSpace | When you assign a parent Object, pass true to position the new object directly in world space. Pass false to set the Object’s position relative to its new parent. |
| parameters | A struct containing all the parameters. |

### Returns

**Object** The instantiated clone.

### Description

Clones the object `original` and returns the clone.

This function makes a copy of an object in a similar way to the Duplicate command in the editor. If you are cloning a GameObject you can specify its position and rotation (these default to the original GameObject's position and rotation otherwise). If you are cloning a Component the GameObject it is attached to is also cloned, again with an optional position and rotation.

When you clone a GameObject or Component, all child objects and components are also cloned with their properties set like those of the original object.

**Note:** When this method clones a child object, it also clones the child's own children. To prevent stack overflow, Unity limits this nested cloning. If you exceed more than half your stack size, Unity throws an `InsufficientExecutionStackException`.

By default the *parent* of the new object is null; it is not a "sibling" of the original. However, you can still set the parent using the overloaded methods. If a parent is specified and no position and rotation are specified, the original object's position and rotation are used for the cloned object's local position and rotation, or its world position and rotation if the `instantiateInWorldSpace` parameter is true. If the position and rotation are specified, they are used as the object's position and rotation in world space.

The active status of a GameObject at the time of cloning is maintained, so if the original is inactive the clone is created in an inactive state too. Additionally for the object and all child objects in the hierarchy, each of their Monobehaviours and Components will have their Awake and OnEnable methods called only if they are active in the hierarchy at the time of this method call.

For more flexibility, there are generic overrides that take an InstantiateParameters struct, allowing to pass any combination of parameters like parent, target scene or world space positions.

These methods do not create a prefab connection to the new instantiated object. Creating objects with a prefab connection can be achieved using PrefabUtility.InstantiatePrefab.

Additional resources:

Instantiating prefabs at run time
 PrefabUtility.InstantiatePrefab

```csharp
// Instantiates 10 copies of Prefab each 2 units apart from each otherusing UnityEngine;public class Example : MonoBehaviour
{
    public GameObject prefab;
    void Start()
    {
        for (var i = 0; i < 10; i++)
        {
            Instantiate(prefab, new Vector3(i * 2.0f, 0, 0), Quaternion.identity);
        }
    }
}
```

Instantiate can be used to create new objects at runtime. Examples include objects used for projectiles, or particle systems for explosion effects.

```csharp
using UnityEngine;// Instantiate a rigidbody then set the velocitypublic class Example : MonoBehaviour
{
    // Assign a Rigidbody component in the inspector to instantiate    public Rigidbody projectile;    void Update()
    {
        // Ctrl was pressed, launch a projectile
        if (Input.GetButtonDown("Fire1"))
        {
            // Instantiate the projectile at the position and rotation of this transform
            Rigidbody clone;
            clone = Instantiate(projectile, transform.position, transform.rotation);            // Give the cloned object an initial velocity along the current
            // object's Z axis
            clone.velocity = transform.TransformDirection(Vector3.forward * 10);
        }
    }
}
```

Instantiate can also clone script instances directly. The entire game object hierarchy will be cloned and the cloned script instance will be returned.

```csharp
using UnityEngine;
using System.Collections;public class Missile : MonoBehaviour
{
    public int timeoutDestructor;    // ...other code...
}
public class ExampleClass : MonoBehaviour
{
    // Instantiate a Prefab with an attached Missile script
    public Missile projectile;    void Update()
    {
        // Ctrl was pressed, launch a projectile
        if (Input.GetButtonDown("Fire1"))
        {
            // Instantiate the projectile at the position and rotation of this transform
            Missile clone = Instantiate(projectile, transform.position, transform.rotation);            // Set the missiles timeout destructor to 5
            clone.timeoutDestructor = 5;
        }
    }
}
```

After cloning an object you can also use GetComponent to set properties on a specific component attached to the cloned object.

### Parameters

| Parameter | Description |
| --- | --- |
| original | Object of type T that you want to clone. |

### Returns

**T** Object of type T.

### Description

You can also use Generics to instantiate objects. See the Generic Functions page for more details.

By using Generics we don't need to cast the result to a specific type.

```csharp
using UnityEngine;public class Missile : MonoBehaviour
{
    // ...other code...
}public class InstantiateGenericsExample : MonoBehaviour
{
    public Missile missile;    void Start()
    {
        Missile missileCopy = Instantiate<Missile>(missile);
    }
}
```
