<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DefaultExecutionOrder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the script execution order for a MonoBehaviour-derived class relative to other MonoBehaviour-derived types.

The `DefaultExecutionOrder` attribute offers a way to specify the execution order between different MonoBehaviour scripts from code, rather than through the Project settings window in the Unity Editor. For more information on script execution order and configuring it in the Editor, refer to Script Execution Order in the Manual.

This attribute targets classes, but it only has an effect on classes that inherit from MonoBehaviour. The default execution order between script components applies only for the event functions Unity calls in a determined order on all active GameObjects as part of their lifecycle, such as MonoBehaviour.Awake and MonoBehaviour.OnEnable. It does not guarantee the relative execution order of callbacks for events that can happen at any time in the running application and that usually apply to a smaller subset of GameObjects, such as MonoBehaviour.OnTriggerEnter.

The integer value supplied as a parameter is equivalent to the integer values set in the **Script Execution Order** section of the **Project settings** window. The integer value assigned to a MonoBehaviour-derived type determines the execution order priority for script components of that type relative to the other MonoBehaviour scripts. Scripts are executed in order from lowest first to highest last, for example: -200, -100, -50, 50, 100, 200.

When multiple scripts have either the same configured execution order or the default execution order, the order of execution between them is not deterministic. While the order might appear consistent during testing, you must never rely on this behavior, because it isn't guaranteed across builds, machines, or Unity versions. Note that assets imported from the asset store or other external sources might include scripts with the same configured execution order as your own scripts. If you rely on deterministic ordering between specific scripts, make sure to configure distinct execution order values for them after import.

**Note**: Use this attribute with caution. Execution order defined in code with `DefaultExecutionOrder` does not show in the **Script Execution Order** section of the Editor's **Project settings**. If you define an execution order for a MonoBehaviour-derived type in code with `DefaultExecutionOrder` but define a different value for the same type in the Editor's **Project settings** window, Unity uses the value defined in the Editor UI.

See Also: MonoBehaviour

```csharp
using UnityEngine;
// Add this script to a GameObject
[DefaultExecutionOrder(50)]
public class ExampleClass : MonoBehaviour
{
// This Start function will execute after the Start functions of any other MonoBehaviour scripts that
// have an execution order < 50 and before any with an execution order > 50. If you define a different
// execution order value for this ExampleClass in the Editor's Script Execution Order settings, the
// value defined in Script Execution Order settings is the one applied at runtime.
    void Start()
    {
        Debug.Log("Execution order 50");
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| order | Integer which defines the execution priority order for a MonoBehaviour-derived class. |

### Constructors

| Constructor | Description |
| --- | --- |
| DefaultExecutionOrder | Sets the script execution order for a MonoBehaviour-derived class to the value of the supplied integer parameter. |
