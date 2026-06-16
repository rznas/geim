<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentFile.UnloadAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**ContentFileUnloadHandle** A handle that can be used to track the status of the unload operation.

### Description

Begin an asynchronous unload of the ContentFile.

If you call this while a load is in progress, it will attempt to cancel the loading process.

This must be called in order to release resources, even when the ContentFile load operation was not successful.

An exception will be thrown if this ContentFile is being used as a dependency by another ContentFile. In this case, the other file must be unloaded first.
