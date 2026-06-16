<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Display.SetParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | Windows/macOS platforms only. The width of the window. |
| height | Windows/macOS platforms only. The height of the window. |
| x | Windows/macOS platforms only. The x position of the window. |
| y | Windows/macOS platforms only. The y position of the window. |

### Description

Windows platforms only. Sets rendering size and position on screen.

To change the size and position of primary display you must also activate it by calling `Display.displays[0].Activate(0, 0, 0)`.
