<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.RequiredMemberAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When a type is marked, all of its members with [RequiredMember] are marked.

```csharp
using System;
using UnityEngine;
using UnityEngine.Scripting;public class NewBehaviourScript : MonoBehaviour
{
    void Start()
    {
        new UsedFoo();
    }
}class UsedFoo
{
    // Will survive managed code stripping because UsedFoo is used
    [RequiredMember]
    public int Field;    // Will survive managed code stripping because UsedFoo is used
    [RequiredMember]
    public void Method()
    {
    }    // The property, property getter method, and property setter method will survive managed code stripping because UsedFoo is used
    [RequiredMember]
    public int Property1 { get; set; }    // The property and property getter method will survive managed code stripping because UsedFoo is used
    public int Property2 { [RequiredMember] get; set; }    // The property and property setter method will survive managed code stripping because UsedFoo is used
    public int Property3 { get; [RequiredMember] set; }    // The event, the add method, and the remove method will survive managed code stripping because UsedFoo is used
    [RequiredMember]
    public event EventHandler Event;
}class UnusedFoo
{
    // Will not survive stripping because UnusedFoo is not used
    [RequiredMember]
    public int Field;    // Will not survive stripping because UnusedFoo is not used
    [RequiredMember]
    public void Method()
    {
    }    // Will not survive stripping because UnusedFoo is not used
    [RequiredMember]
    public int Property { get; set; }    // Will not survive stripping because UnusedFoo is not used
    [RequiredMember]
    public event EventHandler Event;
}
```
