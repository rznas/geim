<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/lighting-emissive-materials.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Emit light from a GameObject in the Built-In Render Pipeline

Like area lights, emissive materials emit light across their surface area. They contribute to bounced light in your **scene** and associated properties such as color and intensity can be changed during gameplay. Whilst area lights are not supported by **Enlighten** Realtime **Global Illumination**, similar soft lighting effects in real-time are still possible using emissive materials.

‘Emission’ is a property of the Standard **Shader** which allows static objects in our scene to emit light. By default the value of ‘Emission’ is set to zero. This means no light will be emitted by objects assigned materials using the Standard Shader.

There is no range value for emissive materials but light emitted will again falloff at a quadratic rate. Emission will only be received by objects marked as ‘Static’ or “**Lightmap** Static’ from the **Inspector**. Similarly, emissive materials applied to non-static, or dynamic geometry such as characters will not contribute to scene lighting.

However, materials with an emission above zero will still appear to glow brightly on-screen even if they are not contributing to scene lighting. This effect can also be produced by selecting ‘None’ from the Standard Shader’s ‘Global Illumination’ Inspector property. Self-illuminating materials like these are a useful way to create effects such as neons or other visible light sources.

Emissive materials only directly affect static geometry in your scene. If you need dynamic, or non-static geometry - such as characters, to pick up light from emissive materials, **Light Probes** must be used.
