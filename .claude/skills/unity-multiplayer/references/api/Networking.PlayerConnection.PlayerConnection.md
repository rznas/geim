<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.PlayerConnection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used for handling the network connection from the Player to the Editor.

Sets up events for connecting to and sending data to the Editor.

This can only be used in a class that inherits from MonoBehaviour, Object or ScriptableObject.

### Static Properties

| Property | Description |
| --- | --- |
| instance | Returns a singleton instance of a PlayerConnection. |

### Properties

| Property | Description |
| --- | --- |
| isConnected | Returns true when the Editor is connected to the Player. |

### Public Methods

| Method | Description |
| --- | --- |
| BlockUntilRecvMsg | Blocks the calling thread until either a message with the specified messageId is received or the specified time-out elapses. |
| DisconnectAll | This disconnects all of the active connections. |
| Register | Registers a listener for a specific message ID, with an Action to be executed whenever that message is received by the Editor. This ID must be the same as for messages sent from EditorConnection.Send(). |
| RegisterConnection | Registers a callback that is invoked when the Editor connects to the Player. |
| RegisterDisconnection | Registers a callback to be called when Editor disconnects. |
| Send | Sends data to the Editor. |
| TrySend | Attempt to sends data to the Editor. |
| Unregister | Deregisters a message listener. |
| UnregisterConnection | Unregisters the connection callback. |
| UnregisterDisconnection | Unregisters the disconnection callback. |

### Inherited Members

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
