<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The abstract base class for representing a version control system.

You can add support for a custom VCS by creating a new class derived from VersionControlObject and applying the VersionControlAttribute.

```csharp
using UnityEditor.VersionControl;
using UnityEngine;[VersionControl("Custom")]
public class CustomVersionControlObject : VersionControlObject
{
    public override void OnActivate()
    {
        Debug.Log("Custom VCS activated.");
    }    public override void OnDeactivate()
    {
        Debug.Log("Custom VCS deactivated.");
    }
}
```

Using the example above, a new VCS option called *Custom* will show up in Version Control settings window. You should only perform VCS operations when a VersionControlObject is activated. OnActivate and OnDeactivate methods are called on your class to notify your code about the change.

Any persistent settings that must survive between Unity sessions (for example, the username or password) must be handled either by the underlying VCS, by using EditorUserSettings, or stored in a file. This is because the VersionControlObject is not serialized to disk and a new instance is created every time Unity starts up or when the VCS is activated.

The VersionControlObject is derived from ScriptableObject. This makes domain reloading handling simpler. You can add ScriptableObject.OnEnable method to restore the state if needed.

You can use AssetModificationProcessor and AssetPostprocessor.OnPostprocessAllAssets to get notifications from Unity when it wants to edit, add or remove assets.

Additional resources: VersionControlAttribute, VersionControlManager, EditorUserSettings, ScriptableObject, AssetModificationProcessor, AssetPostprocessor.

### Properties

| Property | Description |
| --- | --- |
| isConnected | Tests whether the VersionControlObject is connected to an underlying version control system. |

### Public Methods

| Method | Description |
| --- | --- |
| GetExtension | Gets optional extension object. |
| OnActivate | Called when your version control system is activated. |
| OnDeactivate | Called when your version control system is deactivated. |
| Refresh | Called when the cached state should be discarded and the new state should be retrieved from the underlying VCS. |

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
