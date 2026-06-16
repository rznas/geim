<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.AdvancedDropdown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Inherit from this class to implement your own drop-down control.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEditor.IMGUI.Controls;class WeekdaysDropdown : AdvancedDropdown
{
    public WeekdaysDropdown(AdvancedDropdownState state) : base(state)
    {
    }    protected override AdvancedDropdownItem BuildRoot()
    {
        var root = new AdvancedDropdownItem("Weekdays");        var firstHalf = new AdvancedDropdownItem("First half");
        var secondHalf = new AdvancedDropdownItem("Second half");
        var weekend = new AdvancedDropdownItem("Weekend");        firstHalf.AddChild(new AdvancedDropdownItem("Monday"));
        firstHalf.AddChild(new AdvancedDropdownItem("Tuesday"));
        secondHalf.AddChild(new AdvancedDropdownItem("Wednesday"));
        secondHalf.AddChild(new AdvancedDropdownItem("Thursday"));
        weekend.AddChild(new AdvancedDropdownItem("Friday"));
        weekend.AddChild(new AdvancedDropdownItem("Saturday"));
        weekend.AddChild(new AdvancedDropdownItem("Sunday"));        root.AddChild(firstHalf);
        root.AddChild(secondHalf);
        root.AddChild(weekend);        return root;
    }
}public class AdvancedDropdownTestWindow : EditorWindow
{
    void OnGUI()
    {
        var rect = GUILayoutUtility.GetRect(new GUIContent("Show"), EditorStyles.toolbarButton);
        if (GUI.Button(rect, new GUIContent("Show"), EditorStyles.toolbarButton))
        {
            var dropdown = new WeekdaysDropdown(new AdvancedDropdownState());
            dropdown.Show(rect);
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| minimumSize | Minimum size of the drop-down window. By default, the drop-down will try to match the width of the given rect or the rendered content. |

### Public Methods

| Method | Description |
| --- | --- |
| Show | Call this method to show the drop-down at the given position. |

### Protected Methods

| Method | Description |
| --- | --- |
| BuildRoot | Implement this method to generate the content of the drop-down. This method is called when the drop-down is being shown. |
| ItemSelected | Override this method to get notified when an item is selected. |
