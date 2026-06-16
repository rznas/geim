<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-isEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the game is running inside the Unity Editor (Read Only).

Returns true if the game is being run from the Unity Editor; false if run from any deployment target.

```csharp
using UnityEngine;class Example : MonoBehaviour
{
    void Start()
    {
        if (Application.isEditor)
        {
            print("We are running this from inside of the editor!");
        }
    }
}
```
