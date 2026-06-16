<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/writing-shader-tags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Configure when Unity uses a shader

Resources for using `#pragma` and `Tag` blocks in **ShaderLab** to configure when Unity compiles and runs a **shader**.

| **Page** | **Description** |
| --- | --- |
| Set the rendering pipeline and render pass for a shader | Use a `Tag` statement to set the **render pipeline** and render order for a shader. |
| Set a shader to require a package | Use a `PackageRequirements` block to add package requirements to a subshader or a pass. |
| Set a shader to require a shader model or GPU feature | Use a `#pragma target` or `#pragma require` statement to set the minimum shader model or GPU feature for a shader. |
| Set the graphics API or platform for a shader | Use a `#pragma only_renderers` or `#pragma exclude_renderers` statement to set the graphics API or platform for a shader. |

## Additional resources

- Replace shaders at runtime in the Built-In Render Pipeline
