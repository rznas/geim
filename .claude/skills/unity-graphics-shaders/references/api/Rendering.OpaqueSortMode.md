<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.OpaqueSortMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Opaque object sorting mode of a Camera.

Opaque objects are sorted by various criteria (sorting layers, shader queues, materials, distance, lightmaps etc.) to maximize both the CPU efficiency (reduce number of state changes and improve draw call batching), and to maximize GPU efficiency (many GPUs prefer rough front-to-back rendering order for faster rejection of invisible surfaces).

By default, opaque objects are grouped in rough front-to-back buckets, on the GPUs where doing that is beneficial. There are GPUs where doing this distance based sorting is not really helpful (most notably, PowerVR/Apple GPUs), and so on these GPUs the distance based sorting is not done by default.

The Camera.opaqueSortMode property lets you override this default behavior. For example, you might want to never do distance-based sorting for opaque objects, if you know you need much more CPU performance than GPU performance.

Additional resources: Camera.opaqueSortMode.

### Properties

| Property | Description |
| --- | --- |
| Default | Default opaque sorting mode. |
| FrontToBack | Do rough front-to-back sorting of opaque objects. |
| NoDistanceSort | Do not sort opaque objects by distance. |
