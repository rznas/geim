<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.Preset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Preset contains default values for an Object.

The Preset class contains the type of the Object used to create it and a list of each serialized property/value pair of this Object. It can be used to store informations from any serializable Object in the Editor and apply them back to this Object or any other Object of the same type. Presets can also be saved as Assets using the .preset extension in order to.

```csharp
using UnityEditor;
using UnityEditor.Presets;
using UnityEngine;public static class PresetUsageExample
{
    // This method uses a Preset to copy the serialized values from the source to the target and return true if the copy succeed.
    public static bool CopyObjectSerialization(Object source, Object target)
    {
        Preset preset = new Preset(source);
        return preset.ApplyTo(target);
    }    // This method creates a Preset from a given Object and save it as an asset in the project.
    public static void CreatePresetAsset(Object source, string name)
    {
        Preset preset = new Preset(source);
        AssetDatabase.CreateAsset(preset, "Assets/" + name + ".preset");
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| excludedProperties | List of properties to ignore when applying the Preset to an object. |
| PropertyModifications | Returns a copy of the PropertyModification array owned by this Preset. |

### Constructors

| Constructor | Description |
| --- | --- |
| Preset | Constructs a new Preset from a given Object. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyTo | Applies this Preset to the target object. |
| CanBeAppliedTo | Returns true if this Preset can be applied to the target Object. |
| DataEquals | Determines if the target object has the same serialized values as the Preset. |
| GetPresetType | Returns the PresetType of this Preset. |
| GetTargetFullTypeName | Returns a human readable string of this Preset's target fulltype, including namespace. |
| GetTargetTypeName | Returns a human readable string of this Preset's target type. |
| IsValid | Returns true if the Preset type of this Preset is valid. |
| UpdateProperties | Updates this Preset's properties from the given Object's values. The given Object's type must match this Preset's type. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAllDefaultTypes | Returns all the PresetType that have at least one DefaultPreset entry in the default Presets list. |
| GetDefaultPresetsForObject | Gets the ordered list of Presets that set its default values when applied to the target. |
| GetDefaultPresetsForType | Gets an ordered list of DefaultPreset based on the specified PresetType. |
| IsEditorTargetAPreset | Returns true if the given target is a temporary UnityEngine.Object instance created from inside a PresetEditor. |
| RemoveFromDefault | Remove the Preset type from having default values in the project. |
| SetDefaultPresetsForType | Sets a default list of Presets with a filter for a specific PresetType. |

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
