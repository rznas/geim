<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-Other.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Group commands with the Category block

Use the **Category** block to group commands that set the render state, so that you can “inherit” the grouped rendering state within the block.

For example, your **Shader** object might have multiple SubShaders, each of which requires blending set to additive. You can use the Category block for that:

```
Shader "example" {
Category {
    Blend One One
    SubShader {
        // ...
    }
    SubShader {
        // ...
    }
    // ...
}
}
```

The Category block does not have an impact on shader performance; it is essentially the same as copy-pasting the code.
