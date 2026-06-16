<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/lighting-configuration-workflow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Lighting configuration workflow

To set up lighting in Unity, follow these steps:

1. Choose a render pipeline
2. Configure lighting
3. Fine-tune your scene lighting

## Choose a render pipeline

Unity provides **render pipelines** that differ in customization and lighting features:

- Built-in Render Pipeline (not scriptable)
- Universal Render Pipeline (URP)
- High-Definition Render Pipeline (HDRP)
- Custom Scriptable Render Pipeline (SRP)

For more information on render pipeline selection, refer to choose a render pipeline.

## Configure lighting

1. Choose baked GI, realtime GI, mixed baked and realtime GI, or opt for no GI. For more information, refer to Lighting Settings Asset Inspector window reference
2. Choose one of the following Lighting Modes:  For more information, refer to Lighting Mode.
  - Baked Indirect
  - Subtractive
  - Shadowmask
  - Distance Shadowmask

## Fine-tune your scene lighting

To fine-tune your **scene** lighting, follow these tasks based on project requirements:

1. Add baked, realtime, or mixed lights.
2. Optionally configure emissive surfaces with Baked GI or Realtime GI.
3. Add baked, realtime, or custom Reflection Probes.
4. If a GI mode is set, add Light Probes. You can also add Light Probe Proxy Volumes (LPPVs).

## Additional resources

- Add light emission to a material
- Reflection Probe Inspector window reference
- Light Probes
- [SRP Core](https://docs.unity3d.com/Packages/com.unity.render-pipelines.core@latest)
