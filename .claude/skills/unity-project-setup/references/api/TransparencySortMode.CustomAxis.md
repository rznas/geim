<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransparencySortMode.CustomAxis.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sort objects based on distance along a custom axis.

Transparent objects are sorted based on distance along a custom axis. For example, you could specify this mode and the axis to be (0.0f, 1.0f, 0.0f). This will effectively make renderers sorted to the back as they go up in Y. This is a common feature of 2.5D games.

Note: This has a lower priority compared to other sorting criterias such as SortingLayer.

Additional resources: Camera.transparencySortMode, Camera.transparencySortAxis, GraphicsSettings.transparencySortMode.
