<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/StandardShaderMaterialParameterRenderingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Set the Rendering Mode in the Standard Shader using a script

When you change the **Rendering Mode**, Unity applies a number of changes to the Material. There is no single C# API to change the Rendering Mode of a Material, but you can make the same changes in your code.

To see the changes that Unity makes when you change the **Rendering Mode**:

1. Download the source code for Unity’s built-in **shaders**. See Make your own shader for instructions.
2. Open the file *StandardShaderGUI.cs*.
3. Locate the area of the file that looks like this, and observe the changes for each **Rendering Mode**.

```
switch (blendMode)
        {
            case BlendMode.Opaque:
               // Changes associated with Opaque Rendering Mode are here
                break;
            case BlendMode.Cutout:
                // Changes associated with Cutout Rendering Mode are here
                break;
            case BlendMode.Fade:
                // Changes associated with Fade Rendering Mode are here
                break;
            case BlendMode.Transparent:
                // Changes associated with Transparent Rendering Mode are here
                break;
        }
```
