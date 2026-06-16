<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WSA.Cursor.SetCustomCursor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The cursor resource id. |

### Description

Set a custom cursor.

This creates new CoreCursor(CoreCursorType::Custom, id) and assigns it to CoreIndependentInputSource.PointerCursor if independent input source is enabled, otherwise it's assigned to CoreWindow.PointerCursor. The resource id for cursor is created inside Win32 .RC file. **Note:** Passing 0 will reset cursor to the arrow icon.
