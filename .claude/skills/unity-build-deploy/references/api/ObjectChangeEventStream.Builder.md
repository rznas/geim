<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectChangeEventStream.Builder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a way to construct an instance of ObjectChangeEventStream.

### Properties

| Property | Description |
| --- | --- |
| eventCount | The number of events that have been recorded in this instance so far. |

### Constructors

| Constructor | Description |
| --- | --- |
| ObjectChangeEventStream.Builder | Constructs a new instance. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Releases the memory associated with this instance. |
| PushChangeAssetObjectPropertiesEvent | Adds an ChangeAssetObjectPropertiesEventArgs to the end of the stream. |
| PushChangeGameObjectOrComponentPropertiesEvent | Adds an ChangeGameObjectOrComponentPropertiesEventArgs to the end of the stream. |
| PushChangeGameObjectParentEvent | Adds an ChangeGameObjectParentEventArgs to the end of the stream. |
| PushChangeGameObjectStructureEvent | Adds an ChangeGameObjectStructureEventArgs to the end of the stream. |
| PushChangeGameObjectStructureHierarchyEvent | Adds an ChangeGameObjectStructureHierarchyEventArgs to the end of the stream. |
| PushChangeSceneEvent | Adds an ChangeSceneEventArgs to the end of the stream. |
| PushCreateAssetObjectEvent | Adds an CreateAssetObjectEventArgs to the end of the stream. |
| PushCreateGameObjectHierarchyEvent | Adds an CreateGameObjectHierarchyEventArgs to the end of the stream. |
| PushDestroyAssetObjectEvent | Adds an DestroyAssetObjectEventArgs to the end of the stream. |
| PushDestroyGameObjectHierarchyEvent | Adds an DestroyGameObjectHierarchyEventArgs to the end of the stream. |
| PushUpdatePrefabInstancesEvent | Adds an UpdatePrefabInstancesEventArgs to the end of the stream. |
| ToStream | Copies the data collected in this instance into a new ObjectChangeEventStream instance. |
