<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.EditorConnection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handles the connection from the Editor to the Player.

Sets up events for connecting to and sending data to the Player.

This is a singleton class and can be accessed using EditorConnection.instance.

This can only be used in a class that inherits from MonoBehaviour, Object or ScriptableObject.

Set the "Autoconnect Profiler" in the Build Settings or build the Player through code with the BuildPipeline using build options: BuildOptions.ConnectToHost and BuildOptions.Development to initialize the connection.

The Player ID is used to tell multiple connected Players apart. By default, data is sent to all Players. A connected Player's ID is not guaranteed to be the same the next time it connects.

```csharp
using System;
using UnityEngine;
using UnityEditor;
using System.Text;
using UnityEditor.Networking.PlayerConnection;
using UnityEngine.Networking.PlayerConnection;public class EditorConnectionExample : EditorWindow
{
    public static readonly Guid kMsgSendEditorToPlayer = new Guid("EXAMPLEGUID");
    public static readonly Guid kMsgSendPlayerToEditor = new Guid("EXAMPLEGUID");    [MenuItem("Test/EditorConnectionExample")]
    static void Init()
    {
        EditorConnectionExample window = (EditorConnectionExample)EditorWindow.GetWindow(typeof(EditorConnectionExample));
        window.Show();
        window.titleContent = new GUIContent("EditorConnectionExample");
    }    void OnEnable()
    {
        EditorConnection.instance.Initialize();
        EditorConnection.instance.Register(kMsgSendPlayerToEditor, OnMessageEvent);
    }    void OnDisable()
    {
        EditorConnection.instance.Unregister(kMsgSendPlayerToEditor, OnMessageEvent);
        EditorConnection.instance.DisconnectAll();
    }    private void OnMessageEvent(MessageEventArgs args)
    {
        var text = Encoding.ASCII.GetString(args.data);
        Debug.Log("Message from player: " + text);
    }    void OnGUI()
    {
        var playerCount = EditorConnection.instance.ConnectedPlayers.Count;
        StringBuilder builder = new StringBuilder();
        builder.AppendLine(string.Format("{0} players connected.", playerCount));
        int i = 0;
        foreach (var p in EditorConnection.instance.ConnectedPlayers)
        {
            builder.AppendLine(string.Format("[{0}] - {1} {2}", i++, p.name, p.playerId));
        }
        EditorGUILayout.HelpBox(builder.ToString(), MessageType.Info);        if (GUILayout.Button("Send message to player"))
        {
            EditorConnection.instance.Send(kMsgSendEditorToPlayer, Encoding.ASCII.GetBytes("Hello from Editor"));
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| ConnectedPlayers | A list of the connected Players. |

### Public Methods

| Method | Description |
| --- | --- |
| DisconnectAll | Disconnects all of the active connections between the Editor and the Players. |
| Initialize | Initializes the EditorConnection. |
| Register | Registers a callback on a certain message ID. |
| RegisterConnection | Registers a callback, executed when a new Player connects to the Editor. |
| RegisterDisconnection | Registers a callback on a Player when that Player disconnects. |
| Send | Sends data to the connected Players. |
| TrySend | Attempts to send data from the Editor to the connected Players. |
| Unregister | Deregisters a registered callback. |
| UnregisterConnection | Unregisters the connection callback. |
| UnregisterDisconnection | Unregisters the disconnection callback. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| instance | Gets the instance of the Singleton. Unity creates the Singleton instance when this property is accessed for the first time. If you use the FilePathAttribute, then Unity loads the data on the first access as well. |

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Protected Methods

| Method | Description |
| --- | --- |
| Save | Saves the current state of the ScriptableSingleton. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |
| CreateInstance | Creates an instance of a scriptable object. |
| GetFilePath | Get the file path where this ScriptableSingleton is saved to. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |

### Messages

| Message | Description |
| --- | --- |
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
