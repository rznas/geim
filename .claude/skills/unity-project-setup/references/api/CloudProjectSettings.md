<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CloudProjectSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to retrieve information about the currently selected project and the current Unity ID that is logged in.

### Static Properties

| Property | Description |
| --- | --- |
| coppaCompliance | The current COPPA compliance state. |
| organizationId | The Organization ID, formatted in lowercase with no symbols. |
| organizationKey | The Organization key used to access the dashboard. |
| organizationName | The name of the Organization. |
| projectBound | Returns true if the project has been bound. |
| projectId | The Project ID, or GUID. |
| projectName | The name of the project. |
| userId | The user ID is derived from the user name without the domain (removing all characters starting with '@'), formatted in lowercase with no symbols. |
| userName | The user name is the email used for the user's Unity account. |

### Static Methods

| Method | Description |
| --- | --- |
| GetServiceTokenAsync | Get the service authentication token used for the Service Gateway apis. |
| ShowLogin | This method shows the Unity login popup. |
