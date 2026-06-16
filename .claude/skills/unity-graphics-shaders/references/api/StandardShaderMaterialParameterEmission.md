<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/StandardShaderMaterialParameterEmission.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Add light emission to a material

Adding emission to a Material makes it appear as a visible source of light in your **Scene**. The Material emission properties control the color and intensity of light that the surface of a Material emits.

Emission is useful when you want some part of a **GameObject** to appear lit from the inside, such as the screen of a monitor, the disc brakes of a car braking at high speed, or glowing buttons on a control panel. GameObjects that use emissive Materials appear to remain bright even in dark areas of your Scene.

## Use Emission

You can define basic emissive Materials with a single color and emission level. To make a Material emissive, enable the **Emission** checkbox. This exposes the **Color** and ****Global Illumination**** properties.

## Examples

## Additional resources

- Emit light from a GameObject in the Built-In Render Pipeline
- Surface Inputs in the Lit shader for the Universal Render Pipeline (URP)
- Emission inputs in the Lit material for the High Definition Render Pipeline (HDRP)
- [Create and calibrate an illuminated object using HDRP](https://learn.unity.com/tutorial/create-and-calibrate-an-illuminated-object-using-hdrp)
