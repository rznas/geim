<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.CaptureScreenshot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filename | Pathname to save the screenshot file to. |
| superSize | Factor by which to increase resolution. |

### Description

Captures a screenshot at path `filename` as a PNG file.

Use ScreenCapture.CaptureScreenshot instead of obsolete Application.CaptureScreenshot.

If the image file exists already, it will be overwritten. The location where the image is written to can include a directory/folder list. For example on macOS the PNG file could be written to `/tmp/ScreenGrab.png`. With no directory/folder list the image will be written into the Project folder. CaptureScreenshot() can also be used from the Editor, for example in a custom `EditorWindow`. By default the screen grabbed image will also be written into the Project folder. Also, the Game view must be selected in order for the Editor screen capture to work.

When `superSize` parameter is larger than 1, a larger resolution screenshot will be produced. For example, passing 4 will make the screenshot be 4x4 larger than it would normally be. This is useful to produce screenshots for printing.

On mobile platforms the filename is appended to the persistent data path. See Application.persistentDataPath for more information. On Android this function returns immediately. The resulting screenshot is available later.

**Note:** Screenshots can be made from the Editor as described above. In this case only the Game view can be captured. If the Scene view is selected any screenshot will not be written. Switching to the Game view will cause the most recent captured image to be written. See EditorWindow for how an editor-based capture window can be created. If the Game view is current and the Editor button is clicked multiple times the first generated screenshot will be written. `Application.CaptureScreenshot` is a Game specific function.
