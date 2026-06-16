<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-levelCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total number of levels available (Read Only).

```csharp
using UnityEngine;class Example : MonoBehaviour
{
    void Start()
    {
        //Loads a random level
        Application.LoadLevel(Random.Range(0, Application.levelCount - 1));
    }
}
```
