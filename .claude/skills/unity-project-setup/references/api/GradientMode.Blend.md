<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GradientMode.Blend.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Linearly interpolate between the gradient keys.

This mode finds the two keys adjacent to the requested evaluation time, and interpolates between them.

Note that a simple linear interpolation between color keys of very different hue can look unnatural. Using GradientMode.PerceptualBlend can often result in a more natural looking color blend.

Additional resources: Gradient.mode, Gradient.Evaluate.
