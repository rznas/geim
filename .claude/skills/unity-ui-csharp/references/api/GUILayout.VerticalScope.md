<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.VerticalScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposable helper class for managing BeginVertical / EndVertical.

All controls rendered inside this element will be placed vertically below each other. The group is automatically closed when the scope ends.


 *Vertical Layout.*

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        // Starts a vertical group
        using (var verticalScope = new VerticalScope("box"))
        {
            GUILayout.Button("I'm the top button");
            GUILayout.Button("I'm the bottom button");
        }
        // The group is now ended
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| GUILayout.VerticalScope | Create a new VerticalScope and begin the corresponding vertical group. |
