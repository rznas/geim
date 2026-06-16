<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Painter2D.PushClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Uses the current path as a clipping region. This region clips subsequent `Fill()` and `Stroke()` operations.

For performance reasons, this only works for Painter2D instances created with "new Painter2D()" to be eventually saved to a VectorImage using SaveToVectorImage. This will not work with Painter2D attached to a MeshGenerationContext. 

 Note that the clipped shapes will not have antialiased edges since the clipping path is applied by doing a per-triangle clipping process. Use PopClip() to remove the most recently added clipping region.
