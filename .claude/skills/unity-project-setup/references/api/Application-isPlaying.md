<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-isPlaying.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true when called in any kind of built Player, or when called in the Editor in Play mode (Read Only).

In a built Player, this method always returns true.

In the Editor, it returns true if the Editor is in Play mode.

Unity might throw an exception when `Application.isPlaying` is accessed in the class constructor or its value is assigned to a variable.

**Note**: In the Editor for ScriptableObject assets, this property returns false in OnEnable. After reloading the domain, when reloading assemblies, Unity invokes OnEnable on all ScriptableObject instances. This happens before isPlaying is set to true.

Additional resources: Application.IsPlaying, ExecuteAlways.

```csharp
using UnityEngine;class Example : MonoBehaviour
{
    void Start()
    {
        if (Application.isPlaying)
        {
            print("In player or playmode");
        }
    }
}
```
