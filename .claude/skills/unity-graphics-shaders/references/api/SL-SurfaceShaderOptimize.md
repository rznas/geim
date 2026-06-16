<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-SurfaceShaderOptimize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Optimize Surface Shaders

Surface Shaders are great for writing **shaders** that interact with lighting. However, their default options are tuned to cover a broad number of general cases. Tweak these for specific situations to make shaders run faster or at least be smaller:

- The `halfasview` for Specular shader types is even faster. The half-vector (halfway between lighting direction and view vector) is computed and normalized per vertex, and the lighting function receives the half-vector as a parameter instead of the view vector.
- `noforwardadd` makes a shader fully support one-directional light in **Forward rendering** only. The rest of the lights can still have an effect as per-vertex lights or spherical harmonics. This is great to make your shader smaller and make sure it always renders in one pass, even with multiple lights present.
- `noambient` disables ambient lighting and spherical harmonics lights on a shader. This can make performance slightly faster.

## Additional resources

- Optimize shader runtime performance
