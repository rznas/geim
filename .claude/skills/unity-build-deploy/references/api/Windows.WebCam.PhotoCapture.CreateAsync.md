<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCapture.CreateAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| showHolograms | Will allow you to capture holograms in your photo. |
| onCreatedCallback | This callback will be invoked when the PhotoCapture instance is created and ready to be used. |

### Description

Asynchronously creates an instance of a PhotoCapture object that can be used to capture photos.

If the instance failed to be created, the instance returned will be null. Capturing holograms is currently disabled therefore the showHolograms parameter will be ignored.
