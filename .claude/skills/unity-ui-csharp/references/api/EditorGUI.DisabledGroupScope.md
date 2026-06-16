<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.DisabledGroupScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Create a group of controls that can be disabled.

If disabled is true, the controls inside the group will be disabled. If false, the enabled/disabled state will not be changed.

The group cannot be used to enable controls that would otherwise be disabled to begin with. The groups can be nested and the controls within a child group will be disabled both if that child group is itself disabled or if a parent group is.

Note: For memory efficiency, the use of struct DisabledScope is preferred over class EditorGUI.DisabledGroupScope. Please refer to the DisabledScope documentation for more information.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleClass : MonoBehaviour
{
    bool canJump = false;
    float jumpHeight = 0f;    void Example()
    {
        canJump = EditorGUILayout.Toggle("Can Jump", canJump);        // Disable the jumping height control if canJump is false:
        using (new EditorGUI.DisabledGroupScope(canJump == false))
        {
            jumpHeight = EditorGUILayout.FloatField("Jump Height", jumpHeight);
        }
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUI.DisabledGroupScope | Create a new DisabledGroupScope and begin the corresponding group. |
