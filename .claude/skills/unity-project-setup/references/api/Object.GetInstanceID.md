<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.GetInstanceID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** Returns the instance ID of the object.

### Description

Gets the instance ID of the object.

The instance ID of an object acts like a handle to the in-memory instance. It is always unique, and never has the value 0. Objects loaded from file will be assigned a positive Instance ID. Newly created objects will have a negative Instance ID, and retain that negative value even if the object is later saved to file. Therefore the sign of the InstanceID value is not a safe indicator for whether or not the object is persistent.

The ID changes between sessions of the player runtime and Editor. As such, the ID is not reliable for performing actions that could span between sessions, for example, loading an object state from a file.

Additional resources: EditorUtility.InstanceIDToObject, EditorUtility.IsPersistent

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Create 10 game objects, which will have random Instance IDs
    void Awake()
    {
        for (int i = 0; i < 10; i++)
        {
            GameObject go = new GameObject("abc" + i.ToString("D3"));
        }
    }    // Find all the game objects and display their Instance IDs
    void Start()
    {
        Object[] allObjects = Object.FindObjectsOfType<GameObject>();        foreach (GameObject go in allObjects)
        {
            Debug.Log(go + " is an active object " + go.GetInstanceID());
        }
    }
}
```
