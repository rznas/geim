<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unique and stable project-scoped identifier for objects in scenes and in other types of assets for use at authoring time.

Use this struct to obtain unique identifiers to objects that are part of scenes or inside other assets such as prefabs and ScriptableObjects. The identifiers are stable and persistent across editing sessions and data serialization operations, such as changing the active scene and saving and reloading.

You can use `GlobalObjectId` in your Unity Editor workflows, including writing authoring tools.

**Note**: `GlobalObjectId` identifiers can't be used at application runtime in the Editor's Play mode or in standalone Player builds.

**Note**: You can't use AssetDatabase.TryGetGUIDAndLocalFileIdentifier for referencing objects that are inside a scene. Use `GlobalObjectId` instead.

You can create a `GlobalObjectId` for objects that inherit from `UnityEngine.Object` and which are inside scenes or in other types of assets such as prefabs and ScriptableObjects.

The format of the string representation of the ID is `GlobalObjectId_V1-{i}-{a}-{l}-{p}`, where:

- `{i}` is the identifier type represented by an integer (0 = Null, 1 = Imported Asset, 2 = Scene Object, 3 = Source Asset).
- `{a}` is the asset GUID. This is a globally unique identifier that Unity assigns to every newly discovered asset. For more information, refer to Asset Metadata in the Manual.
- `{l}` is the local file ID of the object. For objects inside a prefab instance, this ID is the local file ID of the original source object that is part of the prefab.
- `{p}` is the local file ID of the prefab instance of the object. If the object isn't part of a prefab instance, then `{p}` is `0`.

**Note**: Actual local file IDs are signed 64-bit values and can be negative. But in a `GlobalObjectId`, these values are cast to GlobalObjectId.targetObjectId, which is an unsigned 64-bit value (`ulong`). Therefore, a negative local file ID will lose its sign when saved to a `GlobalObjectId` and you should not rely on the value of `targetObjectId`, or the `{l}` element from the string representation of a GlobalObjectID, to find an object.

Each of these values is stored separately as a property in the `GlobalObjectId` struct. The string is not the native representation but can be obtained from GlobalObjectId.ToString.

The default null ID is `GlobalObjectId_V1-0-00000000000000000000000000000000-0-0`.

To obtain the `GlobalObjectId` for an object or an array of objects based on the object reference or instance ID, use GlobalObjectId.GetGlobalObjectIdSlow or GlobalObjectId.GetGlobalObjectIdsSlow.

For objects that are inside a scene (those for which GlobalObjectId.identifierType = `2`), the `GlobalObjectId` includes the scene ID as the `assetGUID`, which means the following:

- Moving an object to a new scene changes its `GlobalObjectId`.
- You must save the scene at least once before you can obtain a `GlobalObjectId` for an object in the current scene. Otherwise, the `assetGUID` value is null.
- A `GlobalObjectId` that refers to an object inside a scene can be resolved back to an instance ID or object only when that scene is already loaded.

The following performance considerations apply for `GlobalObjectId` in general:

- When converting multiple objects or instance IDs to or from `GlobalObjectId` objects, it's always faster to make a single call using the batch methods rather than making individual calls. For example, a single call to `GlobalObjectIdentifiersToObjectsSlow` is much faster then making multiple calls to `GlobalObjectIdentifierToObjectSlow`.
- Methods in this struct are suffixed with `Slow` to indicate that they have performance impacts. If you use these methods in a large project within other performance-sensitive contexts such as ISerializationCallbackReceiver.OnBeforeSerialize or ISerializationCallbackReceiver.OnAfterDeserialize, it's strongly recommended to profile the performance impact.

