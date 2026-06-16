<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/embedded-platforms-minimal-urp-setup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create a minimal URP setup for embedded platforms

Configure the Universal **Render Pipeline** (URP) to simplify rendering and improve performance on embedded platforms.

Unity recommends the efficient and configurable Universal Render Pipeline (URP) for embedded platforms. By default, URP enables features that enhance visual quality but can be resource-intensive. On embedded platforms, you can adjust or disable these settings to achieve a minimal yet efficient setup.

Follow these steps to create a minimal rendering configuration and verify it with the Render Graph Viewer.

## 1. Set up Quality settings

Use the same Quality settings on desktop as on embedded platforms during development:

1. Open the **Quality** settings window (menu: **Edit** > **Project Settings** > **Quality**).
2. Identify the Quality level you want to use for embedded platforms.
3. In the Quality level matrix for each platform, select the platform column, then select the required quality level in the **Default** level dropdown.

You can remove the quality levels that you no longer need by unchecking the corresponding checkboxes in the Quality matrix.

This ensures that the desktop build uses the same default quality level as embedded platforms, indicated by the green check mark in the matrix.

## 2. Configure the URP Asset

Select the URP Asset assigned to the quality level set for embedded platforms to view it the ****Inspector****, then apply the following settings:

### Quality settings

- Set **Render Scale** to `1.0`.
- Disable ****HDR****.

## 3. Disable post-processing on the Renderer

To remove **post-processing** effects from the build, disable post-processing on the Renderer:

1. Select the URP Asset.
2. In the **Inspector** window, find the **Renderer List** section, and then click the linked Renderer asset.
3. Under **Post-processing**, disable the **Enabled** toggle.

This excludes post-processing effects such as Bloom, **Tonemapping**, and Vignette from the build.

For more information, refer to Universal Renderer asset reference.

## 4. Configure camera settings

Select each **camera** used in the minimal setup to view it in the **Inspector**, then configure the following settings:

- In the **Rendering** section, disable **Render Shadows**.
- In the **Environment** section, if a **skybox** isn’t required, set the **Background Type** to **Solid Color** and choose a background color.

For more information on these settings, refer to Camera component reference.

## 5. Verify the setup with the Render Graph Viewer

To verify the setup:

1. Open **Window** > **Analysis** > **Render Graph Viewer**.
2. Run the **scene** with the camera that uses this setup.

The render graph displays only opaque, transparent, and UI draw passes with an optional skybox pass. The following image depicts the minimal URP configuration:

**Note**: URP’s default lit **shaders** are typically more resource-intensive than simpler alternatives. For better performance on embedded platforms, use unlit-type shaders or simple shaders whenever possible.

## Additional resources

- Universal Render Pipeline asset reference
- Universal Renderer asset reference
- Analyze a render graph
- Render Graph Viewer window reference
