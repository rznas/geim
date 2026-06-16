<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/differences-linear-gamma-color-space.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Differences between linear and gamma color space

When using linear rendering, input values to the lighting equations are different to those in gamma space. This means differing results depending on the color space. For example, light striking surfaces has differing response curves, and Image Effects behave differently.

## Light fall-off

The fall-off from distance and normal-based lighting differs in two ways:

- When rendering in linear mode, the additional gamma correction that is performed makes a light’s radius appear larger.
- Lighting edges also appear more clearly. This more correctly models lighting intensity fall-off on surfaces.

## Linear intensity response

When you are using gamma rendering, the colors and Textures that are supplied to a **Shader** already have gamma correction applied to them. When they are used in a Shader, the colors of high luminance are actually brighter than they should be compared to linear lighting. This means that as light intensity increases, the surface gets brighter in a nonlinear way. This leads to lighting that can be too bright in many places. It can also give models and **scenes** a washed-out feel. When you are using linear rendering, the response from the surface remains linear as the light intensity increases. This leads to much more realistic surface shading and a much nicer color response from the surface.

The Infinite 3D Head Scan image below demonstrates different light intensities on a human head model under linear lighting and gamma lighting.

## Linear and gamma blending

When blending into a framebuffer, the blending occurs in the color space of the framebuffer.

When you use gamma space rendering, nonlinear colors get blended together. This is not the mathematically correct way to blend colors, and can give unexpected results, but it is the only way to do a blend on some graphics hardware.

When you use linear space rendering, blending occurs in linear color space: This is mathematically correct and gives precise results.

The image below demonstrates the different types of blending:
