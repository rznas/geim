<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/create-material.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create and assign a material

1. To create a new material asset in your project, from the main menu or the Project View context menu, select **Assets** > **Create** > **Material**.
2. To assign a **shader** to the material asset, in the **Inspector** window use the **Shader** drop-down menu.

## Assign a material asset to a GameObject

To render a **GameObject** using a material:

1. Add a component that inherits from `Renderer`. MeshRenderer is the most common and is suitable for most use cases, but SkinnedMeshRenderer, LineRenderer, or TrailRenderer might be more suitable if your GameObject has special requirements.
2. Assign the material asset to the component’s **Material** property.

To render a **particle** system in the Built-in Particle System using a material:

1. Add a Renderer Module to the **Particle System**.
2. Assign the material asset to the Renderer Module’s **Material** property.
