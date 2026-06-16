<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Serialization.ManagedReferenceUtility.SetManagedReferenceIdForObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hostObj | The "host" object that supports SerializeReference. For example, MonoBehaviour or ScriptableObject. |
| refObj | The C# object, to which the reference Id will be assigned. |
| refId | A positive number between 0 and Int64.MaxValue. This managed reference Id cannot be used by another object on the same host object. You can reuse the same managed reference Id on separate hosts. |

### Returns

**bool** Returns true if the Id was successfully set false otherwise.

### Description

Assigns a managed reference Id to an object that is referenced using SerializeReference on a specified host.

In normal usage, it is not necessary to use this method. By default, the Unity Editor automatically generates a unique id for the object when it is first serialized.

 If you use this method, it should be called after the referenced object is created and before the next serialization of the host object that references it. If the object is not referenced when the host object is serialized, Unity prunes the object and discards its assigned Id. An object is "referenced" if it is directly assigned to at least one field of the host object, or is referenced indirectly via fields on other referenced objects.

 After being assigned, the managed reference id persists as a permanent local identifier for the object provided the object is referenced by the host. This identifier is retained even when the host object is unloaded and reloaded.

 Additional resources: GetManagedReferenceIdForObject, GetManagedReference, SerializeReference, SerializedProperty.managedReferenceId.
