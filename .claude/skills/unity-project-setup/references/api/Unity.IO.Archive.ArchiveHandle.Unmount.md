<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.Archive.ArchiveHandle.Unmount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**JobHandle** Returns the JobHandle of the unmount operation.

### Description

Removes the archive from its mount point.

You must call this function for archives that mounted successfully or failed, otherwise you will have a memory leak.
