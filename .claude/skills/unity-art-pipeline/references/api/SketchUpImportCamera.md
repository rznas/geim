<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SketchUpImportCamera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure to hold camera data extracted from a SketchUp file.

When importing a SketchUp file, Unity retrieves the current camera view the file is saved with and the camera view of all the scenes in the SketchUp file. The camera data of each Scene is stored in SketchUpImportScene

This can be extracted later from SketchUpImporter.

### Properties

| Property | Description |
| --- | --- |
| aspectRatio | Aspect ratio of the camera. |
| farPlane | The near clipping plane distance. |
| fieldOfView | Field of view of the camera. |
| isPerspective | Indicate if the camera is using a perspective or orthogonal projection. |
| lookAt | The position the camera is looking at. |
| nearPlane | The far clipping plane distance. |
| orthoSize | The orthogonal projection size of the camera. This value only make sense if SketchUpImportCamera.isPerspective is false. |
| position | The position of the camera. |
| up | Up vector of the camera. |
