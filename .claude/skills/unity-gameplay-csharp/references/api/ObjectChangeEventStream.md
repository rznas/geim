<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectChangeEventStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a stream of events that describes the changes applied to objects in memory over the course of a frame.

### Properties

| Property | Description |
| --- | --- |
| isCreated | Indicates whether the ObjectChangeEventStream has an allocated memory buffer. |
| length | The number of events in the stream. |

### Public Methods

| Method | Description |
| --- | --- |
| Clone | Creates a copy of this stream with the specified allocator. |
| Dispose | Releases the memory associated with this stream. |
| GetChangeAssetObjectPropertiesEvent | Retrieves the event data at the given index as a ChangeAssetObjectPropertiesEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetChangeChildrenOrderEvent | Retrieves the event data at the given index as a ChangeChildrenOrderEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetChangeGameObjectOrComponentPropertiesEvent | Retrieves the event data at the given index as a ChangeAssetObjectPropertiesEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetChangeGameObjectParentEvent | Retrieves the event data at the given index as a ChangeGameObjectParentEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetChangeGameObjectStructureEvent | Retrieves the event data at the given index as a ChangeGameObjectStructureEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetChangeGameObjectStructureHierarchyEvent | Retrieves the event data at the given index as a ChangeGameObjectStructureHierarchyEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetChangeRootOrderEvent | Retrieves the event data at the given index as a ChangeRootOrderEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetChangeSceneEvent | Retrieves the event data at the given index as a ChangeSceneEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetCreateAssetObjectEvent | Retrieves the event data at the given index as a CreateAssetObjectEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetCreateGameObjectHierarchyEvent | Retrieves the event data at the given index as a CreateGameObjectHierarchyEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetDestroyAssetObjectEvent | Retrieves the event data at the given index as a DestroyAssetObjectEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetDestroyGameObjectHierarchyEvent | Retrieves the event data at the given index as a DestroyGameObjectHierarchyEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
| GetEventType | Returns the type of the event at the specified index. |
| GetUpdatePrefabInstancesEvent | Retrieves the event data at the given index as a UpdatePrefabInstancesEventArgs. Throws an exception if the event type requested does not match the event stored in the stream. |
