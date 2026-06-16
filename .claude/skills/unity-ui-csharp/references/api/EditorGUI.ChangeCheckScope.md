<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.ChangeCheckScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Check if any control was changed inside a block of code.

When needing to check if GUI.changed is set to true inside a block of code, wrap the code inside a ChangeCheckScope like this:

```csharp
using UnityEditor;class ExampleClass
{
    void ExampleMethod()
    {
        using (var check = new EditorGUI.ChangeCheckScope())
        {
            // Block of code with controls
            // that may set GUI.changed to true            if (check.changed)
            {
                // Code to execute if GUI.changed
                // was set to true inside the block of code above.
            }
        }
    }
}
```

Additional resources: EditorGUI.BeginChangeCheck.

### Properties

| Property | Description |
| --- | --- |
| changed | True if GUI.changed was set to true, otherwise false. |

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUI.ChangeCheckScope | Begins a ChangeCheckScope. |
