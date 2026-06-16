<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.VirtualFileSystem.GetLocalFileSystemName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vfsFileName | Virtual file entry to find. |
| localFileName | Out parameter containing the file on the local filesystem. |
| localFileOffset | Out parameter containing the offset inside of file on the local filesystem. |
| localFileSize | Out parameter containing the size inside of file on the local filesystem. |

### Returns

**bool** Details were successfully found.

### Description

This method looks up the virtual file entry specified, and returns the details of that file within the file on the local filesystem.

It populates the localFileName, localFileOffset, and localFileSize parameters with the path of the file on the local filesystem that contains the virtual file, and the offset and size of the virtual file within it. This method returns true if the details were successfully found. It returns false if it was not possible. This can happen if the virtual file is contained in a memory filesystem, or in a compressed file.
