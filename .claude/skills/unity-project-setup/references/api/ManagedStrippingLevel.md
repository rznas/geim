<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ManagedStrippingLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines how aggressively Unity strips unused managed (C#) code.

When Unity builds your game or application it can strip unused code from the managed dynamically linked libraries used in the project. Stripping code can make the resulting executable significantly smaller, but can sometimes mistakenly remove code that is actually used. The ManagedStrippingLevel Enum defines the options you can use when specifying how aggressively Unity should remove unused code.

Additional resources: PlayerSettings.GetManagedStrippingLevel, PlayerSettings.SetManagedStrippingLevel

### Properties

| Property | Description |
| --- | --- |
| Disabled | Do not strip any code. |
| Low | Remove unreachable managed code to reduce build size and Mono/IL2CPP build times. |
| Medium | Run UnityLinker in a less conservative mode than Low. This will further reduce code size beyond what Low can achieve. However, this additional reduction may come with tradeoffs. Possible side effects may include, having to maintain a custom link.xml file, and some reflection code paths may not behave the same. |
| High | UnityLinker will strip as much as possible. This will further reduce code size beyond what Medium can achieve. However, this additional reduction may come with tradeoffs. Possible side effects may include, managed code debugging of some methods may no longer work. You may need to maintain a custom link.xml file, and some reflection code paths may not behave the same. |
| Minimal | The class libraries, UnityEngine, and Windows Runtime assemblies will be stripped. All other assemblies are copied. |
