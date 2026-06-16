<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour-print.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| message | The message to display in the console. |

### Description

Logs a message to the Unity Console. Functionally equivalent to Debug.Log.

The `print` method is a functionally equivalent alternative to Debug.Log when used in a Monobehaviour script. Refer to Debug.Log for more information.

Additional resources: Debug.Log, Debug.LogWarning, Debug.LogError.

```csharp
using UnityEngine;public class PrintExample : MonoBehaviour
{
    public int playerHealth = 85;
    public int maxHealth = 100;    void Start()
    {
        // Simply print a message in the console
        print("The Start method has been called.");        // Log variables using string interpolation
        print($"Initial player health: {playerHealth}");        // Log a variable using formatting
        float healthPercentage = playerHealth / (float)maxHealth;
        print($"The player's total score is: {healthPercentage:F2}");
    }
}
```
