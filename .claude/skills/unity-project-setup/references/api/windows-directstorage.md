<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/windows-directstorage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Optimize performance using DirectStorage

DirectStorage is a low-level API developed by Microsoft for Windows PCs. This API can significantly improve performance of your game through faster asset loading and reduced CPU overhead.

Windows PCs use advanced storage drives, such as Non-Volatile Memory Express Solid-State Drives (NVMe SSDs) that can process a large number of I/O requests per second. The [Win32 File I/O APIs](https://learn.microsoft.com/en-us/windows/win32/fileio/file-management-functions) perform suboptimally when interacting with these high speed drives and create significant CPU overhead. The DirectStorage API is designed to fully utilize these NVMe SSD storage drives allowing simultaneous file read operations and provides the following advantages:

- Loads game assets from the storage drives faster
- Reduces the load on CPU allowing it to process other game tasks
- Handles a large number of I/O requests per second
- Supports multiple I/O requests simultaneously in a batch reducing CPU overhead
- Interacts with the NVMe SSD hardware efficiently

Unity provides support for the DirectStorage API, allowing you to make use of these advantages in your project.

**Notes**:

- DirectStorage API is available on both Windows 10 and 11 versions. Performance of your game might vary depending on which Windows version you use. While DirectStorage isn’t fully optimized for Windows 10, your game can perform optimally with Windows 11.
- Unity doesn’t use the DirectStorage decompression feature.

## Use the DirectStorage API in your Unity project

You can enable the DirectStorage API support for asset loading through the Windows Player settings.

**Note**: Unity uses DirectStorage API only when loading the following types of asset data:

- Textures
- Meshes
- Entities asset data in [Data-Oriented Technology Stack (DOTS)](https://unity.com/dots) projects

To enable the DirectStorage API support, follow these steps:

1. Open your Windows project in the Unity Editor.
2. Go to **Edit** > **Project Settings** > **Player**.
3. In the **Other Settings > Configuration** section, enable **Enable DirectStorage**.

Your Unity project now uses DirectStorage API for asset loading. When disabled, Unity can fallback to [Win32 APIs](https://learn.microsoft.com/en-us/windows/win32/fileio/file-management-functions) for File I/O operations.

## Additional resources

- [Synchronous and asynchronous I/O](https://learn.microsoft.com/en-us/windows/win32/fileio/synchronous-and-asynchronous-i-o)
