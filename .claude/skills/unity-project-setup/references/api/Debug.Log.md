<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug.Log.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| message | String or object to be converted to string representation for display. |
| context | Object to which the message applies. |

### Description

Logs a message to the Unity Console.

Use Debug.Log to print informational messages that help you debug your application. For example, you could print a message containing a GameObject.name and information about the object’s current state.

You can format messages with string concatenation:
 `Debug.Log("Text: " + myText.text);`

You can also use Rich Text markup.

If you pass a GameObject or Component as the optional `context` parameter, Unity momentarily highlights that object in the `Hierarchy` window when you click the log message in the `Console`. Use a `context` object when you have many instances of an object in a Scene so that you can identify which one produced the message. `Example 2`, below, illustrates how this feature works. When you run this example, first click one of the cubes it creates in the Scene. The example prints a log message to the `Console`. When you click on the message, Unity highlights the `context` object in the `Hierarchy` window — in this case, the cube you clicked on in the Scene.

Example 1: Show some uses of Debug.Log:

```csharp
using UnityEngine;
using System.Collections;public class MyGameClass : MonoBehaviour
{
    // A Light used in the Scene and needed by MyGameMethod().
    public Light light;    void MyGameMethod()
    {
        // Message with a GameObject name.
        Debug.Log("Hello: " + gameObject.name);        // Message with light type. This is an Object example.
        Debug.Log(light.type);        // Message using rich text.
        Debug.Log("<color=red>Error: </color>AssetBundle not found");
    }
}
```

Example 2: Show selection of a clicked GameObject:

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;// Debug.Log example
//
// Create three cubes. Place them around the world origin.
// If a cube is clicked use Debug.Log to announce it. Use
// Debug.Log with two arguments. Argument two allows the
// cube to be automatically selected in the hierarchy when
// the console message is clicked.
//
// Add this script to an empty GameObject.public class Example : MonoBehaviour
{
    private GameObject[] cubes;    void Awake()
    {
        // Create three cubes and place them close to the world space center.
        cubes = new GameObject[3];
        float f = 25.0f;
        float p = -2.0f;
        float[] z = new float[] {0.5f, 0.0f, 0.5f};        for (int i = 0; i < 3; i++)
        {
            // Position and rotate each cube.
            cubes[i] = GameObject.CreatePrimitive(PrimitiveType.Cube);
            cubes[i].name = "Cube" + (i + 1).ToString();
            cubes[i].transform.Rotate(0.0f, f, 0.0f);
            cubes[i].transform.position = new Vector3(p, 0.0f, z[i]);
            f -= 25.0f;
            p = p + 2.0f;
        }        // Position and rotate the camera to view all three cubes.
        Camera.main.transform.position = new Vector3(3.0f, 1.5f, 3.0f);
        Camera.main.transform.localEulerAngles = new Vector3(25.0f, -140.0f, 0.0f);
    }    void Update()
    {
        // Process a mouse button click.
        if (Input.GetMouseButtonDown(0))
        {
            var ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;            if (Physics.Raycast(ray, out hit))
            {
                // Visit each cube and determine if it has been clicked.
                for (int i = 0; i < 3; i++)
                {
                    if (hit.collider.gameObject == cubes[i])
                    {
                        // This cube was clicked.
                        Debug.Log("Hit " + cubes[i].name, cubes[i]);
                    }
                }
            }
        }
    }
}
```

Note: Unity also adds Debug.Log messages to the Editor and Player log files. For more information about accessing these files on different platforms, refer to Log files reference.

Additional resources: MonoBehaviour.print.
