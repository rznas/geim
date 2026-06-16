<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.IRenderPipelineGraphicsSettingsContextMenu_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows to modify the contextual menu of IRenderPipelineGraphicsSettings in the inspector.

```csharp
using UnityEditor;
using UnityEditor.Rendering;
using UnityEngine.UIElements;struct DummyAMenu : IRenderPipelineGraphicsSettingsContextMenu<DummyA>
{
    public int priority => 0;    static void Increment(DummyA a) => a.myInt++;    public void PopulateContextMenu(DummyA setting, PropertyDrawer _, ref GenericDropdownMenu menu)
    {
        if (!EditorApplication.isPlaying)
            menu.AddItem("Try Increment", false, () => Increment(setting));
        else
            menu.AddDisabledItem("Try Increment", false);
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| PopulateContextMenu | Allows to populate context menu with custom methods for your IRenderPipelineGraphicsSettings. |
