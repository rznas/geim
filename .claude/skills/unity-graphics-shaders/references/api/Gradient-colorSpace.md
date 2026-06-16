<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gradient-colorSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates the color space that the gradient color keys are using.

Color space setting is automatically set up by the gradient editor, based on GradientUsageAttribute.colorSpace value.

If you are creating gradients from C# code, this value needs to be set manually. Default value assumes that colorKeys are expressed in ColorSpace.Gamma sRGB. Set this to ColorSpace.Linear if color keys are expressed as linear values.

Currently only the GradientMode.PerceptualBlend mode needs to know the color space; the value is ignored for other modes.
