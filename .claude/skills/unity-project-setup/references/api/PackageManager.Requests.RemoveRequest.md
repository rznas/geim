<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Requests.RemoveRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an asynchronous request to remove a package from the project.

The PackageManager Client class returns a RemoveRequest instance when you call the Client.Remove method to remove a package from your project. Use this object to determine when the request is complete.

### Properties

| Property | Description |
| --- | --- |
| PackageIdOrName | The package being removed by this request. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| Error | The error returned by the request, if any. |
| IsCompleted | Whether the request is complete. |
| Status | The request status. |
