<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.PhotoCaptureFrame.GetUnsafePointerToBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IntPtr** A native COM pointer to the IMFMediaBuffer which contains the image data.

### Description

Provides a COM pointer to the native IMFMediaBuffer that contains the image data.

This method provides very low level access to the native COM IMFMediaBuffer object. Therefore care and caution should be applied when using this method. 
Please note that each time this method is invoked, an added reference will be applied to the IMFMediaBuffer COM pointer. 
The caller is responsible for releasing each instance of the COM pointer.

For more information about the WinRT IMFMediaBuffer object, please visit [https://msdn.microsoft.com/en-us/library/windows/desktop/ms696261(v=vs.85).aspx](https://msdn.microsoft.com/en-us/library/windows/desktop/ms696261(v=vs.85).aspx)
