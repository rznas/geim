<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug.LogAssertion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| message | String or object to be converted to string representation for display. |
| context | Object to which the message applies. |

### Description

A variant of Debug.Log that logs an assertion message to the console.

Message of a type of LogType.Assert is logged.

Note that these methods work only if UNITY_ASSERTIONS symbol is defined. This means that if you are building assemblies externally, you need to define this symbol otherwise the call becomes a no-op. (For more details see [System.Diagnostics.ConditionalAttribute](https://msdn.microsoft.com/en-us/library/system.diagnostics.conditionalattribute(v=vs.110).aspx) on the MSDN website.
