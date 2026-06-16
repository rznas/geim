<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.FileHandle.Status.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current status of this FileHandle.

After you call AsyncReadManager.OpenFileAsync, the FileHandle enters the FileStatus.Pending state. Once the open operation completes, the status changes to either FileStatus.Open or FileStatus.Closed (if the file failed to open).

Note: When the close operation completes, the FileHandle is disposed and becomes invalid. You can use the JobHandle returned by Close to check for close operation completion.
