<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneViewCameraWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to instantiate a SceneViewCameraWindow window.

The SceneViewCameraWindow window displays settings for the SceneView camera.

### Constructors

| Constructor | Description |
| --- | --- |
| SceneViewCameraWindow | Creates an instance of the SceneViewCameraWindow window. |

### Public Methods

| Method | Description |
| --- | --- |
| GetWindowSize | Retrieves the dimensions of the SceneViewCameraWindow window. |
| OnGUI | A callback used for drawing the GUI controls of the SceneViewCameraWindow window. |

### Events

| Event | Description |
| --- | --- |
| additionalSettingsGui | Subscribe to this event to receive a callback when the SceneViewCameraWindow.OnGUI function is called. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| editorWindow | The EditorWindow that contains the popup content. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateGUI | Creates custom GUI with UI Toolkit for the popup. |
| OnClose | Callback when the popup window is closed. |
| OnOpen | Callback when the popup window is opened. |
