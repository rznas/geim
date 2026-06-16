<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CameraEditorUtils-virtualCameraPreviewInstantiator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Override this function to pass your own Camera provider to generate previews for virtual cameras.

When set, the Cameras Overlay uses the returned Camera to generate previews for virtual cameras, such as the Cinemachine Camera, which are not represented by a Camera instance. This is useful when a camera GameObject must have additional components.
