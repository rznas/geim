<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderData.VariantCompileInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Information about a compiled shader variant.

Represents the results of compiling a variant using ShaderData.Pass.CompileVariant. This struct contains the success status and potential error messages, as well as some reflection data alongside the raw shader binary output.

```csharp
using UnityEditor;
using UnityEngine;

// Adds a new Editor menu item called Example.
// Select a shader asset in the Project window, then select
// Example > PrintVariantCompileInfoExample from the Editor menu.
// Information of a compiled variant will be printed as debug log.
public class PrintVariantCompileInfoExample
{
    [MenuItem("Example/PrintVariantCompileInfoExample")]
    static void MenuCallback()
    {
        if (Selection.activeObject is Shader selectedShader)
        {
            // Get the first pass of the the first subshader
            ShaderData shaderData = ShaderUtil.GetShaderData(selectedShader);
            ShaderData.Subshader subShader = shaderData.GetSubshader(0);
            ShaderData.Pass pass = subShader.GetPass(0);

            // Compile a vertex shader variant without any keywords
            var keywords = new string[] { };
            ShaderData.VariantCompileInfo info = pass.CompileVariant(UnityEditor.Rendering.ShaderType.Vertex, keywords, UnityEditor.Rendering.ShaderCompilerPlatform.D3D, BuildTarget.StandaloneWindows64);

            // Log the information Unity has about the compiled variant
            if (info.Success)
            {
                Debug.Log("Compiled size: " + info.ShaderData.Length + " bytes");

                string msg = "Vertex attributes: ";
                foreach (var a in info.Attributes)
                {
                    msg += a.ToString() + " ";
                }
                Debug.Log(msg);

                msg = "Texture bindings: ";
                foreach (var tex in info.TextureBindings)
                {
                    msg += tex.Name + "-" + tex.Index + " ";
                }
                Debug.Log(msg);

                msg = "Constant buffers: ";
                foreach (var cb in info.ConstantBuffers)
                {
                    msg += cb.Name + "-" + cb.Size + "bytes ";
                }
                Debug.Log(msg);
            }
            else // If the compilation fails, Unity prints the errors
            {
                string failureMsg = "Compilation failed: ";
                foreach(var msg in info.Messages)
                {
                    failureMsg += msg.message + "\n";
                }
            }
        }
    }
}
```

Additional resources: ShaderData.Pass.CompileVariant, ShaderData, ShaderUtil.GetShaderData.

### Properties

| Property | Description |
| --- | --- |
| Attributes | Vertex attributes the compiled variant uses (Read Only). |
| ConstantBuffers | Constant buffers the compiled variant uses (Read Only). Some platforms don't have constant buffers; however, Unity reports all global constants/uniforms in a single constant buffer. |
| Messages | Stores errors and warnings produced during compilation (Read Only). |
| ResourceBindings | Detailed information about every resource binding the compiled variant uses, in a single combined array (Read Only). |
| ShaderData | Stores the raw platform-specific bytecode for the compiled shader (Read Only). |
| Success | Indicates whether the variant compilation succeeded (Read Only). If it did, it is true. Otherwise, this is false and ShaderData.VariantCompileInfo.Messages contains the errors. |
| TextureBindings | Texture bindings the compiled variant uses (Read Only). |
