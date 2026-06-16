<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision2D-transform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Transform of the incoming object involved in the collision.

Additional resources: Transform class.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnCollisionEnter2D(Collision2D collision2D)
    {
        //If the object we collided with was an Asteroid.
        if (collision2D.transform.name == "Asteroid")
        {
            //Sets this object as the new parent of the Transform of the object involved in the collision.
            collision2D.transform.SetParent(gameObject.transform);
        }
    }
}
```
