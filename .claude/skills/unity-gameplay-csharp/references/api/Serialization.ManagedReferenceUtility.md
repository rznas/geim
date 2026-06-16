<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Serialization.ManagedReferenceUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Utility functions related to SerializeReference manipulation and access.

Additional resources: SerializeReference, SerializedProperty, SerializationUtility.

### Static Properties

| Property | Description |
| --- | --- |
| RefIdNull | Special value, -2, used as the managed reference Id of any field decorated with SerializeReference that has no object assigned to it. |
| RefIdUnknown | Special value, -1, used when the managed reference Id for an object is unknown, for example if GetManagedReferenceIdForObject is called with invalid arguments. |

### Static Methods

| Method | Description |
| --- | --- |
| GetManagedReference | Retrieves an object based on its managed reference Id. |
| GetManagedReferenceIdForObject | Retrieves the managed reference Id for an object that is referenced using SerializeReference. |
| GetManagedReferenceIds | Retrieves a list of managed reference Ids assigned to objects that are referenced using SerializeReference on a specified host. |
| SetManagedReferenceIdForObject | Assigns a managed reference Id to an object that is referenced using SerializeReference on a specified host. |
