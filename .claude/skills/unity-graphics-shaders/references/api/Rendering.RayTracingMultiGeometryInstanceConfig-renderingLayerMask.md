<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingMultiGeometryInstanceConfig-renderingLayerMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A mask that you can access in HLSL with `unity_RenderingLayer` built-in shader uniform.

```csharp
uniform float4 unity_RenderingLayer;// HLSL usage example:
uint renderingLayerMask = asuint(unity_RenderingLayer.x);
```
