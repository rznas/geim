<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemCategoryIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |

### Returns

**ushort** Returns Profiler category index.

### Description

Gets Profiler marker category for the specific marker identifier.

Use Profiler category to filter samples produced by a specific subsystem, e.g. Rendering, Audio.
 The category index is represented by *ushort* value and refers to one of the following constants in ProfilerUnsafeUtility class:

- ProfilerUnsafeUtility.CategoryRender,
- ProfilerUnsafeUtility.CategoryScripts,
- ProfilerUnsafeUtility.CategoryGUI,
- ProfilerUnsafeUtility.CategoryPhysics,
- ProfilerUnsafeUtility.CategoryAnimation,
- ProfilerUnsafeUtility.CategoryAi,
- ProfilerUnsafeUtility.CategoryAudio,
- ProfilerUnsafeUtility.CategoryVideo,
- ProfilerUnsafeUtility.CategoryParticles,
- ProfilerUnsafeUtility.CategoryLightning,
- ProfilerUnsafeUtility.CategoryNetwork,
- ProfilerUnsafeUtility.CategoryLoading,
- ProfilerUnsafeUtility.CategoryOther,
- ProfilerUnsafeUtility.CategoryVr,
- ProfilerUnsafeUtility.CategoryAllocation,
- ProfilerUnsafeUtility.CategoryVr,
- ProfilerUnsafeUtility.CategoryInput.

Additional resources: FrameDataView.GetMarkerId, ProfilerUnsafeUtility.
