<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.GetParameter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the parameter to obtain. |

### Returns

**AnimatorControllerParameter** The parameter at the given index.

### Description

Obtains a reference to the AnimatorControllerParameter at the given index.

Throws an `IndexOutOfRangeException` when the index is not in the range from greater than or equal to 0 to less than Animator.parameterCount.

```csharp
using UnityEngine;

// This example demonstrates how to use the Animator.GetParameter method to get information about the parameters of an Animator controller.
[RequireComponent(typeof(Animator))]
public class GetParameterExample : MonoBehaviour
{
    Animator m_Animator;

    void Start()
    {
        m_Animator = GetComponent<Animator>();

        for (var i = 0; i < m_Animator.parameterCount; i++)
        {
            var parameter = m_Animator.GetParameter(i);
            Debug.Log($"Parameter {i}: {parameter.name} ({parameter.type})");
        }
    }
}
```

Additional resources: AnimationParameters manual. AnimatorController.parameters for accessing the list of parameters.
