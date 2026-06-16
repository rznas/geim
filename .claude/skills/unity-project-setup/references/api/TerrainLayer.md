<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainLayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Description of a terrain layer.

### Properties

| Property | Description |
| --- | --- |
| diffuseRemapMax | A Vector4 value specifying the maximum RGBA value that the diffuse texture maps to when the value of the channel is 1. |
| diffuseRemapMin | A Vector4 value specifying the minimum RGBA value that the diffuse texture maps to when the value of the channel is 0. |
| diffuseTexture | The diffuse texture used by the terrain layer. |
| maskMapRemapMax | A Vector4 value specifying the maximum RGBA value that the mask map texture maps to when the value of the channel is 1. |
| maskMapRemapMin | A Vector4 value specifying the minimum RGBA value that the mask map texture maps to when the value of the channel is 0. |
| maskMapTexture | The mask map texture used by the terrain layer. |
| metallic | Metallic factor used by the terrain layer. |
| normalMapTexture | Normal map texture used by the terrain layer. |
| normalScale | A float value that scales the normal vector. The minimum value is 0, the maximum value is 1. |
| smoothness | Smoothness of the specular reflection. |
| smoothnessSource | Choose the source for smoothness value. |
| specular | Specular color. |
| tileOffset | UV tiling offset. |
| tileSize | UV Tiling size. |

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
