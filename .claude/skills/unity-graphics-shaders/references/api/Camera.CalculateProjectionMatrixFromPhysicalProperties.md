<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.CalculateProjectionMatrixFromPhysicalProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| output | The calculated matrix. |
| focalLength | Focal length in millimeters. |
| sensorSize | Sensor dimensions in Millimeters. |
| lensShift | Lens offset relative to the sensor size. |
| nearClip | Near plane distance. |
| farClip | Far plane distance. |
| gateFitParameters | Gate fit parameters to use. See GateFitParameters. |

### Description

Calculates the projection matrix from focal length, sensor size, lens shift, near plane distance, far plane distance, and Gate fit parameters. To calculate the projection matrix without taking Gate fit into account, use Camera.GateFitMode.None . Additional resources: GateFitParameters
