<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.CodeEditor.CodeEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handles interaction with the code editor.

### Static Properties

| Property | Description |
| --- | --- |
| CurrentEditorPath | The path to the external code editor that Unity uses used to open script assets. |
| Editor | A singleton instance of CodeEditor. The Unity Editor references this instance to handle code editor callbacks. |

### Properties

| Property | Description |
| --- | --- |
| CurrentCodeEditor | Returns the current IExternalCodeEditor instance for the code editor. |
| CurrentInstallation | Returns the current CodeEditor.Installation instance for the code editor. |

### Public Methods

| Method | Description |
| --- | --- |
| GetCodeEditorForPath | Each registered code editor package has an instance of IExternalCodeEditor. This method invokes IExternalCodeEditor.TryGetInstallationForPath on that instance. It returns the first instance that returns a valid installation. |
| GetFoundScriptEditorPaths | Collects all installations from registered instances of IExternalCodeEditor. This is done using IExternalCodeEditor.Installations. |
| GetInstallationForPath | Each registered code editor package has an instance of IExternalCodeEditor. This method invokes IExternalCodeEditor.TryGetInstallationForPath on that instance. It finds the first instance that returns a valid installation, and returns the installation. |
| SetCodeEditor | Sets the path to the code editor that Unity uses to open script assets. |

### Static Methods

| Method | Description |
| --- | --- |
| OSOpenFile | Open an application with a quoted string of arguments. |
| ParseArgument | Parse a string using the rules defined under External Tools. |
| QuoteForProcessStart | Quotes a string to pass to Process.Start as a single argument, and appends it to this string builder. |
| Register | Register an instance of IExternalCodeEditor to use when populating Preferences/External Tools menu. Calls ref::Initialize if you select the instance. |
| Unregister | Remove an instance of IExternalCodeEditor from the list of registered code editors. Calls ref::Initialize if you select the instance. |
