<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.AlwaysLinkAssemblyAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ensure an assembly is always processed during managed code stripping.

Use the [assembly: UnityEngine.Scripting.AlwaysLinkAssembly] attribute to force UnityLinker to process the assembly regardless of whether or not the assembly is referenced by another assembly that is included in the build.

Use this attribute on package or precompiled assemblies that contain one or more methods with the `[RuntimeInitializeOnLoadMethod]` attribute, but which may not contain types used directly or indirectly in any scenes built for the project.

Note that this attribute only instructs UnityLinker to process the assembly. If no code elements match the root marking rules for the assembly, UnityLinker still removes the assembly from the build.

The `[AlwaysLinkAssembly]` attribute can only be defined on the assembly. Declare the attribute in any C# file compiled into the assembly, outside the namespace declaration.

Additional resources: Managed code stripping

```csharp
using UnityEngine;
using UnityEngine.Scripting;[assembly: AlwaysLinkAssembly]namespace Example
{
    public class Foo
    {
        [RuntimeInitializeOnLoadMethod]
        public void Initialize() {}
    }
}
```
