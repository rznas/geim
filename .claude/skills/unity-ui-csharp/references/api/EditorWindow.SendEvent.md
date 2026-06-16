<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.SendEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sends an Event to a window.

The SendEvent public function passes a selected Event to a chosen visible window. The Event can be found in the EventType list.
 
 In the following scripts `SendEventExample` looks up the `ReceiveEventExample` window. A `Paste` event is then sent over when the button is pressed.

```csharp
// Send an event to another editor window. The second
// window needs to be visible to receive the event.

using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class SendEventExample : EditorWindow
{
    [MenuItem("Examples/Send Event")]
    static void Init()
    {
        SendEventExample window =
            EditorWindow.GetWindow<SendEventExample>(true, "Send Event Window");
        window.Show();
    }

    void CreateGUI()
    {
        var buttonSendEvent = new Button();
        buttonSendEvent.text = "Send Event";
        buttonSendEvent.clicked += () =>
        {
            EditorWindow win = GetWindow<ReceiveEventExample>();
            if (win)
                using (var commandEvent = ExecuteCommandEvent.GetPooled(EditorGUIUtility.CommandEvent("Paste")))
                {
                    win.rootVisualElement.SendEvent(commandEvent);
                }
        };
        rootVisualElement.Add(buttonSendEvent);
    }
}
```

```csharp
// An Editor window that receives sent events.

using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class ReceiveEventExample : EditorWindow
{
    [MenuItem("Examples/Receive Events")]
    static void Init()
    {
        ReceiveEventExample window =
            EditorWindow.GetWindow<ReceiveEventExample>(true, "Receive Events Window");
        window.Show();
    }

    void CreateGUI()
    {
        var button = new Button();
        button.text = "Button";
        rootVisualElement.Add(button);

        rootVisualElement.RegisterCallback<ExecuteCommandEvent>(evt =>
        {
            if (evt.commandName == "Paste")
                button.text = "Paste received";
        }, TrickleDown.TrickleDown);
    }
}
```
