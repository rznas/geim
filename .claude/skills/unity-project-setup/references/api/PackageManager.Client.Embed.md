<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Client.Embed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| packageName | The name of the package to embed. This package must be a direct dependency of the project. `ArgumentException` is thrown if `packageName` is `null` or empty. |

### Returns

**EmbedRequest** An EmbedRequest instance, which you can use to get the PackageInfo representing the embedded package from the `EmbedRequest.Result` property.

### Description

Embeds a package inside the project.

The Package Manager makes a copy of the original package inside the `Packages` folder of the project. All files inside that package become writable.

 `Embed()` is an asynchronous operation. Before the operation is complete, you can use the `EmbedRequest` instance to monitor the asynchronous operation.

 
**Note:** Make sure any other Client operations have completed before calling this method. For more information, see the note on the Client class reference page.
