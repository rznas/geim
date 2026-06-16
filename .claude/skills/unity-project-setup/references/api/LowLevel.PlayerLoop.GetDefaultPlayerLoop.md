<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevel.PlayerLoop.GetDefaultPlayerLoop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a Player loop system representing the default update order of all engine systems in Unity.

The default update order is the order in which systems update unless you change it with SetPlayerLoop. The PlayerLoopSystem returned by this method can be modified to create a custom update order which you can set using SetPlayerLoop. If a custom Player loop has been previously set, then use GetCurrentPlayerLoop to retrieve and further modify the current update order.

```csharp
using System.Text;
using UnityEngine.LowLevel;
using UnityEngine;public static class PrintDefaultPlayerLoop
{
    //Retrieve the default Player loop system and iterate over its subsystems to print them.    //Run this method on runtime initialization
    [RuntimeInitializeOnLoadMethod]
    private static void AppStart()
    {
        StringBuilder sb = new();
        // Pass the default Player loop to the recursive print function
        RecursivePlayerLoopPrint(PlayerLoop.GetDefaultPlayerLoop(), sb, 0);
        Debug.Log(sb.ToString());
    }
    // Loop through the Player loop tree structure and add the names of the systems to the StringBuilder
    private static void RecursivePlayerLoopPrint(PlayerLoopSystem playerLoopSystem, StringBuilder sb, int depth)
    {
        if (depth == 0)
        {
            sb.AppendLine("ROOT NODE");
        }
        else if (playerLoopSystem.type != null)
        {
            for (int i = 0; i < depth; i++)
            {
                sb.Append("\t");
            }
            sb.AppendLine(playerLoopSystem.type.Name);
        }
        if (playerLoopSystem.subSystemList != null)
        {
            depth++;
            foreach (var s in playerLoopSystem.subSystemList)
            {
                RecursivePlayerLoopPrint(s, sb, depth);
            }
            depth--;
        }
    }
}
```
