<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.PropertyCallbackScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies a scope in which a callback gets called before each property is rendered.

Defines a scope in which a callback function is set to be called before each property is rendered.

 Additional resources: BeginPropertyScope.

```csharp
using UnityEngine;
using UnityEditor;class MyEditor : EditorWindow
{
    void OnGUI()
    {
        using (var s = new EditorGUIUtility.PropertyCallbackScope((rect, property) => { Debug.Log($"About to draw property path {property.propertyPath}"); }))
        {
            // Block of code with controls
        }
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUIUtility.PropertyCallbackScope | Begin an PropertyCallbackScope. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Releases the callback. |
