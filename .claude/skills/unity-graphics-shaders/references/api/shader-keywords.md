<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-keywords.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Shader keywords workflow

To control how shaders behave in different situations, use **shader** keywords. Each keyword acts as a toggle to change the shader’s behavior.

You can use keywords to do the following:

- Configure different settings for a material.
- Make a shader work differently on different hardware.
- Dynamically change the behavior of a shader at runtime.

Use the following steps:

1. Declare a shader keyword, or a set of shader keywords.
2. Use an `if` statement to branch the shader code depending on the state of the keyword.
3. Toggle the shader keyword to control which branch is active.

## Declare a shader keyword

Declare a shader keyword, or a set of shader keywords, using a `#pragma` statement. The following example defines a set of 2 keywords called `RED` and `GREEN`:

```
#pragma shader_feature RED GREEN
```

For more information, refer to Declare shader keywords.

## Branch the shader code

Use an `if` statement to make parts of your shader code execute based on the state of the keyword. For example, use the `RED` and `GREEN` keywords to control the color the shader outputs:

```
void frag() : SV_Target {

    if (RED)
    {
        // Output red
    }
    
    else if (GREEN)
    {
        // Output green
    }

}
```

For more information, refer to Make shader behavior conditional on keywords.

**Note:** You can also use HLSL conditional statements like `if` and preprocessor statements like `#if` without using shader keywords.

## Toggle the shader keyword

To control the shader from the Editor or at runtime, refer to the following:

- Toggle shader keywords in the Editor
- Toggle shader keywords in a script

## Additional resources

- How Unity compiles branching shaders
- Limit shader variants when you declare shader keywords
- Default keyword sets
