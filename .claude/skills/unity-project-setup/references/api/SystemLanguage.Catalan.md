<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemLanguage.Catalan.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the operating system's language is Catalan.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //This checks if your computer's operating system is in the Catalan language
        if (Application.systemLanguage == SystemLanguage.Catalan)
        {
            //Outputs into console that the system is Catalan
            Debug.Log("This system is in Catalan. ");
        }
    }
}
```
