<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.RequiredInterfaceAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When a type is marked, all interface implementations of the specified types will be marked.

```csharp
using System;
using UnityEngine;
using UnityEngine.Scripting;public class NewBehaviourScript : MonoBehaviour
{
    void Start()
    {
        new Foo();
        new Bar();
        new Jar();
        new GenericFoo<int>();
    }
}interface IUnused {}interface IFoo {}interface IGeneric<T> {}// Foo will retain IFoo.  IUnused will be removed
[RequiredInterface(typeof(IFoo))]
class Foo : IFoo, IUnused {}// Bar will retain IGeneric<int> and IGeneric<double>.  IGeneric<string> will be removed
[RequiredInterface(typeof(IGeneric<int>))]
[RequiredInterface(typeof(IGeneric<double>))]
class Bar : IGeneric<int>, IGeneric<string>, IGeneric<double> {}// Jar will retain IGeneric<int>, IGeneric<string>, and IGeneric<double>
[RequiredInterface(typeof(IGeneric<>))]
class Jar : IGeneric<int>, IGeneric<string>, IGeneric<double> {}// GenericFoo<T> will retain IGeneric<T>
[RequiredInterface(typeof(IGeneric<>))]
class GenericFoo<T> : IGeneric<T> {}
```
