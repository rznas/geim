<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PickingIncludeExcludeEntityIdList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a list of Unity Object and DOTS Entity IDs that picking algorithms can either consider or discard.

### Properties

| Property | Description |
| --- | --- |
| ExcludeEntities | An array of DOTS Entity IDs that the picking algorithm doesn't consider when it selects the nearest object. |
| ExcludeRenderers | An array of GameObjects that the picking algorithm doesn't consider when it selects the nearest object. |
| IncludeEntities | An array of DOTS Entity IDs that the picking algorithm exclusively considers when it selects the nearest object. If this is null, Unity considers all DOTS Entities in open scenes for selection. |
| IncludeRenderers | An array of GameObjects that the picking algorithm exclusively considers when it selects the nearest object. If this is null, Unity considers all GameObjects in open scenes for selection. |

### Constructors

| Constructor | Description |
| --- | --- |
| PickingIncludeExcludeEntityIdList | Construct a PickingIncludeExcludeEntityIdList. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Dispose all the Unity.Collections.NativeArray inside the struct. |
