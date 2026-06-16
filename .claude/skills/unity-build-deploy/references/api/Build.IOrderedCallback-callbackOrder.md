<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IOrderedCallback-callbackOrder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a numeric value that determines the order in which the build callback is invoked.

Callbacks with lower values are called before those with higher values, allowing you to control the execution order of build callbacks. This mechanism is particularly useful for resolving conflicts between different callback implementations by specifying their relative order.

It is important to note that complete control over the callback order may not always be feasible, due to the use of callbacks by code that may be outside your control, for example inside packages and inside the implementation of the Unity Editor. For instance, even if you assign a large numeric value to ensure your callback is the last to run, other implementations might specify the same or an even higher value.

```csharp
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEngine;// Example Usage:
// - Add this script to an Editor assembly within your Unity project.
// - Initiate a Player Build.
// - Observe the order of log messages in the Console.// A build callback that demonstrates the use of callback order in Player builds.
class BuildCallbackA : IPreprocessBuildWithContext
{
    public int callbackOrder { get { return 9999; } }
    public void OnPreprocessBuild(BuildCallbackContext ctx)
    {
        Debug.Log("BuildCallbackA: Called second");
    }
}// A build callback that runs before BuildCallbackA due to its lower callback order.
class BuildCallbackB : IPreprocessBuildWithContext
{
    public int callbackOrder { get { return 100; } }
    public void OnPreprocessBuild(BuildCallbackContext ctx)
    {
        Debug.Log("BuildCallbackB: Called first");
    }
}
```
