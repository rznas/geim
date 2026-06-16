<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamKind.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enum representing the different types of web camera device.

On iOS devices, the WebCamDevice.kind is reported directly by the hardware. On Android devices, the hardware does not report this value, so Unity determines the WebCamDevice.kind by calculating the [Equivalent Focal Length](https://en.wikipedia.org/wiki/35_mm_equivalent_focal_length) from a calculation based on the reported focal length and matrix size. Therefore, on some Android devices, the default camera may be detected as WebCamKind.UltraWideAngle or WebCamKind.Telephoto. As there is currently no web API that returns the focal length of a webcam device, the WebGL applications always return WebCamDevice.kind as WideAngle.

Additional resources: WebCamDevice.kind.

### Properties

| Property | Description |
| --- | --- |
| Unknown | The camera type is unknown. |
| WideAngle | Wide angle (default) camera. |
| Telephoto | A Telephoto camera device. These devices have a longer focal length than a wide-angle camera. |
| ColorAndDepth | Camera which supports synchronized color and depth data (currently these are only dual back and true depth cameras on latest iOS devices). |
| UltraWideAngle | Ultra wide angle camera. These devices have a shorter focal length than a wide-angle camera. |
