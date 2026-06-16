<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/dots-instancing-shaders-support.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Support DOTS Instancing in a a custom shader in URP

To support DOTS Instancing, a **shader** needs to do the following:

- Use shader model 4.5 or newer. Specify `#pragma target 4.5` or higher.
- Support the `DOTS_INSTANCING_ON` keyword. Declare this with `#pragma multi_compile _ DOTS_INSTANCING_ON`.
- Declare at least one block of DOTS Instanced properties each of which has least one property. For more information, see Declaring DOTS Instanced properties.

**Note**: Shader Graphs and shaders that Unity provides in URP and HDRP support DOTS Instancing.
