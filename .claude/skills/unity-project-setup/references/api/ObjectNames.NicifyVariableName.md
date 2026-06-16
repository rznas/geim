<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectNames.NicifyVariableName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Make a displayable name for a variable.

This function will insert spaces before capital letters and remove optional `m_`, `_` or `k` followed by uppercase letter in front of the name.

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    private void Start()
    {
        // prints "My Variable"
        print(ObjectNames.NicifyVariableName("MyVariable"));
        // prints "The Other Variable"
        print(ObjectNames.NicifyVariableName("m_TheOtherVariable"));
        // prints "Some Constant"
        print(ObjectNames.NicifyVariableName("kSomeConstant"));
    }
}
```
