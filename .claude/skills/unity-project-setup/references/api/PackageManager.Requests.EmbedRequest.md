<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Requests.EmbedRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an asynchronous request to embed a package inside a project.

The PackageManager Client class returns an EmbedRequest instance when you call the Client.Embed method to embed a package inside your project. Use this object to determine when the request is complete and to access the result.

 Once the request is complete, you can retrieve the PackageInfo instance from the Result property.

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| Error | The error returned by the request, if any. |
| IsCompleted | Whether the request is complete. |
| Status | The request status. |
| Result | A property that provides access to the result of a completed Package Manager request operation. |
