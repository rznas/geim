<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffectAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class contains a graph of the elements needed to describe a visual effect. These include: the visual effects system, generated shaders, and compiled data.

Additional resources: VisualEffect.

### Static Properties

| Property | Description |
| --- | --- |
| PlayEventID | The default name ID of the play event. |
| PlayEventName | The default name of the play event. |
| StopEventID | The default name ID of the stop event. |
| StopEventName | The default name of the stop event. |

### Constructors

| Constructor | Description |
| --- | --- |
| VisualEffectAsset | The visual effect Asset constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEvents | Gets the name of every Event connected to a system. |
| GetExposedProperties | Gets the name and type of every exposed property. |
| GetExposedSpace | Provides the configured space of an exposed property in VisualEffectAsset. |
| GetTextureDimension | Gets the TextureDimension of a named exposed Texture. |

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

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
