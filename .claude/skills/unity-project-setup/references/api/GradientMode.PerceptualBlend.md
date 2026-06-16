<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GradientMode.PerceptualBlend.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Linearly interpolate between the gradient keys, using a perceptual color space for colors.

This mode finds the two keys adjacent to the requested evaluation time, and interpolates between them.

Color keys are interpolated using a perceptual "[Oklab](https://bottosson.github.io/posts/oklab/)" color space, which often produces more visually pleasing results than a simple GradientMode.Blend interpolation. It is slightly more expensive to calculate than the simple blend mode though.

Additional resources: Gradient.mode, Gradient.Evaluate, Gradient.colorSpace.
