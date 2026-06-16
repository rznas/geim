<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.NextPowerOfTwo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the next power of two that is equal to, or greater than, the argument.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        //Prints 8 to the console
        Debug.Log(Mathf.NextPowerOfTwo(7));        //Prints 256 to the console
        Debug.Log(Mathf.NextPowerOfTwo(139));        //Prints 256 to the console
        Debug.Log(Mathf.NextPowerOfTwo(256));
    }
}
```
