<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.PreserveAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

PreserveAttribute prevents byte code stripping from removing a class, method, field, or property.

When you create a build, Unity will try to strip unused code from your project. This is great to get small builds. However, sometimes you want some code to not be stripped, even if it looks like it is not used. This can happen for instance if you use reflection to call a method, or instantiate an object of a certain class. You can apply the [Preserve] attribute to classes, methods, fields and properties. In addition to using PreserveAttribute, you can also use the traditional method of a link.xml file to tell the linker to not remove things. PreserveAttribute and link.xml work for both the Mono and IL2CPP scripting backends.

For more details on `[Preserve]` and link.xml, refer to Managed code stripping.

```csharp
using UnityEngine;
using System.Collections;
using System.Reflection;
using UnityEngine.Scripting;public class NewBehaviourScript : MonoBehaviour
{
    void Start()
    {
        ReflectionExample.InvokeBoinkByReflection();
    }
}public class ReflectionExample
{
    static public void InvokeBoinkByReflection()
    {
        typeof(ReflectionExample).GetMethod("Boink", BindingFlags.NonPublic | BindingFlags.Static).Invoke(null, null);
    }    // No other code directly references the Boink method, so when when stripping is enabled,
    // it will be removed unless the [Preserve] attribute is applied.
    [Preserve]
    static void Boink()
    {
        Debug.Log("Boink");
    }
}
```

For 3rd party libraries that do not want to take on a dependency on UnityEngine.dll, it is also possible to define their own PreserveAttribute. The code stripper will respect that too, and it will consider any attribute with the exact name "PreserveAttribute" as a reason not to strip the thing it is applied on, regardless of the namespace or assembly of the attribute.
