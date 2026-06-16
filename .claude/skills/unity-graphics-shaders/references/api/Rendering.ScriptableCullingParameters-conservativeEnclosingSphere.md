<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableCullingParameters-conservativeEnclosingSphere.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property enables a conservative method for calculating the size and position of the minimal enclosing sphere around the frustum cascade corner points for shadow culling.

The default value is `false` (disabled) to give control over enabling this method to the render pipeline for compatibility.

 The high level shadow mapping algorithms require a culling sphere for each frustum cascade slice which contains the entire individual cascade volume.

 When this property is set to `false`, the shadow culling implementation uses spheres that are smaller than the cascade volume and also misaligned, which causes shadow casters to be culled in the corners of the cascades erroneously.

 When this property is set to `true`, the shadow culling implementation uses spheres which contain the entire cascade within the culling sphere. The methods uses a conservative and iterative solution, and the number of iterations can be set using ScriptableCullingParameters.numIterationsEnclosingSphere.

 Setting this property to `true` may slightly increase the culling sphere size, which will cause the shadow map to cover a larger world space and increase perspective aliasing.

 Additional resources: ShadowSplitData.cullingSphere.
