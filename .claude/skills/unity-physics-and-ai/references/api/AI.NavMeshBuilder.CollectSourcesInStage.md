<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuilder.CollectSourcesInStage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a list of build sources directly from the current geometry in the specified editor stage.

The collection can be controlled in terms of layers, type of geometry and by collecting either by hierarchy or volume. The `stageProxy` parameter is used for picking objects from either the main stage or the stage of a prefab opened for editing. At runtime that parameter is ignored since objects can only be part of the main scenes. All main scenes are part of the same main stage while prefab scenes are each assigned to its own separate prefab stage.

### Parameters

| Parameter | Description |
| --- | --- |
| includedWorldBounds | The queried objects must overlap these bounds to be included in the results. |
| includedLayerMask | Specifies which layers are included in the query. |
| geometry | Which type of geometry to collect - e.g. physics colliders. |
| defaultArea | Area type to assign to results, unless modified by NavMeshMarkup. |
| markups | List of markups which allows finer control over how objects are collected. |
| stageProxy | Results are selected only from the stage to which this scene belongs. |
| results | List where results are stored, the list is cleared at the beginning of the call. |

### Description

Collects renderers or physics colliders, and terrains within a volume.

### Parameters

| Parameter | Description |
| --- | --- |
| includedWorldBounds | The queried objects must overlap these bounds to be included in the results. |
| includedLayerMask | Specifies which layers are included in the query. |
| geometry | Which type of geometry to collect - e.g. physics colliders. |
| defaultArea | Area type to assign to results, unless modified by NavMeshMarkup. |
| generateLinksByDefault | If true, all the source will be considered for generating links. Otherwise, only the marked sources will be considered. |
| markups | List of markups which allows finer control over how objects are collected. |
| includeOnlyMarkedObjects | Specifies if only objects with markups are collected. |
| stageProxy | Results are selected only from the stage to which this scene belongs. |
| results | List where results are stored, the list is cleared at the beginning of the call. |

### Description

Collects renderers or physics colliders, and terrains within a volume.

### Parameters

| Parameter | Description |
| --- | --- |
| root | If not null, consider only root and its children in the query; if null, includes everything loaded. |
| includedLayerMask | Specifies which layers are included in the query. |
| geometry | Which type of geometry to collect - e.g. physics colliders. |
| defaultArea | Area type to assign to results, unless modified by NavMeshMarkup. |
| markups | List of markups which allows finer control over how objects are collected. |
| stageProxy | Results are selected only from the stage to which this scene belongs. |
| results | List where results are stored, the list is cleared at the beginning of the call. |

### Description

Collects renderers or physics colliders, and terrains within a transform hierarchy.

### Parameters

| Parameter | Description |
| --- | --- |
| root | If not null, consider only root and its children in the query; if null, includes everything loaded. |
| includedLayerMask | Specifies which layers are included in the query. |
| geometry | Which type of geometry to collect - e.g. physics colliders. |
| defaultArea | Area type to assign to results, unless modified by NavMeshMarkup. |
| generateLinksByDefault | If true, all the source will be considered for generating links. Otherwise, only the marked sources will be considered. |
| markups | List of markups which allows finer control over how objects are collected. |
| includeOnlyMarkedObjects | Specifies if only objects with markups are collected. |
| stageProxy | Results are selected only from the stage to which this scene belongs. |
| results | List where results are stored, the list is cleared at the beginning of the call. |

### Description

Collects renderers or physics colliders, and terrains within a transform hierarchy.
