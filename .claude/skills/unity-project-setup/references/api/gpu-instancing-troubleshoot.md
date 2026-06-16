<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/gpu-instancing-troubleshoot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Troubleshooting GPU instancing

Meshes that have a low number of vertices can’t be processed efficiently using GPU instancing because the GPU can’t distribute the work in a way that fully uses the GPU’s resources. This processing inefficiency can have a detrimental effect on performance. The threshold at which inefficiencies begin depends on the GPU, but as a general rule, don’t use GPU instancing for meshes that have fewer than 256 vertices.

If you want to render a **mesh** with a low number of vertices many times, best practice is to create a single buffer that contains all the mesh information and use that to draw the meshes.

## Additional resources

- Make materials incompatible with the SRP Batcher in URP
