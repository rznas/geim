<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemLanguage.Russian.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the operating system's language is Russian.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //This checks if your computer's operating system is in the Russian language
        if (Application.systemLanguage == SystemLanguage.Russian)
        {
            //Outputs into console that the system is Russian
            Debug.Log("This system is in Russian. ");
        }
    }
}
```
