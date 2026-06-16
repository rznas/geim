<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCapture.GetUnsafePointerToVideoDeviceController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IntPtr** A native COM pointer to the IVideoDeviceController.

### Description

Provides a COM pointer to the native IVideoDeviceController.

This method provides direct access to the native COM IVideoDeviceController object. Please use caution when calling this method. The IVideoDeviceController object allows you to control the device settings on the camera. 
Please note that a reference will be added to the IVideoDeviceController COM pointer each time this method is invoked. 
The caller is responsible for releasing each instance of the COM pointer.

For more information about the WinRT IVideoDeviceController object, please vist [https://msdn.microsoft.com/en-us/library/windows/apps/windows.media.devices.videodevicecontroller.aspx](https://msdn.microsoft.com/en-us/library/windows/apps/windows.media.devices.videodevicecontroller.aspx)
