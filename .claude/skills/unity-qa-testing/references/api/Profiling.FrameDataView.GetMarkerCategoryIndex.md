<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GetMarkerCategoryIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| markerId | Marker identifier. |

### Returns

**ushort** Returns Profiler category index.

### Description

Gets Profiler marker category for the specific marker identifier.

Use to filter samples data by a specific Profiler category.
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
- ProfilerUnsafeUtility.CategoryLighting,
- ProfilerUnsafeUtility.CategoryNetwork,
- ProfilerUnsafeUtility.CategoryLoading,
- ProfilerUnsafeUtility.CategoryOther,
- ProfilerUnsafeUtility.CategoryVr,
- ProfilerUnsafeUtility.CategoryAllocation,
- ProfilerUnsafeUtility.CategoryVr,
- ProfilerUnsafeUtility.CategoryInput.

**Throws:** 
 *System.ArgumentException* if *markerId* is invalid.

Additional resources: GetMarkerId, ProfilerUnsafeUtility.
