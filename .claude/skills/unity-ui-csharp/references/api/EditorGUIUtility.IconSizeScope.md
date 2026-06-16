<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.IconSizeScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposable scope helper for GetIconSize / SetIconSize.

Set icons rendered as part of [[GUIContent], and within this scope, to render at a specific size.

Additional resources: GetIconSize. Additional resources: SetIconSize.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleClass : MonoBehaviour
{
    void ExampleMethod()
    {
        var myIconSize = new Vector2(16, 16);
        using (new EditorGUIUtility.IconSizeScope(myIconSize))
        {
            // Block of code that renders icons as part of GUIContent
            // Icons rendered here use myIconSize
        }
        // Here, the code now reverts to original icon size
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUIUtility.IconSizeScope | Begin an IconSizeScope. |
