<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/KeyCode.A.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

'a' key.

```csharp
//Attach this to a GameObject
//This script tells when the A arrow key is pressed down and when it is released
using UnityEngine;public class Example : MonoBehaviour
{
    void Update()
    {
        //Detect when the A arrow key is pressed down
        if (Input.GetKeyDown(KeyCode.A))
            Debug.Log("A key was pressed.");        //Detect when the A arrow key has been released
        if (Input.GetKeyUp(KeyCode.A))
            Debug.Log("A key was released.");
    }
}
```
