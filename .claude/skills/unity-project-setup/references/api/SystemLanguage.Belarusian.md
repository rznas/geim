<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemLanguage.Belarusian.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the operating system's language is Belarusian.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //This checks if your computer's operating system is in the Belarusian language
        if (Application.systemLanguage == SystemLanguage.Belarusian)
        {
            //Outputs into console that the system is Belarusian
            Debug.Log("This system is in Belarusian. ");
        }
    }
}
```
