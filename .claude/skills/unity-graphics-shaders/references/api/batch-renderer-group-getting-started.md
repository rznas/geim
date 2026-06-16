<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/batch-renderer-group-getting-started.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Set up your project for the BatchRendererGroup API in URP

Before you use BRG, your project must support it. BRG requires your project to:

- Use the SRP Batcher. To enable the SRP Batcher, see Using the SRP Batcher.
- Keep BRG shader variants. To do this, select **Edit** > **Project Settings** > **Graphics**, and set **BatchRendererGroup variants** to **Keep all**.
- If your project uses URP, it’s best practice to disable the **Strip Unused Variants** Global Setting. This helps to avoid problems with Unity stripping necessary DOTS Instancing variants. For more information, see DOTS Instancing shaders. To find this setting, select **Edit** > **Project Settings** > **URP Global Settings**.
- Allow [unsafe code](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/unsafe-code). To do this, enable the **Allow ‘unsafe’ Code** Player Setting.

**Note:** The BatchRendererGroup uses DOTS Instancing shaders, but it doesn’t require any DOTS packages. The name reflects the new data-oriented way to load instance data, and also helps with backward compatibility with existing Hybrid Renderer compatible **shaders**.

For information on how to use BRG to create a basic renderer, see Creating a renderer with BatchRendererGroup.
