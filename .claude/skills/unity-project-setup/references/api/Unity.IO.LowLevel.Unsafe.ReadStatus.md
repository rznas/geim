<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.ReadStatus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The state of an asynchronous file request.

These enumerations represent the raw underlying states of an asynchronous file request.

When submitted, all requests enter the ReadStatus.InProgress state while they are pending execution or in progress. On completion, the state changes to ReadStatus.Complete, ReadStatus.Truncated or ReadStatus.Failed. If the read is canceled before completion, the state becomes ReadStatus.Canceled.

A truncated read occurs when attempting to access beyond the end of a file.

### Properties

| Property | Description |
| --- | --- |
| Complete | The asynchronous file request completed successfully and all read operations within it were completed in full. |
| InProgress | The asynchronous file request is in progress. |
| Failed | One or more of the asynchronous file request's read operations have failed. |
| Truncated | The asynchronous file request has completed but one or more of the read operations were truncated. |
| Canceled | The asynchronous file request was canceled before the read operations were completed. |
