<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.ExternalCall.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| functionName | Name of the function to call. |
| args | Array of arguments passed in the call. |

### Description

Calls a function in the web page that contains the WebGL Player.

`ExternalCall` calls `functionName` in the web page containing the WebGL player, passing the given arguments to it. Supported argument types are the primitive types (`string`, `int`, `float`, /char/) and arrays of such types. Any other objects are converted to `string` using `ToString` and passed as `string`s.

This functionality is now obsolete. See Interacting with Browser scripting for alternatives.

Additional resources: Application.ExternalEval.
