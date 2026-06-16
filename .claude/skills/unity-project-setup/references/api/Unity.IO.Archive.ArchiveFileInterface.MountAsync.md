<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.Archive.ArchiveFileInterface.MountAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| namespaceId | ContentNamespace identifier. |
| filePath | Path of the archive on disk. |
| prefix | Mount point identifier. Set to an empty string if no prefix should be used. |

### Returns

**ArchiveHandle** Returns an operation handle that references the archive.

### Description

Loads all files in an archive to a mount point.

The mounted files can only be accessed through APIs that use Unity's virtual file system such as AsyncReadManager. They cannot be accessed through the regular C# APIs such as System.IO.
