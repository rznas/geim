<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-ShadingLanguage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to writing shaders in code

How you write custom **shaders** in Unity depends on the **render pipeline** you use:

- For guidance and examples for the Built-in Render Pipeline, see Example shaders for the Built-in Render Pipeline.
- For guidance and examples for the the Universal Render Pipeline (URP), see URP: Writing custom shaders.
- It is not recommended to write your own shader programs for HDRP, due to the complexity of the code. Instead, use Shader Graph to create Shader objects without writing code.
- For an example of a simple vertex and fragment shader for a custom Scriptable Render Pipeline, see Creating a simple render loop in a custom render pipeline.

## Languages

When you write shaders for Unity, you use the following languages:

- A programming language called HLSL. Use this to write the shader programs themselves. For more information on HLSL, see HLSL in Unity.
- A Unity-specific language called ShaderLab. Use this to define a Shader object, which acts as a container for your shader programs. For more information on ShaderLab, see ShaderLab.

You do not need to use different languages for different platforms; Unity compiles your HLSL and ShaderLab code into different languages for different graphics APIs. For more information, see Shader compilation.

**Note:** You can also directly write your shader programs in GLSL and Metal if you want. This is not recommended or needed as part of a normal workflow. For more information on using GLSL, see GLSL in Unity.

### ShaderLab

ShaderLab is a declarative language that you use in shader source files. It uses a nested-braces syntax to describe a Shader object.

There are many things that you can define in ShaderLab, but the most common are:

- Defining the overall structure of the Shader object. See ShaderLab: creating a Shader, ShaderLab: creating a SubShader, and ShaderLab: creating a Pass.
- Using code blocks to add shader programs written in HLSL. See ShaderLab: adding shader programs.
- Using commands to set the render state of the GPU before it executes a shader program, or to perform an operation involving another Pass. See ShaderLab: commands.
- Exposing properties from your shader code so you can edit them in the material **Inspector** and save as part of a material asset. See ShaderLab: defining material properties.
- Specifying package requirements for SubShaders and Passes. This enables Unity to run certain SubShaders and Passes only when particular packages are installed in the Unity project. See ShaderLab: specifying package requirements.
- Defining fallback behavior for when Unity cannot run any of the SubShaders with a Shader object on the current hardware. See ShaderLab: assigning a fallback.

## Different ways of writing shaders

There are different ways of writing shaders:

- The most common way is to write vertex and fragment shaders in HLSL. For more information, see Writing vertex and fragment shaders.
- In the Built-in Render Pipeline, you can also write Surface Shaders. They are a simplified way of writing shaders that interact with lighting. For more information, see Surface Shaders.
- For backwards compatibility reasons, Unity also supports “fixed function style” ShaderLab commands. These let you write shaders in ShaderLab, without using HLSL. This is no longer recommended, but it is documented on the page ShaderLab legacy functionality.

## Writing shaders for different graphics APIs

In some cases, you must write your shader code differently depending on the graphics API that you are targeting. For information on this, see Writing shaders for different graphics APIs.
