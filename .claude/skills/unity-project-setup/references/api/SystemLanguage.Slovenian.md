<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemLanguage.Slovenian.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the operating system's language is Slovenian.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //This checks if your computer's operating system is in the Slovenian language
        if (Application.systemLanguage == SystemLanguage.Slovenian)
        {
            //Outputs into console that the system is Slovenian
            Debug.Log("This system is in Slovenian. ");
        }
    }
}
```
