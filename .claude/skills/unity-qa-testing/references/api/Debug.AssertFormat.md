<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug.AssertFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| condition | Condition you expect to be true. |
| format | A composite format string. |
| args | Format arguments. |
| context | Object to which the message applies. |

### Description

Assert a condition and logs a formatted error message to the Unity console on failure.

Note that these methods work only if UNITY_ASSERTIONS symbol is defined. This means that if you are building assemblies externally, you need to define this symbol otherwise the call becomes a no-op. (For more details see [System.Diagnostics.ConditionalAttribute](https://msdn.microsoft.com/en-us/library/system.diagnostics.conditionalattribute(v=vs.110).aspx) on the MSDN website.
