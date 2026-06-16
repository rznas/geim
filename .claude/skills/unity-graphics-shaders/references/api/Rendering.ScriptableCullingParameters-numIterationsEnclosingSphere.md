<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableCullingParameters-numIterationsEnclosingSphere.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When ScriptableCullingParameters.conservativeEnclosingSphere is `true`, the algorithm for calculating the position and size of the culling sphere is a conservative iterative solution. This property controls the number of iterations used in the method.

 Default value is 64.

 Increasing the number of iterations will reduce the culling sphere to be closer to the absolute minimun enclosing sphere, but will also require more CPU computation. Reducing the number of iterations will make the culling sphere larger.

 Additional resources: ScriptableCullingParameters.conservativeEnclosingSphere, ShadowSplitData.cullingSphere.
