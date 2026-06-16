<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-MultipleProgramVariants.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Changing how shaders work using keywords

Resources and techniques for adding **shader** keywords, using them to create branches and shader variants, and toggling them in the Unity Editor or in a script.

| **Page** | **Description** |
| --- | --- |
| Shader keywords workflow | Learn about defining shader keywords to create shaders that share some common code, but have different functionality when you enable or disable a keyword. |
| How Unity compiles branching shaders | Choose dynamic branching or shader variants. |
| Declare shader keywords | Use a `#pragma` directive in HLSL code to declare keywords. |
| Make shader behavior conditional on keywords | Use an `if` statement in HLSL code to mark parts of your shader code conditional based on whether you enable or disable a shader keyword. |
| Toggle shader keywords in the Editor | Add material properties for shader keywords. |
| Toggle shader keywords in a script | Check if a keyword is enabled or disabled, and enable and disable it. |
| Add built-in keyword sets | Use Unity shader directive shortcuts to create sets of shader keywords and variants. |

## Additional resources

- Limit shader variants when you declare shader keywords
- [Unity Shader Variants Optimization & Troubleshooting Tips](https://unity.com/blog/engine-platform/shader-variants-optimization-troubleshooting-tips)
- HLSL `pragma` directives reference
