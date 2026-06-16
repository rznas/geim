<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-isTrigger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is this collider configured as a trigger?

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Collider2D coll;    // Use this for initialization
    void Start()
    {
        //Check if the isTrigger option on the Collider2D is set to true or false
        if (coll.isTrigger)
        {
            Debug.Log("This Collider2D can be triggered");
        }
        else if (!coll.isTrigger)
        {
            Debug.Log("This Collider2D cannot be triggered");
        }
    }
}
```
