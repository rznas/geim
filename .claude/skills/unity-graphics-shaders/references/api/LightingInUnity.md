<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/LightingInUnity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to lighting

Lighting in Unity works by approximating how light behaves in the real world. Unity uses detailed models of how light works for a more realistic result, or simplified models for a more stylized result. To set up lighting, choose a **render pipeline**, configure global lighting, and add elements like lights, emissive surfaces, probes, and volumes.

## Lights

**Lights** are an essential part of every **scene**. While meshes and textures define the shape and look of a scene, lights define the color and mood of your 3D environment. You’ll likely work with more than one light in each scene. Making them work together requires a little practice but the results can be quite amazing.

Lights can be added to your scene from the **GameObject** > **Light** menu. You will choose the light format that you want from the sub-menu that appears. Once a light has been added, you can manipulate it like any other GameObject. Additionally, you can add a Light Component to any selected GameObject by using **Component** > **Rendering** > **Light**.

There are many different options within the Light Component in the **Inspector**.

By simply changing the **Color** of a light, you can give a whole different mood to the scene.

## Direct and indirect lighting

Direct light is light that is emitted, hits a surface once, and is then reflected directly into a sensor (for example, the eye’s retina or a camera). Indirect light is all other light that is ultimately reflected into a sensor, including light that hits surfaces several times, and sky light. To achieve realistic lighting results, you need to simulate both direct and indirect light.

Unity can calculate direct lighting, indirect lighting, or both direct and indirect lighting. The lighting techniques that Unity uses depends on how you configure your Project.

## Real-time and baked lighting

Real-time lighting is when Unity calculates lighting at runtime. Baked lighting is when Unity performs lighting calculations in advance and saves the results as lighting data, which is then applied at runtime. In Unity, your Project can use real-time lighting, baked lighting, or a mix of the two (called mixed lighting).

For information on configuring Light components to contribute real-time, baked, or mixed lighting, see Light Modes.

## Global illumination

Global illumination is a group of techniques that model both direct and indirect lighting to provide realistic lighting results. Unity has two global illumination systems, which combine direct and indirect lighting.

For more information, refer to Global illumination.

## Rendering paths

Unity supports different **Rendering Paths**. These paths affect mainly Lights and Shadows, so choosing the correct rendering path depending on your game requirements can improve your project’s performance. For more information about rendering paths for your render pipeline, refer to:

- Rendering paths in URP
- Forward and Deferred rendering in HDRP
- Introduction to rendering paths in the Built-In Render Pipeline
