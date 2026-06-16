<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Serialization.ManagedReferenceUtility.GetManagedReferenceIdForObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hostObj | The host object that supports SerializeReference. For example, MonoBehaviour or ScriptableObject. |
| refObj | The C# object, to which the reference Id is associated. |

### Returns

**long** Returns the managed reference Id. Returns ManagedReferenceUtility.RefIdUnknown if the managed reference Id has not been assigned yet.

### Description

Retrieves the managed reference Id for an object that is referenced using SerializeReference.

Unity assigns an Id for an object when the Unity Object referencing the object has been serialized, or when SetManagedReferenceIdForObject is called.

 Additional resources: SetManagedReferenceIdForObject, GetManagedReference, SerializeReference.
