<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform-position.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The world space position of the Transform.

The position property of a GameObject’s Transform, which is accessible in the Unity Editor and through scripts. Alter this value to move a GameObject. Get this value to locate the GameObject in 3D world space.

For more information about the position and axis, refer to class-Transform.

You need to instantiate the object in the scene so that it can move on change. Prefab assets are still GameObject, but they are not instantiated. For this reason, Unity doesn't use the data from the Transform position of the root asset of the Prefab hierarchy.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    //movement speed in units per second
    private float movementSpeed = 5f;    void Update()
    {
        //get the Input from Horizontal axis
        float horizontalInput = Input.GetAxis("Horizontal");
        //get the Input from Vertical axis
        float verticalInput = Input.GetAxis("Vertical");        //update the position
        transform.position = transform.position + new Vector3(horizontalInput * movementSpeed * Time.deltaTime, verticalInput * movementSpeed * Time.deltaTime, 0);        //output to log the position change
        Debug.Log(transform.position);
    }
}
```

This example gets the Input from Horizontal and Vertical axes and moves the GameObject up/down or left/right by changing its position.

Another example:

```csharp
using UnityEngine;public class ExampleClass2 : MonoBehaviour
{
    //movement speed in units per second
    private float distance = 5f;
    public GameObject prefabToInstantiate;    void Start()
    {
        if (prefabToInstantiate != null)
            InstantiateAbove(prefabToInstantiate);
    }    void InstantiateAbove(GameObject prefab)
    {
        //instantiate above at the given distance
        Vector3 offset = new Vector3(0, distance, 0);
        GameObject.Instantiate(prefab, transform.position + offset, Quaternion.identity);
    }
}
```

This example instantiates the given prefab 5 units above the position of the GameObject using this script.
