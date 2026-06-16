<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.PlayerConnectionGUIUtility.GetConnectionState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| parentWindow | The EditorWindow that will use the connection. |
| connectedCallback | A callback that is fired whenever a user-initiated connection-attempt succeeds. |

### Returns

**IConnectionState** Returns the unserialized state of the connection to a Player, which is used in PlayerConnectionGUI.ConnectionTargetSelectionDropdown or PlayerConnectionGUILayout.ConnectionTargetSelectionDropdown. The returned connection state object contains information on what target is connected to the Player, and what targets are available.

### Description

This method generates a state tracking object for establishing and displaying an Editor to Player Connection.

This state and the corresponding GUI Methods (PlayerConnectionGUI.ConnectionTargetSelectionDropdown and PlayerConnectionGUILayout.ConnectionTargetSelectionDropdown) are supposed to be used from within an EditorWindow. The supplied Editor Window is used to: 1. Display an overlay while connecting 2. Repaint the window after a connection has been established 3. Receive callback calls through connectedCallback when other windows using the same connection type establish a connection Technically, it might be possible to supply parentWindow as null and use it outside of EditorWindow, but that is neither recommended nor a use-case we plan to support.

Also keep in mind that the received state is not serialized and needs to be disposed. The recommended use pattern is to get the state in the EditorWindow's OnEnable and to dispose of it in OnDisable.

The connectedCallback will not be fired if, for example, the connection was made by automatically establishing a profiler connection to a Player or falling back on to the connection to the Editor. Instead, it only responds to a user actively choosing a target, and waits until that connection has been established. If the connection type is one that is shared across Editor windows, it will also be fired when the user chooses it in a different EditorWindow.

The returned state knows what target is currently connected and what targets are available.

```csharp
using UnityEngine;
using UnityEngine.Profiling;
using UnityEditor;
using UnityEngine.Networking.PlayerConnection;
using UnityEditor.Networking.PlayerConnection;public class MyWindow : EditorWindow
{
    // The state can survive for the life time of the EditorWindow so it's best to store it here and just renew/dispose of it in OnEnable and OnDisable, rather than fetching repeatedly it in OnGUI.
    IConnectionState attachProfilerState;    [MenuItem("Window/My Window")]
    static void Init()
    {
        MyWindow window = (MyWindow)GetWindow(typeof(MyWindow));
        window.Show();
    }    private void OnEnable()
    {
        // The state of the connection is not getting serialized and needs to be disposed
        // Therefore, it's recommended to fetch it in OnEnable and call dispose on it in OnDisable
        attachProfilerState = PlayerConnectionGUIUtility.GetConnectionState(this, OnConnected);
    }    private void OnConnected(string player)
    {
        Debug.Log(string.Format("MyWindow connected to {0}", player));
    }    private void OnGUI()
    {
        // Draw a toolbar across the top of the window and draw the drop-down in the toolbar drop-down style too
        EditorGUILayout.BeginHorizontal(EditorStyles.toolbar);
        PlayerConnectionGUILayout.ConnectionTargetSelectionDropdown(attachProfilerState, EditorStyles.toolbarDropDown);        switch (attachProfilerState.connectedToTarget)
        {
            case ConnectionTarget.None:
                //This case can never happen within the Editor, since the Editor will always fall back onto a connection to itself.
                break;
            case ConnectionTarget.Player:
                Profiler.enabled = GUILayout.Toggle(Profiler.enabled, string.Format("Profile the attached Player ({0})", attachProfilerState.connectionName), EditorStyles.toolbarButton);
                break;
            case ConnectionTarget.Editor:
                // The name of the Editor or the PlayMode Player would be "Editor" so adding the connectionName here would not add anything.
                Profiler.enabled = GUILayout.Toggle(Profiler.enabled, "Profile the Player in the Editor", EditorStyles.toolbarButton);
                break;
            default:
                break;
        }
        EditorGUILayout.EndHorizontal();
    }    private void OnDisable()
    {
        // Remember to always dispose the state!
        attachProfilerState.Dispose();
    }
}
```
