<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Toolbars.MainToolbarSlider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A slider element for the main toolbar.

Return an instance of this class through a static method registered with MainToolbarElementAttribute to add a slider element in the main toolbar.

```csharp
using UnityEditor;
using UnityEditor.Toolbars;
using UnityEngine;

public class MainToolbarSliderExample
{
    const float k_MinTimeScale = 0f;
    const float k_MaxTimeScale = 10f;

    [MainToolbarElement("Examples/Slider", defaultDockPosition = MainToolbarDockPosition.Middle)]
    public static MainToolbarElement TimeSlider()
    {
        var content = new MainToolbarContent("Time Scale", "Time Scale");
        return new MainToolbarSlider(content, Time.timeScale, k_MinTimeScale, k_MaxTimeScale, OnSliderValueChanged);
    }
    static void OnSliderValueChanged(float newValue)
    {
        Time.timeScale = newValue;
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| MainToolbarSlider | Specify the content and function of a main toolbar slider. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| content | The MainToolbarContent describes the content of a main toolbar element. For example, text, icon, or tooltip. |
| displayed | Specifies whether the `VisualElement` for this toolbar element should be displayed or not. Set to `True` by default. |
| enabled | Specifies whether a toolbar element should receive input events. Set to `True` by default. |
| populateContextMenu | Add content to the context menu that appears when you right-click this toolbar element. |
