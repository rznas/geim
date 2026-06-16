<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevel.PlayerLoop.GetCurrentPlayerLoop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a Player loop system representing the current update order of all engine systems in Unity.

The PlayerLoopSystem returned by this method can be modified to create a custom update order which you can set using SetPlayerLoop. If no custom loop has been set with SetPlayerLoop, then `GetCurrentPlayerLoop` returns the same result as GetDefaultPlayerLoop.

 Additional resources: PlayerLoopSystem

```csharp
using System.Text;
using UnityEngine.LowLevel;
using UnityEngine;public static class PrintCurrentPlayerLoop
{
    //Retrieve the current Player loop system and iterate over its subsystems to print them.    //Run this method on runtime initialization
    [RuntimeInitializeOnLoadMethod]
    private static void AppStart()
    {
        StringBuilder sb = new();
        // Pass the current Player loop to the recursive print function
        RecursivePlayerLoopPrint(PlayerLoop.GetCurrentPlayerLoop(), sb, 0);
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
