<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemLanguage.SerboCroatian.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the operating system's language is Serbo-Croatian.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //This checks if your computer's operating system is in the Serbo-Croatian language
        if (Application.systemLanguage == SystemLanguage.SerboCroatian)
        {
            //Outputs into console that the system is Serbo-Croatian
            Debug.Log("This system is in Serbo-Croatian. ");
        }
    }
}
```
