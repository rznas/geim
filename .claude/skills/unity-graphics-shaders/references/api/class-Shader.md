<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-Shader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create a shader file

A shader asset is an asset in your Unity project that defines a Shader object. It’s a text file with a `.shader` extension. It contains shader code.

1. Select **Assets** > **Create** > **Shader** from the main menu.
2. Create a shader.

You can create the following types of shaders:

| Shader type | Description |
| --- | --- |
| Standard Surface Shader | A shader that lets you write streamlined shader code that interacts with lighting. |
| Unlit Shader | A basic shader that displays a texture without any lighting. |
| Image Effect Shader | A shader file associated with a C# script that creates an [image effect](https://docs.unity3d.com/Packages/com.unity.postprocessing@latest). |
| Compute Shader | A shader that performs calculations on the GPU, outside of the regular graphics pipeline. |
| **Ray Tracing** Shader | A shader that performs calculations related to ray tracing. |

Unity populates a new `.shader` file in your `Assets` folder with basic code.

## Create a shader file manually

To define a Shader object in **ShaderLab**, use a `Shader` block. This page contains information on using `Shader` blocks.

For information on how a Shader object works, and the relationship between Shader objects, SubShaders and Passes, see Shader objects introduction.

This example code demonstrates the basic syntax and structure of a Shader object. The example Shader object has a single SubShader that contains a single pass. It defines Material properties, a CustomEditor, and a Fallback.

```
Shader "Examples/ShaderSyntax"
{
    CustomEditor = "ExampleCustomEditor"

    Properties
    {
        // Material property declarations go here
    }
    SubShader
    {
        // The code that defines the rest of the SubShader goes here

        Pass
        {
           // The code that defines the Pass goes here
        }
    }

    Fallback "ExampleFallbackShader"
}
```

For example custom shaders that are compatible with different **render pipelines**, see Example custom shaders

## Legacy shader names

Prior to Unity 5.0, some of the functionality of a shader was determined by its path and name. This is still how Unity’s Legacy Shaders work. Changing the name of these shaders can affect their functionality.

## Disable Auto-Upgrade

`UNITY_SHADER_NO_UPGRADE` allows you to disable Unity from automatically upgrading or modifying your shader file.

Unity regularly upgrades shaders to maintain compatibility with changes in syntax, APIs, or rendering pipelines.

## Additional resources

- ShaderLab language reference
- Shader block reference in ShaderLab
- Fallback block in ShaderLab reference
- Create and assign a material
