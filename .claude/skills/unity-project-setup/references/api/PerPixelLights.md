<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/PerPixelLights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Per-pixel and per-vertex lights

If you use the default Forward rendering path, each realtime Light component can be one of the following types:

- A per-pixel light, which lights each **pixel** of an object accurately.
- A per-vertex light, which lights each vertex of an object accurately. Unity interpolates lighting for the pixels between vertices.

Per-pixel lights give more accurate results but reduce performance.

The Built-In **Render Pipeline** also sets some lights as Spherical Harmonic (SH) per-vertex lights, which are the least accurate but render the fastest.

For more information, refer to the following:

- Light limits in the Universal Render Pipeline (URP)
- Per-pixel and per-vertex lights in the Built-In Render Pipeline

## Additional resources

- Choose a lighting setup
- Introduction to rendering paths
