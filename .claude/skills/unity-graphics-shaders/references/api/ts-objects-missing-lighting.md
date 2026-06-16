<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/ts-objects-missing-lighting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

## Troubleshooting objects appearing unlit by Light Probes

Fix the issues causing objects to appear unlit.

## Symptoms

The **GameObjects** appear black and are unlit and unaffected by lighting in the **scene**.

## Cause

Certain objects appearing as unlit or out of place may indicate a problem with the scene setup. It often reproduces when dynamic objects have no light probes to sample the lighting from. Glossy metallic materials can appear as black when no local reflection probes are present.

Dynamic objects, or GI contributors receiving GI from light probes, need light probes to sample indirect lighting data. If none are present, objects will fall back to sampling the **Ambient Probe**, which is the light and reflection probe that is always present in the scene.

## Resolution - Place light probes

Set up a Light Probe network in the scene, adding more probes in areas of high importance. Make sure that there are enough light probes to encompass all affected objects. Generate lighting again to see the effect.

## Resolution - Place reflection probes

Reflective metallic objects might still render as black, even after placing a dense network of light probes. To shade these objects, place a Reflection Probe that encompasses the affected object. Generate the lighting again or re-bake the probe in the Reflection Probe Component by clicking the **Bake** button.

If you observe black areas in the reflections, go to **Lighting** > **Environment** > **Environment Lighting** and increase the **Bounces** value. This will increase the number of light bounces and increase the number of reflections.

## Resolution - Ensure both Light Probes and Reflection Probes are active

Select the unlit GameObject and inspect its ****Mesh** Renderer** component. Go to **Probes**, and ensure that the **Light Probes** and **Reflection Probes** properties are both set to **Blend Probes** and not set to **Off**.

## Resolution - Adjust material color values

Pure black materials in Unity absorb all direct and indirect light. This is physically correct behavior as no naturally occurring material is completely black.

Adjust your material color values to follow the **physically based shading** standards. To determine whether albedo values are compliant with the Physically Based Rendering (PBR) standard:

- In URP, use the Rendering Debugger.
- In HDRP, use the Rendering Debugger.
- In the Built-in **Render Pipeline**, use the Validate Albedo scene view draw mode.

## Resolution - Check the scene setup

If you have multiple scenes, make sure that the scene containing lighting is set as the active scene. By default, Unity sets the first loaded scene as the active scene, which can affect the standalone player builds.
