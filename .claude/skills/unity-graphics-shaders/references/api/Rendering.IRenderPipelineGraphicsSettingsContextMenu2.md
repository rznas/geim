<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.IRenderPipelineGraphicsSettingsContextMenu2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for modifying the contextual menu of all IRenderPipelineGraphicsSettings in the Inspector.

Use this interface to add your own custom commands in the contextual menu of all IRenderPipelineGraphicsSettings. The menu added here will appears in each contextual menu in **Edit** > **Project Settings** > **Graphics**.

```csharp
using UnityEditor;
using UnityEditor.Rendering;
using UnityEngine.UIElements;struct DummyMenuForAll : IRenderPipelineGraphicsSettingsContextMenu2
{
    // The lower the priority, the higher the added command appears in the menu
    public int priority => 0;
        
    public void PopulateContextMenu(IRenderPipelineGraphicsSettings setting, SerializedProperty _, ref GenericMenu menu)
    {
        // Add specific commands that appear when you select the contextual menu button 
        // of all IRenderPipelineGraphicsSettings in Edit > Project Settings > Graphics. 
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

### Properties

| Property | Description |
| --- | --- |
| priority | Priority for sorting the added commands in the contextual menu among the other commands. |

### Public Methods

| Method | Description |
| --- | --- |
| PopulateContextMenu | Populate a context menu with custom methods for all IRenderPipelineGraphicsSettings. |
