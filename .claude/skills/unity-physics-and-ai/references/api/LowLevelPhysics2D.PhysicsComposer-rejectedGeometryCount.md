<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsComposer-rejectedGeometryCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the number of geometries that were rejected during the last Geometry Composition. Geometry can be rejected for a number of reasons such as vertices being collinear or too close etc. Whilst "pure" geometry is always valid, this geometry is meant to be used by physics which has constraints on what it can accept. All geometry successfully created will always be valid when used by physics. If you notice thin/small gaps in the composition, this is likely to be rejected geometry. Checking this property will help determine that.
