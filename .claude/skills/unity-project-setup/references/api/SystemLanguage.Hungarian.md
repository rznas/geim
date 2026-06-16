<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemLanguage.Hungarian.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the operating system's language is Hungarian.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //This checks if your computer's operating system is in the Hungarian language
        if (Application.systemLanguage == SystemLanguage.Hungarian)
        {
            //Outputs into console that the system is Hungarian
            Debug.Log("This system is in Hungarian. ");
        }
    }
}
```
