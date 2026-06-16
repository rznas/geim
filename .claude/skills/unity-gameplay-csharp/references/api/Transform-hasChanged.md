<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform-hasChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Has the transform changed since the last time the flag was set to 'false'?

A change to the transform can be anything that can cause its matrix to be recalculated: any adjustment to its position, rotation, or scale, or a change in any of its parents. Operations that can change the transform don't check if newer values differ from the previous ones before setting this flag. Setting `transform.position`, for example, always sets `hasChanged` on the transform, regardless of there being any actual change.

When the object is instantiated, the position is assigned, which sets this flag to 'true'. Unity never sets it to 'false', so you have to set it to 'false' yourself if needed. You can then check this flag to determine if the object's transform has changed since the last time you set it to 'false'.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        //Checking if any change happened
        if (transform.hasChanged)
        {
            print("The transform has changed!");            //Reset the flag to start detecting change from this moment
            transform.hasChanged = false;
        }
    }
}
```
