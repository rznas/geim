<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CameraEditor.Settings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains all drawable elements of the CameraEditor.

Use this class to access the renderable settings for the CameraEditor. This can be used as a helper to draw a custom CameraEditor.

### Properties

| Property | Description |
| --- | --- |
| allowDynamicResolution | Exposed SerializedProperty for the inspected Camera. |
| allowMSAA | Exposed SerializedProperty for the inspected Camera. |
| anamorphism | Exposed SerializedProperty for the inspected Camera. |
| aperture | Exposed SerializedProperty for the inspected Camera. |
| backgroundColor | Exposed SerializedProperty for the inspected Camera. |
| barrelClipping | Exposed SerializedProperty for the inspected Camera. |
| bladeCount | Exposed SerializedProperty for the inspected Camera. |
| clearFlags | Exposed SerializedProperty for the inspected Camera. |
| cullingMask | Exposed SerializedProperty for the inspected Camera. |
| curvature | Exposed SerializedProperty for the inspected Camera. |
| depth | Exposed SerializedProperty for the inspected Camera. |
| farClippingPlane | Exposed SerializedProperty for the inspected Camera. |
| focalLength | Exposed SerializedProperty for the inspected Camera. |
| focusDistance | Exposed SerializedProperty for the inspected Camera. |
| fovAxisMode | Exposed SerializedProperty for the inspected Camera. |
| gateFit | Exposed SerializedProperty for the inspected Camera. |
| HDR | Exposed SerializedProperty for the inspected Camera. |
| iso | Exposed SerializedProperty for the inspected Camera. |
| lensShift | Exposed SerializedProperty for the inspected Camera. |
| nearClippingPlane | Exposed SerializedProperty for the inspected Camera. |
| normalizedViewPortRect | Exposed SerializedProperty for the inspected Camera. |
| occlusionCulling | Exposed SerializedProperty for the inspected Camera. |
| orthographic | Exposed SerializedProperty for the inspected Camera. |
| orthographicSize | Exposed SerializedProperty for the inspected Camera. |
| renderingPath | Exposed SerializedProperty for the inspected Camera. |
| sensorSize | Exposed SerializedProperty for the inspected Camera. |
| shutterSpeed | Exposed SerializedProperty for the inspected Camera. |
| stereoConvergence | Exposed SerializedProperty for the inspected Camera. |
| stereoSeparation | Exposed SerializedProperty for the inspected Camera. |
| targetDisplay | Exposed SerializedProperty for the inspected Camera. |
| targetEye | Exposed SerializedProperty for the inspected Camera. |
| targetTexture | Exposed SerializedProperty for the inspected Camera. |
| verticalFOV | Exposed SerializedProperty for the inspected Camera. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyModifiedProperties | See SerializedObject.ApplyModifiedProperties. |
| DrawBackgroundColor | Draws the default [[CameraEditor] background color widget. |
| DrawClearFlags | Draws the default [[CameraEditor] clear flags widget. |
| DrawClippingPlanes | Draws the default [[CameraEditor] clipping planes widget. |
| DrawCullingMask | Draws the default [[CameraEditor] culling mask widget. |
| DrawDepth | Draws the default [[CameraEditor] depth widget. |
| DrawDynamicResolution | Draws the default [[CameraEditor] dynamic resolution widget. |
| DrawHDR | Draws the default [[CameraEditor] HDR widget. |
| DrawMSAA | Draws the default [[CameraEditor] MSAA widget. |
| DrawMultiDisplay | Draws the default [[CameraEditor] muliple display widget. |
| DrawNormalizedViewPort | Draws the default [[CameraEditor] viewport widget. |
| DrawOcclusionCulling | Draws the default [[CameraEditor] occlusion culling widget. |
| DrawProjection | Draws the default [[CameraEditor] projection widget. |
| DrawRenderingPath | Draws the default [[CameraEditor] rendering path widget. |
| DrawTargetEye | Draws the default [[CameraEditor] target eye widget. |
| DrawTargetTexture | Draws the default [[CameraEditor] target texture widget. |
| OnEnable | Populate the settings object with data linked to the Camera SerializedObject. |
| Update | See SerializedObject.Update. |

### Static Methods

| Method | Description |
| --- | --- |
| DrawCameraWarnings | Draws the default [[CameraEditor] warnings issued by a camera. |
