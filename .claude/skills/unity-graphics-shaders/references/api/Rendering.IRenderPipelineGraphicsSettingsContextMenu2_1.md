<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.IRenderPipelineGraphicsSettingsContextMenu2_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for modifying the contextual menu of a IRenderPipelineGraphicsSettings in the Inspector.

Use this interface to add your own custom commands in the contextual menu of a IRenderPipelineGraphicsSettings. The type of the IRenderPipelineGraphicsSettings affected is given by the generic argument. The menu added here will appears in the matching contextual menu in **Edit** > **Project Settings** > **Graphics**.

```csharp
using UnityEditor;
using UnityEditor.Rendering;
using UnityEngine.UIElements;struct DummyAMenu : IRenderPipelineGraphicsSettingsContextMenu2<DummyA>
{
    // The lower the priority, the higher the added command appears in the menu
    public int priority => 0;    public void PopulateContextMenu(DummyA setting, SerializedProperty _, ref GenericMenu menu)
    {
        // Add specific commands that appear when you select the contextual menu button 
        // of a DummyA in **Edit** > **Project Settings** > **Graphics**. It will not appear for other types.
        menu.AddItem("Log type", false, () => Debug.Log(settings.GetType()));
            
        // As modifications are not recommended at runtime, check
        // EditorApplication.isPlaying before modifying any data.
        if (EditorApplication.isPlaying)
            menu.AddDisabledItem("Custom Reset", false);
        else
            menu.AddItem("Custom Reset", false, () =>settings.Reset());
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| PopulateContextMenu | Populate a context menu with custom methods for your IRenderPipelineGraphicsSettings. |
