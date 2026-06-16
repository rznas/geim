<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The GUILayout class is the interface for Unity gui with automatic layout. Unlike the standard GUI class which requires manual coordinates, GUILayout arranges controls based on their content and container.

```csharp
// This example creates a simple UI using the IMGUI system.
using UnityEngine;public class Example : MonoBehaviour
{
    private string playerName = "";
    private int playerAge = 0;    void OnGUI()
    {
        // Begin a horizontal group
        GUILayout.BeginHorizontal();        // Add GUI elements that will be arranged horizontally
        GUILayout.Label("Name: ", GUILayout.Width(50));
        playerName = GUILayout.TextField(playerName, GUILayout.Width(100));        GUILayout.Label("Age: ", GUILayout.Width(40));
        playerAge = int.Parse(GUILayout.TextField(playerAge.ToString(), GUILayout.Width(30)));        // End the horizontal group
        GUILayout.EndHorizontal();
    }
}
```

Additional resources: GUI Layout tutorial.

### Static Methods

| Method | Description |
| --- | --- |
| BeginArea | Begin a GUILayout block of GUI controls in a fixed screen area. |
| BeginHorizontal | Begin a Horizontal control group. |
| BeginScrollView | Begin an automatically laid out scrollview. |
| BeginVertical | Begin a vertical control group. |
| Box | Make an auto-layout box. |
| Button | Make a single press button. |
| EndArea | Close a GUILayout block started with BeginArea. |
| EndHorizontal | Close a group started with BeginHorizontal. |
| EndScrollView | End a scroll view begun with a call to BeginScrollView. |
| EndVertical | Close a group started with BeginVertical. |
| ExpandHeight | Option passed to a control to allow or disallow vertical expansion. |
| ExpandWidth | Option passed to a control to allow or disallow horizontal expansion. |
| FlexibleSpace | Insert a flexible space element. |
| Height | Option passed to a control to give it an absolute height. |
| HorizontalScrollbar | Make a horizontal scrollbar. |
| HorizontalSlider | A horizontal slider the user can drag to change a value between a min and a max. |
| Label | Make an auto-layout label. |
| MaxHeight | Option passed to a control to specify a maximum height. |
| MaxWidth | Option passed to a control to specify a maximum width. |
| MinHeight | Option passed to a control to specify a minimum height. |
| MinWidth | Option passed to a control to specify a minimum width. |
| PasswordField | Make a text field where the user can enter a password. |
| RepeatButton | Make a repeating button. The button returns true as long as the user holds down the mouse. |
| SelectionGrid | Make a Selection Grid. |
| Space | Insert a space in the current layout group. |
| TextArea | Make a multi-line text field where the user can edit a string. |
| TextField | Make a single-line text field where the user can edit a string. |
| Toggle | Make an on/off toggle button. |
| Toolbar | Make a toolbar. |
| VerticalScrollbar | Make a vertical scrollbar. |
| VerticalSlider | A vertical slider the user can drag to change a value between a min and a max. |
| Width | Option passed to a control to give it an absolute width. |
| Window | Make a popup window that layouts its contents automatically. |
