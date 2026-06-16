<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines which faces Unity culls.

The following example shows how to use this enum to set the culling mode of a GameObject from a C# script.

 Use the following code in your shader to declare the `_Cull` property that you can change from a C# script:

```csharp
Shader "Example/SetCullMode"
                        {
                            Properties
                            {
                                [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull", Integer) = 1
                            }
                            SubShader
                            {
                                Cull [_Cull]
                                // Insert your shader code here
                            }
                        }
```

In a C# script, use the following code to change the `CullMode` property:

```csharp
public void SetCullMode()
                        {
                            _material.SetInteger("_Cull", (int)UnityEngine.Rendering.CullMode.Back);
                        }
```

### Properties

| Property | Description |
| --- | --- |
| Off | Disable culling. |
| Front | Cull front-facing geometry. |
| Back | Cull back-facing geometry. |
