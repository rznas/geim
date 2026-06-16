<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/unity-attributes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Unity attributes

[Attributes](https://learn.microsoft.com/en-us/dotnet/csharp/advanced-topics/reflection-and-attributes/) in C# are metadata markers that can be placed above a class, property, or method declaration to indicate special behaviour.

There are many attributes defined in the .NET libraries and Unity also provides a number of custom, Unity-specific attributes. For example, you can add the `HideInInspector` attribute above a property declaration to prevent the **Inspector** from showing the property, even if it is public. Attributes are specified in square brackets above the declaration as follows:

```
[HideInInspector]
public float strength;
```

For the full list of `UnityEngine` attributes, refer to the list under **UnityEngine > Attributes** in the Scripting API reference, which begins with AddComponentMenu.

For the full list of `UnityEditor` attributes, refer to the list under **UnityEditor > Attributes** in the Scripting API reference, which begins with AssetPostprocessorStaticVariableIgnoreAttribute.

**Note:** Do not use the .NET [ThreadStatic](http://msdn.microsoft.com/en-us/library/system.threadstaticattribute.aspx) attribute as this causes a crash if you add it to a Unity script.

## Additional resources

- [Unity Learn: attributes](https://learn.unity.com/tutorial/attributes#)
- Inspecting scripts
- Script serialization rules
