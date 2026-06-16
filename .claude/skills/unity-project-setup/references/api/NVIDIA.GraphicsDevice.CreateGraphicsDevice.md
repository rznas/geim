<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NVIDIA.GraphicsDevice.CreateGraphicsDevice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| projectID | The projectID of the Unity project. Only the first call to this function uses this ID. |
| appDir | Specifies the directory in which the NVIDIA DLLS are located at. When not used, the system will locate the DLLs right next to the executable of the editor. |

### Returns

**GraphicsDevice** The Device API object to access NVIDIA features. If you call this function again, the function returns the same device, regardless of whether you pass in a different projectID.

### Description

Creates the main API object. Call this method only once in your application.

This function will instantiate the GraphicsDevice. It's safe to execute at any point when the application is alive. Since the device is a direct representation of the hardware graphics card, this method returns the same device if you call it again. If you pass in an appDir or projectID, only the first call to this method instantiates the device object using these parameters.
