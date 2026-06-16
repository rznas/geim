<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.RequireAttributeUsagesAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Only allowed on attribute types. If the attribute type is marked, then so too will all CustomAttributes of that type.

Note that Low and Medium Managed Stripping Levels do not remove any CustomAttributes.

```csharp
using System;
using UnityEngine;
using UnityEngine.Scripting;public class NewBehaviourScript : MonoBehaviour
{
    void Start()
    {
        var f = new Foo();
        foreach (var attr in f.GetType().CustomAttributes)
        {
            if (attr.AttributeType == typeof(TypeUsedAttribute))
            {
                Debug.Log(attr.AttributeType);
            }
        }
    }
}[TypeUsed] // Will survive because TypeUsedAttribute is used
[Required] // Will survive because RequiredAttribute has the attribute [RequireAttributeUsages]
[UnusedAndNotRequiredAttribute] // Is considered valid for managed code stripping to remove
class Foo
{
}
class TypeUsedAttribute : Attribute
{
}[RequireAttributeUsages]
class RequiredAttribute : Attribute
{
}class UnusedAndNotRequiredAttribute : Attribute
{
}
```
