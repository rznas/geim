<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Utility class for any Prefab related operations.

```csharp
// This script creates a new menu item Examples>Create Prefab in the main menu.
// Use it to create Prefab(s) from the selected GameObject(s).
// It is placed in the root Assets folder.
using System.IO;
using UnityEngine;
using UnityEditor;public class Example
{
    // Creates a new menu item 'Examples > Create Prefab' in the main menu.
    [MenuItem("Examples/Create Prefab")]
    static void CreatePrefab()
    {
        // Keep track of the currently selected GameObject(s)
        GameObject[] objectArray = Selection.gameObjects;        // Loop through every GameObject in the array above
        foreach (GameObject gameObject in objectArray)
        {
            // Create folder Prefabs and set the path as within the Prefabs folder,
            // and name it as the GameObject's name with the .Prefab format
            if (!Directory.Exists("Assets/Prefabs"))
                AssetDatabase.CreateFolder("Assets", "Prefabs");
            string localPath = "Assets/Prefabs/" + gameObject.name + ".prefab";            // Make sure the file name is unique, in case an existing Prefab has the same name.
            localPath = AssetDatabase.GenerateUniqueAssetPath(localPath);            // Create the new Prefab and log whether Prefab was saved successfully.
            bool prefabSuccess;
            PrefabUtility.SaveAsPrefabAssetAndConnect(gameObject, localPath, InteractionMode.UserAction, out prefabSuccess);
            if (prefabSuccess == true)
                Debug.Log("Prefab was saved successfully");
            else
                Debug.Log("Prefab failed to save" + prefabSuccess);
        }
    }    // Disable the menu item if no selection is in place.
    [MenuItem("Examples/Create Prefab", true)]
    static bool ValidateCreatePrefab()
    {
        return Selection.activeGameObject != null && !EditorUtility.IsPersistent(Selection.activeGameObject);
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| prefabInstanceUpdated | Unity calls this method automatically when Prefab instances in the Scene have been updated. |

### Static Methods

| Method | Description |
| --- | --- |
| ApplyAddedComponent | Applies the added component to the Prefab Asset at the given asset path. |
| ApplyAddedGameObject | Applies the added GameObject to the Prefab Asset at the given asset path. |
| ApplyAddedGameObjects | Applies the added GameObjects to the Prefab Asset at the given asset path. |
| ApplyObjectOverride | Applies all overridden properties on a Prefab instance component or GameObject to the Prefab Asset at the given asset path. |
| ApplyPrefabInstance | Applies all overrides on a Prefab instance to its Prefab Asset. |
| ApplyPrefabInstances | Applies all overrides from a list of Prefab instances to their Prefab Assets. |
| ApplyPropertyOverride | Applies a single overridden property on a Prefab instance to the Prefab Asset at the given asset path. |
| ApplyRemovedComponent | Removes the component from the Prefab Asset which has the component on it. |
| ApplyRemovedGameObject | Removes the GameObject from the source Prefab Asset. |
| ConvertToPrefabInstance | Convert the plain GameObject to a Prefab instance using the provided Prefab Asset root object. |
| ConvertToPrefabInstances | Convert an array of GameObjects to Prefab instances of the given Prefab Asset. |
| FindAllInstancesOfPrefab | Retrieves the root GameObjects for all instances of the Prefab asset with root prefabRoot found in all currently loaded scenes. If prefabRoot is not a valid Prefab asset root GameObject, an ArgumentException is thrown. |
| GetAddedComponents | Retrieves a list of PrefabUtility.AddedComponent objects which contain information about added component overrides on the Prefab instance. |
| GetAddedGameObjects | Retrieves a list of PrefabUtility.AddedGameObject objects which contain information about added GameObjects on the Prefab instance. |
| GetCorrespondingObjectFromOriginalSource | Retrieves the object of origin for the given object. |
| GetCorrespondingObjectFromSource | Retrieves the corresponding source prefab asset object of a given GameObject or component, or null if it can't be found. |
| GetCorrespondingObjectFromSourceAtPath | Retrieves the corresponding object of the given object from a given Prefab Asset path. |
| GetIconForGameObject | Retrieves the icon for the given GameObject. |
| GetNearestPrefabInstanceRoot | Retrieves the GameObject that is the root of the nearest Prefab instance the object is part of. |
| GetObjectOverrides | Retrieves a list of objects with information about object overrides on the Prefab instance. |
| GetOriginalSourceRootWhereGameObjectIsAdded | Use this method to find the Prefab Asset root where a Prefab instance or Prefab Asset object was added originally. |
| GetOutermostPrefabInstanceRoot | Retrieves the GameObject that is the root of the outermost Prefab instance the object is part of. |
| GetPrefabAssetPathOfNearestInstanceRoot | Retrieves the asset path of the nearest Prefab instance root the specified object is part of. |
| GetPrefabAssetType | Retrieves an enum value indicating the type of Prefab Asset, such as Regular Prefab, Model Prefab and Prefab Variant. |
| GetPrefabInstanceHandle | Retrieves the PrefabInstance object for the outermost Prefab instance the provided object is part of. |
| GetPrefabInstanceStatus | Determines whether a Prefab instance is properly connected to its asset. |
| GetPropertyModifications | Returns all modifications that have been applied to a particular prefab instance in a scene or modifications for a prefab instance in an asset. |
| GetRemovedComponents | Returns a list of objects with information about removed component overrides on the Prefab instance. |
| GetRemovedGameObjects | Returns a list of objects with information about removed GameObject overrides on the Prefab instance. |
| HasManagedReferencesWithMissingTypes | Determines whether the object Prefab asset contains any MonoBehaviours with missing SerializeReference types. |
| HasPrefabInstanceAnyOverrides | Returns true if the given Prefab instance has any overrides. |
| InstantiatePrefab | Instantiates the given Prefab in a given Scene. |
| IsAddedComponentOverride | Returns true if the given component is added to a Prefab instance as an override. |
| IsAddedGameObjectOverride | Returns true if the given GameObject is added as a child to a Prefab instance as an override. |
| IsAnyPrefabInstanceRoot | Is the GameObject the root of any Prefab instance? |
| IsDefaultOverride | Returns true if the given modification is considered a default override. |
| IsOutermostPrefabInstanceRoot | Returns true if the given GameObject is an outermost Prefab instance root. |
| IsPartOfAnyPrefab | Returns true if the given object is part of a Prefab Asset or Prefab instance. |
| IsPartOfImmutablePrefab | Returns true if the given object is part of a Prefab that cannot be edited. |
| IsPartOfModelPrefab | Returns true if the given object is part of a Model Prefab Asset or Model Prefab instance. |
| IsPartOfNonAssetPrefabInstance | Returns true if the given object is part of a Prefab instance that is not part of a Prefab Asset. |
| IsPartOfPrefabAsset | Returns true if the given object is part of a Prefab Asset. |
| IsPartOfPrefabInstance | Returns true if the given object is part of a Prefab instance. |
| IsPartOfPrefabThatCanBeAppliedTo | Returns true if the given object is part of a Prefab to which overrides can be applied to. |
| IsPartOfRegularPrefab | Returns true if the given object is part of a regular Prefab instance or Prefab Asset. |
| IsPartOfVariantPrefab | Returns true if the given object is part of a Prefab Variant Asset or Prefab Variant instance. |
| IsPrefabAssetMissing | Returns true if the given object is part of a Prefab instance but the source asset is missing. |
| LoadPrefabContents | Loads a Prefab Asset at a given path into an isolated Scene and returns the root GameObject of the Prefab. |
| LoadPrefabContentsIntoPreviewScene | Loads a Prefab Asset at a given path into a given preview scene. |
| MergePrefabInstance | Forces a Prefab instance to merge with changes from the Prefab Asset. |
| RecordPrefabInstancePropertyModifications | Causes modifications made to the Prefab instance to be recorded. |
| RemoveUnusedOverrides | This method identifies and removes all unused overrides from a list of Prefab Instance roots. See the manual Unused Overides for more detail. |
| ReplacePrefabAssetOfPrefabInstance | Replace the Prefab Asset for a Prefab instance that exists in a Scene or for a nested Prefab instance inside another Prefab. |
| ReplacePrefabAssetOfPrefabInstances | Replace the Prefab Asset for an array of Prefab instances that exists in Scenes or for nested Prefab instances inside another Prefab. |
| RevertAddedComponent | Removes this added component on a Prefab instance. |
| RevertAddedGameObject | Removes this added GameObject from a Prefab instance. |
| RevertObjectOverride | Reverts all overridden properties on a Prefab instance component or GameObject. |
| RevertPrefabInstance | Reverts all overrides on a Prefab instance. |
| RevertPropertyOverride | Reverts a single property override on a Prefab instance. |
| RevertRemovedComponent | Adds this removed component back on the Prefab instance. |
| RevertRemovedGameObject | Adds this removed GameObject back on the Prefab instance. |
| SaveAsPrefabAsset | Creates a Prefab Asset at the given path from the given GameObject, including any childen in the Scene without modifying the input objects. |
| SaveAsPrefabAssetAndConnect | Creates a Prefab Asset at the given path from the given GameObject, including any children in the Scene and at the same time make the given GameObject into an instance of the new Prefab. |
| SavePrefabAsset | Saves the version of an existing Prefab Asset that exists in memory back to disk. |
| SetPropertyModifications | Assigns a set of PropertyModification objects to a target Prefab instance relative to its source Prefab Asset. |
| UnloadPrefabContents | Releases the content from a Prefab previously loaded with LoadPrefabContents from memory. |
| UnpackAllInstancesOfPrefab | Unpacks all instances of a given Prefab Asset root GameObject in all open scenes so that all instances are replaced with the contents of the Prefab Asset while retaining all override values. |
| UnpackPrefabInstance | Unpacks a given Prefab instance so that it is replaced with the contents of the Prefab Asset while retaining all override values. |
| UnpackPrefabInstanceAndReturnNewOutermostRoots | Unpacks the given Prefab instance using the behaviour specified by unpackMode. |

### Events

| Event | Description |
| --- | --- |
| prefabInstanceApplied | Unity calls this method automatically after a Prefab instance has been applied. |
| prefabInstanceApplying | Unity calls this method automatically before a Prefab instance is applied. |
| prefabInstanceReverted | Unity calls this method automatically after a Prefab instance has been reverted. |
| prefabInstanceReverting | Unity calls this method automatically before a Prefab instance is reverted. |
| prefabInstanceUnpacked | Unity calls this method automatically after a Prefab instance is unpacked. |
| prefabInstanceUnpacking | Unity calls this method automatically before a Prefab instance is unpacked. |

### Delegates

| Delegate | Description |
| --- | --- |
| PrefabInstanceUpdated | Delegate for method that is called after Prefab instances in the Scene have been updated. |
