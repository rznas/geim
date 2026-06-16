<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HideInCallstackAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Marks the methods you want to hide from the Console window call stack. When you hide these methods they are removed from the detail area of the selected message in the Console window.

 **Note**: The intended use for `HideInCallstackAttribute` is to reduce call stack clutter by hiding trivial helper methods. If you apply `[HideInCallstack]` to the method that actually writes to the log, although the name is hidden from the detail view, the Console window still provides a clickable link to the called method.

To hide the marked methods, click the Console menu button then select **Strip logging callstack** from the menu.

```csharp
//This example demonstrates hiding of a helper method from the Console call stack.
//Toggle the "Strip logging callstack" option in the Console menu to see the effect.using UnityEngine;public class HideInCallstackExample : MonoBehaviour
{
    void Start()
    {
        // This call goes through a hidden helper before reaching the actual log writer.
        // The hidden helper will not appear in the call stack.
        LogThroughHiddenHelper("[HideInCallstack] Message via hidden helper.");        // This call goes directly to the actual log writer.
        LogDirect("Direct message.");
    }    // Hidden helper: is not shown in the Console's call stack.
    [HideInCallstack]
    private static void HiddenHelper(object msg)
    {
        ActualLogWriter(msg);
    }    // Public entry that uses the hidden helper.
    public static void LogThroughHiddenHelper(object msg)
    {
        HiddenHelper(msg);
    }    // Public entry that calls the actual logger directly (for comparison).
    public static void LogDirect(object msg)
    {
        ActualLogWriter(msg);
    }    // The final method that actually writes to the Unity console and remains visible in the call stack.
    private static void ActualLogWriter(object msg)
    {
        Debug.Log(msg);
    }
}
```
