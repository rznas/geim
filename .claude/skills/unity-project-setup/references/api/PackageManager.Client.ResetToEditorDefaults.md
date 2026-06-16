<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Client.ResetToEditorDefaults.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**ResetToEditorDefaultsRequest** A ResetToEditorDefaultsRequest instance, which you can use to get the success or failure of the ResetToEditorDefaults operation.

### Description

Resets the list of packages installed for this project to the editor's default configuration. This operation clears all packages added to the project and keeps only the packages set for the current editor's default configuration.

`ResetToEditorDefaults()` is an asynchronous operation. Before the operation is complete, you can use the `ResetToEditorDefaultsRequest` instance to monitor the asynchronous operation.

 **Note:** Make sure any other Client operations have completed before calling this method. For more information, see the note on the Client class reference page.
