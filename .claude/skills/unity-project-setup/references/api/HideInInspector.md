<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HideInInspector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags a variable to not appear in the Inspector.

By default, a serialized variable automatically appears in the Inspector, even if the variable is private. A variable with this attribute can be serialized and not display in the Inspector.

 Additional resources: SerializedObject.forceChildVisibility, SerializedProperty.NextVisible, SerializedProperty.hasVisibleChildren.

```csharp
using UnityEngine;public class HideInInspectorExample : MonoBehaviour
{
    // All these fields are serialized, but only c is visible in the inspector
    [HideInInspector]
    public int a = 5;    [HideInInspector, SerializeField]
    private int b = 3;    [SerializeField]
    private int c = 3;
}
```