```csharp
// Create an empty C# in your project and paste in the following code.using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;// The example creates a new Editor menu item called Example. When you select Example > GlobalObjectId,
// the code creates a new scene with two GameObjects called MyPlane and MyCube and obtains the
// GlobalObjectIds for these objects. The code then reloads the scene and uses the GlobalObjectIds to
// obtain references to the original MyPlane and MyCube objects, printing conformation to the console.
public class GlobalObjectIdExample
{
    [MenuItem("Example/GlobalObjectId")]
    static void MenuCallback()
    {
        const string testScenePath = "Assets/MyTestScene.unity";        var stringIds = CreateSceneWithTwoObjects(testScenePath);        // These string-formatted IDs can be saved to a file, then retrieved in a later session of Unity.
        Debug.Log("IDs of new objects " + stringIds[0] + " and " + stringIds[1]);        ReloadSceneAndResolveObjects(testScenePath, stringIds);
    }    static string[] CreateSceneWithTwoObjects(string testScenePath)
    {
        var scene = EditorSceneManager.NewScene(NewSceneSetup.EmptyScene, NewSceneMode.Single);        // Scene must have been serialized at least once prior to generating GlobalObjectIds, so that the asset GUID is available.
        EditorSceneManager.SaveScene(scene, testScenePath);        // Create objects in scene.
        var objects = new Object[2];
        objects[0] = GameObject.CreatePrimitive(PrimitiveType.Plane);
        objects[0].name = "MyPlane";
        objects[1] = GameObject.CreatePrimitive(PrimitiveType.Cube);
        objects[1].name = "MyCube";        // Get GlobalObjectId for all objects.
        var ids = new GlobalObjectId[2];
        GlobalObjectId.GetGlobalObjectIdsSlow(objects, ids);        // Save and close the scene.
        EditorSceneManager.SaveScene(scene, testScenePath);
        EditorSceneManager.NewScene(NewSceneSetup.EmptyScene, NewSceneMode.Single);        // Return the GlobalObjectId of all objects in the scene.
        var idsStringFormat = new string[2];
        idsStringFormat[0] = ids[0].ToString();
        idsStringFormat[1] = ids[1].ToString();        return idsStringFormat;
    }    // This method resolves the GlobalObjectIDs into object references after the scene is reloaded.
    static void ReloadSceneAndResolveObjects(string testScenePath, string[] objectIdsAsStrings)
    {
    // Convert string IDs into GlobalObjectId objects.
        var ids = new GlobalObjectId[2];
        GlobalObjectId.TryParse(objectIdsAsStrings[0], out ids[0]);
        GlobalObjectId.TryParse(objectIdsAsStrings[1], out ids[1]);        // Load the scene before the resolving the IDs to objects references.
        EditorSceneManager.OpenScene(testScenePath);        var objects = new Object[2];
        GlobalObjectId.GlobalObjectIdentifiersToObjectsSlow(ids, objects);        // Print the result.
        Debug.Log("Found " + objects[0].name + " and " + objects[1].name);
    }
}
```

Additional resources: Object.GetInstanceID, AssetDatabase.AssetPathToGUID, AssetDatabase.TryGetGUIDAndLocalFileIdentifier.

### Properties

| Property | Description |
| --- | --- |
| assetGUID | The GUID for the asset that the referenced object belongs to. |
| identifierType | The identifier type of the referenced object, represented as an integer. |
| targetObjectId | The local file ID of the referenced object. |
| targetPrefabId | The ID of the prefab instance that contains the referenced object. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Compares this unique object identifier with another to determine their relative positions in the sort order. |
| Equals | Checks if this unique object identifier and another are equal. |
| ToString | Obtains the string representation of the unique object identifier. |

### Static Methods

| Method | Description |
| --- | --- |
| GetGlobalObjectIdSlow | Obtains the unique object identifiers based on an object reference. |
| GetGlobalObjectIdsSlow | Creates an array of unique object identifiers based on an array of objects. |
| GlobalObjectIdentifiersToEntityIdsSlow | Creates an array of instance IDs based on an array of unique object identifiers. |
| GlobalObjectIdentifiersToObjectsSlow | Creates an array of object references based on an array of unique object identifiers. |
| GlobalObjectIdentifierToEntityIdSlow | Obtains the EntityId of the object from its unique object identifier. |
| GlobalObjectIdentifierToObjectSlow | Obtains a reference to an object from its unique object identifier. |
| TryParse | Tries to parse the string representation of a GlobalObjectId into a GlobalObjectId struct. |
