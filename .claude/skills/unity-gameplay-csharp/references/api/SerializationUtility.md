<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializationUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Utility functions related to Serialization.

Additional resources: ManagedReferenceUtility, SerializeReference, SerializedProperty.

### Static Methods

| Method | Description |
| --- | --- |
| ClearAllManagedReferencesWithMissingTypes | Removes all managed references that are missing their type. |
| ClearManagedReferenceWithMissingType | Drop the serialized data associated with a specific managed reference object that is missing its type. |
| GetManagedReferencesWithMissingTypes | Returns the list of managed references that could not be deserialized because of a missing type. |
| HasManagedReferencesWithMissingTypes | This API returns true if one or more managed references is missing its type. |
