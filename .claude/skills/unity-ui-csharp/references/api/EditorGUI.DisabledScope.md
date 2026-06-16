<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.DisabledScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Create a group of controls that can be disabled.

If disabled is true, the controls inside the group will be disabled. If false, the enabled/disabled state will not be changed.

The group cannot be used to enable controls that would otherwise be disabled to begin with. The groups can be nested and the controls within a child group will be disabled either if that child group is itself disabled or if a parent group is.

```csharp
using UnityEditor;class ExampleClass
{
    bool canJump = false;
    float jumpHeight = 0f;    void Example()
    {
        canJump = EditorGUILayout.Toggle("Can Jump", canJump);        // Disable the jumping height control if canJump is false:
        using (new EditorGUI.DisabledScope(canJump == false))
        {
            jumpHeight = EditorGUILayout.FloatField("Jump Height", jumpHeight);
        }
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUI.DisabledScope | Create a new DisabledScope and begin the corresponding group. |
