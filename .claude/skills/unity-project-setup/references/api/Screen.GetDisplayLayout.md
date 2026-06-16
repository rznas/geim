<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen.GetDisplayLayout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| displayLayout | Connected display information. |

### Description

Retrieves layout information about connected displays such as names, resolutions, and refresh rates.

This API does not allocate managed memory outside of the Editor. You can call this method without generating garbage or triggering the garbage collector. It is only supported on Linux, macOS, and Windows platforms.

Additional resources: DisplayInfo, Screen.GetDisplayLayout
