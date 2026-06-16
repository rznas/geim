<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ManagedReferenceMissingType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a managed reference object that has a missing type.

ManagedReferenceMissingType describes a managed reference object that could not be deserialized because it is missing its type.

It includes the details of the type (expressed by its assembly, class and namespace) that is expected in order to reinstantiate the object.

A type can be missing if the class was renamed, moved to another assembly, or moved inside a different namespace. A missing type may be a sign that an entire assembly or source script is missing from the project.

If the original types are not available, this info can aid in migrating data to new types, or making a decision to clear the associated data.

Additional resources: SerializationUtility.HasManagedReferencesWithMissingTypes, SerializationUtility.GetManagedReferencesWithMissingTypes, SerializationUtility.ClearManagedReferenceWithMissingType, SerializeReference

### Properties

| Property | Description |
| --- | --- |
| assemblyName | Name of the Assembly where Unity expects to find the class. (Read Only) |
| className | Name of the class that is needed to instantiate the Managed Reference. (Read Only) |
| namespaceName | Namespace where Unity expects to find the class. Namespaces are optional so this might contain an empty string. (Read Only) |
| referenceId | The Managed Reference ID. (Read Only) |
| serializedData | String summarizing the content of the serialized data of the missing object. (Read Only) |
