<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ConsoleWindowUtility.GetConsoleLogCounts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retrieve the current counts of messages in the Console Window.

Returns the current number of Error, Warning, and Log messages that are currently present in the Console Window.

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    [MenuItem("Example/Print Log Counts")]
    static void PrintLogCounts()
    {
        ConsoleWindowUtility.GetConsoleLogCounts(out int error, out int warning, out int log);
        Debug.Log($"Errors: {error}, Warnings: {warning}, Info: {log}");
    }
}
```
