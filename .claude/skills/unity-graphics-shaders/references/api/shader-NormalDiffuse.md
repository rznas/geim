<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-NormalDiffuse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Diffuse

**Note.** Unity 5 introduced the Standard Shader which replaces this **shader**.

## Diffuse Properties

Diffuse computes a simple (Lambertian) lighting model. The lighting on the surface decreases as the angle between it and the light decreases. The lighting depends only on this angle, and does not change as the **camera** moves or rotates around.

## Performance

Generally, this shader is cheap to render. For more details, please view the Shader Peformance page.

NormalDiffuse
