<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.HorizontalScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposable helper class for managing BeginHorizontal / EndHorizontal.

All controls rendered inside this element will be placed horizontally next to each other. The `using` statement means BeginHorizontal and EndHorizontal are not needed.


 *Horizontal Layout.*

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        // Starts a horizontal group
        using (var horizontalScope = new GUILayout.HorizontalScope("box"))
        {
            GUILayout.Button("I'm the first button");
            GUILayout.Button("I'm to the right");
        }
        // Now the group is ended.
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| GUILayout.HorizontalScope | Create a new HorizontalScope and begin the corresponding horizontal group. |
