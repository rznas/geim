<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.Archive.ArchiveHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an asynchronous operation handle that references an archive.

Additional resources: ArchiveFileInterface.MountAsync

### Properties

| Property | Description |
| --- | --- |
| Compression | The type of compression the archive uses. |
| IsStreamed | Indicates if the archive contains streamed blocks. |
| JobHandle | JobHandle of the mount operation. |
| Status | Status of the archive mount operation. |

### Public Methods

| Method | Description |
| --- | --- |
| GetFileInfo | Retrieves information about files included in the archive. |
| GetMountPath | Retrieves the path where the archive was mounted. |
| Unmount | Removes the archive from its mount point. |
