<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.HasManagedReferencesWithMissingTypes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | An object which is part of a Prefab asset. |

### Returns

**bool** Returns true if there are missing SerializeReference types directly within a Prefab asset excluding nested Prefab.

### Description

Determines whether the object Prefab asset contains any MonoBehaviours with missing SerializeReference types.

This method returns true if the prefab asset contains missing SerializeReference types. Applying property modifications to a prefab asset removes missing type information from the prefab asset. However, editing a prefab asset in prefab editing mode preserves missing type information. If you are on an instance, you can use PrefabUtility.GetCorrespondingObjectFromSource to validate if the prefab asset has missing types. Additional resources: SerializationUtility.HasManagedReferencesWithMissingTypes, SerializeReference
