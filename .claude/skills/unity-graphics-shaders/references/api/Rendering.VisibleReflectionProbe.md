<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VisibleReflectionProbe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Holds data of a visible reflection reflectionProbe.

After ScriptableRenderContext.Cull is done, CullingResults.visibleReflectionProbes will contain an array of reflection reflectionProbes that are visible. The visible reflection reflectionProbe structure contains packed information for most commonly used ReflectionProbe variables, and a VisibleReflectionProbe.probe reference to the component itself.

Additional resources: CullingResults.visibleReflectionProbes, ReflectionProbe.

### Properties

| Property | Description |
| --- | --- |
| blendDistance | Probe blending distance. |
| bounds | The probe's world space axis-aligned bounding box in which the probe can contribute to reflections. |
| center | The center of the probe's bounding box in which the probe can contribute to reflections. The center is relative to the position of the probe. |
| hdrData | Shader data for probe HDR texture decoding. |
| importance | Probe importance. |
| isBoxProjection | Should probe use box projection. |
| localToWorldMatrix | Probe transformation matrix. |
| reflectionProbe | Accessor to ReflectionProbe component. |
| texture | Probe texture. |
