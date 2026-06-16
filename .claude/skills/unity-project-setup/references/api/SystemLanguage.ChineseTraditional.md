<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemLanguage.ChineseTraditional.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the operating system's language is ChineseTraditional.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //This checks if your computer's operating system is in the Traditional Chinese language
        if (Application.systemLanguage == SystemLanguage.ChineseTraditional)
        {
            //Outputs into console that the system is in Traditional Chinese
            Debug.Log("This system is in Traditional Chinese. ");
        }
    }
}
```
