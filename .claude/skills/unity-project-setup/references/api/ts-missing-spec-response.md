<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/ts-missing-spec-response.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

## Troubleshooting materials missing specular highlights

Fix issues causing specular highlights to be missing after baking **lightmaps**.

## Symptoms

Materials don’t appear glossy or have specular highlights when the lighting is baked.

## Cause

Baked lights don’t provide real-time specular response to materials. This means that glossy materials lack specular highlights after you generate lighting.

## Resolution - Use mixed lights

Use mixed lights instead of baked lights, as mixed lights provide real-time direct specular response to materials. To use mixed lights, in the Light component, set the ****Light Mode**** property to **Mixed**.

## Resolution - Use emissive proxies

Use emissive proxies to imitate the specular response from using emissive objects. To use emissive proxies, follow these steps:

1. Place a reflection probe in your **scene**.
2. Right-click the **Hierarchy** panel and select **3D Object** > **Sphere**.
3. Select the newly created object and set its Static Editor Flag to **Reflection Probe Static**.
4. Right-click the **Project** panel and select **Create** > **Material**.
5. Select the material and enable the **Emission** checkbox. Set the ****Global Illumination**** property to **None**.
6. Drag the material onto the sphere to assign it.
7. Place the sphere in the same position as your light.
8. Go to the **Baked Lightmaps** tab in the Lighting window (**Window** > **Rendering** > **Lighting**).
9. Select the **Generate Lighting** button to generate lighting based on these settings.

After Unity generates the lighting, the emissive objects are captured in the reflection probe **cubemap**. You can hide the emissive proxies after baking or use a ****Culling Mask**** in the Camera component to hide the emissive objects.
