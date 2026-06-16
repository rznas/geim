<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.SetPropertyModifications.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetPrefab | A reference to the Prefab instance to be modified. Although the type and name imply an asset, it is the outermost instance as a GameObject that should be provided. |
| modifications | A set of PropertyModification objects that define the changes to the target Prefab instance. |

### Description

Assigns a set of PropertyModification objects to a target Prefab instance relative to its source Prefab Asset.

It's important to provide this method with the top-level object in the target instance's branch of the hierarchy to avoid unexpected results. Use GetOutermostPrefabInstanceRoot for this purpose.

PropertyModification fields for Prefab overrides:

- **target**: A persistent Prefab asset object reference
- **propertyPath**: The path of the property to be modified
- **value**: The value of the property as a string
- **objectReference**: Set this field if the modification is an object reference, otherwise set the `value` field

The PropertyModification members always expected to have been set are the `target` object the modification applies to (i.e. a persistent Prefab asset object reference), the `propertyPath` of the property to be modified and its new `value` or `objectReference`, as shown in the following example:

```csharp
void MakePrefabModifications(GameObject gameObject)
{
    // Get the outermost root from the target object
    GameObject prefabInstanceRoot = PrefabUtility.GetOutermostPrefabInstanceRoot(gameObject);
    if (prefabInstanceRoot == null)
        return;    // Get the corresponding prefab asset
    GameObject prefabAssetRoot = PrefabUtility.GetCorrespondingObjectFromSource(prefabInstanceRoot);    // Create modifications for m_Name and m_LocalScale.x
    var mods = new[]
    {
        new UnityEditor.PropertyModification { value = "NewName", propertyPath = "m_Name", target = prefabAssetRoot },
        new UnityEditor.PropertyModification { value = "3", propertyPath = "m_LocalScale.x", target = prefabAssetRoot.transform }
    };    PrefabUtility.SetPropertyModifications(prefabInstanceRoot, mods);
}
```

The following example shows an example of `PropertyModification.objectReference` usage on a Prefab which has a MeshRenderer:

```csharp
void MakePrefabModificationUsingObjectReference(GameObject gameObject)
{
    // Get the outermost root from the target object
    GameObject prefabInstanceRoot = PrefabUtility.GetOutermostPrefabInstanceRoot(gameObject);
    if (prefabInstanceRoot == null)
        return;    // Get the corresponding prefab asset
    GameObject prefabAssetRoot = PrefabUtility.GetCorrespondingObjectFromSource(prefabInstanceRoot);    MeshRenderer prefabMeshRenderer = prefabAssetRoot.GetComponent<MeshRenderer>();
    
    // Create a material asset to add to the MeshRenderer
    Material material = new Material(Shader.Find("Diffuse"));
    AssetDatabase.CreateAsset(material, "Assets/MyMaterial.mat");    var mods = new[]
    {
        new UnityEditor.PropertyModification { target = prefabMeshRenderer, propertyPath = "m_Materials.Array.data[0]", objectReference = material }
    };    PrefabUtility.SetPropertyModifications(prefabInstanceRoot, mods);
}
```

Be aware that calls to `SetPropertyModifications` will replace the previous set of modifications. If the intention is to accumulate modifications, then retrieve the current set with GetPropertyModifications and include them in the new set.

SetPropertyModifications can be used to remove unwanted modifications. To remove only non-default modifications, filter them away and keep the default overrides, as below:

```csharp
List<PropertyModification> defaultMods = new List<PropertyModification>();
PropertyModification[] mods = PrefabUtility.GetPropertyModifications(prefabInstanceRoot);
foreach (var mod in mods)
{
    if (PrefabUtility.IsDefaultOverride(mod))
        defaultMods.Add(mod);
}PrefabUtility.SetPropertyModifications(prefabInstanceRoot, defaultMods.ToArray());
```

For creating overrides a preferred approach is to use either RecordPrefabInstancePropertyModifications for manually changed properties or use SerializedObject and SerializedProperty which will automatically generate overrides.

For applying and reverting overrides consider using the following API which provide convenient access to Apply and Revert functionality:

GetObjectOverrides GetAddedComponents GetRemovedComponents GetAddedGameObjects GetRemovedGameObjects.
