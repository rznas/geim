<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializationUtility.HasManagedReferencesWithMissingTypes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This API returns true if one or more managed references is missing its type.

Managed references are objects that are referenced from a MonoBehaviour, ScriptableObject or other "host" object using the SerializeReference attribute. When managed references are serialized, their type information is persisted by recording the namespace, class name and assembly name.

When an asset is deserialized, the recorded type information is used to reinstantiate the object. If the recorded type is missing during this process, then the fields on the C# object referencing that object remain null. However the persisted state of the object is retained and included when the asset is resaved.

If the missing types become available at a later time, for example by adding a missing assembly or source file to the project, then the state of the Managed Reference object can be recovered.

Additional resources: GetManagedReferencesWithMissingTypes, ClearAllManagedReferencesWithMissingTypes, SerializeReference.
