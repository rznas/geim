<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.Options.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options that define how a progress indicator behaves.

### Properties

| Property | Description |
| --- | --- |
| None | A progress indicator that starts with no other options activated. This is the default. |
| Sticky | A sticky progress indicator displays progress information even after the task is complete. The system does not remove it automatically. You must remove it using a remove operation. |
| Indefinite | An indefinite progress indicator shows that the associated task is in progress, but does not show how close it is to completion. |
| Synchronous | A synchronous progress indicator updates the Editor UI as soon as it reports progress. This is the opposite of the default behavior, which is to report all progress asynchronously. |
| Managed | Unity manages progress indicators. When a domain reload happens, the system cancels tasks that support cancellation, and removes their progress indicators. This is the default for progress indicators started from C#. |
| Unmanaged | An unmanaged progress indicator is one that Unity does not manage. Unity does not cancel unmanaged progress indicators when a domain reload happens. This is the default behavior for internal-use progress indicators started from C++ code. |
