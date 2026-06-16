<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/scriptable-render-pipeline-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Scriptable Render Pipeline fundamentals

This page explains how Unity’s Scriptable **Render Pipeline** (SRP) works, and introduces some key concepts and terminology. The information on this page is applicable to the Universal Render Pipeline (URP), the High Definition Render Pipeline (HDRP), and custom render pipelines that are based on SRP.

The Scriptable Render Pipeline is a thin API layer that lets you schedule and configure rendering commands using C# **scripts**. Unity passes these commands to its low-level graphics architecture, which then sends instructions to the graphics API.

URP and HDRP are built on top of SRP. You can also create your own custom render pipeline on top of SRP.

## Render Pipeline Instance and Render Pipeline Asset

Every render pipeline based on SRP has two key customized elements:

- A **Render Pipeline Instance**. This is an instance of a class that defines the functionality of your render pipeline. Its script inherits from RenderPipeline, and overrides its `Render()` method.
- A **Render Pipeline Asset**. This is an asset in your Unity Project that stores data about which Render Pipeline Instance to use, and how to configure it. Its script inherits from RenderPipelineAsset and overrides its `CreatePipeline()` method.

For more information on these elements, and instructions on how to create them in a custom render pipeline, see Creating a Render Pipeline Asset and a Render Pipeline Instance.

## ScriptableRenderContext

`ScriptableRenderContext` is a class that acts as an interface between the custom C# code in the render pipeline and Unity’s low-level graphics code.

Use the ScriptableRenderContext API to schedule and execute rendering commands. For information, see Scheduling and executing rendering commands in the Scriptable Render Pipeline.

## Additional resources

- Universal Render Pipeline
- High Definition Render Pipeline
- Creating a custom render pipeline
