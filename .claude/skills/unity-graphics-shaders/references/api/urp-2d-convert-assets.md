<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/urp-2d-convert-assets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Convert 2D assets from the Built-In Render Pipeline to URP

After you configure your 2D project to use URP, use the Render Pipeline Converter to convert assets made for a Built-In **Render Pipeline** project to be compatible with the Universal Render Pipeline (URP).

**Warning**: The following task overwrites several files in your project folder. These can’t be restored after Unity overwrites them. Before you start this task, back up any files you don’t want to lose.

To convert 2D assets from the Built-In Render Pipeline to the Universal Render Pipeline (URP), do the following:

1. Go to **Window** > **Rendering** > **Render Pipeline Converter**.  Unity opens the Render Pipeline Converter window.
2. Set **Source Pipeline** to **Built-in**.
3. Set **Target Pipeline** to **Universal Render Pipeline (2D Renderer)**.
4. In the **Pipeline Converter** tab, select the checkbox next to **Material and Material Reference Upgrade**.
5. In the **Pipeline Tools** tab, select the checkboxes next to **Parametric to Freeform Light Upgrade** and **Convert Built-in and URP (Universal Renderer) Materials to **Mesh** 2D-Lit-Default**. For more information on these converters, refer to Render Pipeline Converter window for URP reference.
6. Select **Scan**.  Unity processes the assets in your project and displays the list of assets it can convert under your selected converters.
7. Select the checkboxes next to the assets you want to convert.
8. Select **Convert Assets**.  When Unity finishes the conversion process, the window displays the status of each conversion.

## Additional resources

- Configure your project to use URP
- Render Pipeline Converter window for URP reference
- Set up a project for 2D games
