<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.RemoveNotification.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stop showing notification message.

Notification message fades away automatically after some time. This function will remove it immediately.


 *Show a notification in an editor window.*

```csharp
// Simple example that shows a notification message
// that the user has typed.

using UnityEditor;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.UIElements;

public class NotificationWindow : EditorWindow
{

    string notification = "This is a notification";

    [MenuItem("Examples/Notification Window")]
    public static void ShowExample()
    {
        NotificationWindow wnd = GetWindow<NotificationWindow>();
        wnd.titleContent = new GUIContent("Notification Window");
    }

    public void CreateGUI()
    {
        // Create button to show notification
        Button showNotification = new Button();
        showNotification.text = "Show!";
        showNotification.clicked += () =>
        {
            this.ShowNotification(new GUIContent(notification));
        };

        rootVisualElement.Add(showNotification);

        // Create button to remove notification
        Button removeNotification = new Button();
        removeNotification.text = "Remove!";
        removeNotification.clicked += () =>
        {
            this.RemoveNotification();
        };

        rootVisualElement.Add(removeNotification);
    }
}
```
