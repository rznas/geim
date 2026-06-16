<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BlendOp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Blend operation.

The blend operation that is used to combine the pixel shader output with the render target. This can be passed through Material.SetInt() to change the blend operation during runtime.

Note that the logical operations are only supported in Gamma (non-sRGB) colorspace, on DX11.1 hardware running on DirectX 11.1 runtime.

Advanced OpenGL blend operations are supported only on hardware supporting either GL_KHR_blend_equation_advanced or GL_NV_blend_equation_advanced and may require use of GL.RenderTargetBarrier. In addition, the shaders that are used with the advanced blend operations must have a UNITY_REQUIRE_ADVANDED_BLEND(mode) declaration in the shader code where mode is one of the blend operations or "all_equations" for supporting all advanced blend operations (see the KHR_blend_equation_advanced spec for other values).

### Properties

| Property | Description |
| --- | --- |
| Add | Add (s + d). |
| Subtract | Subtract. |
| ReverseSubtract | Reverse subtract. |
| Min | Min. |
| Max | Max. |
| LogicalClear | Logical Clear (0). |
| LogicalSet | Logical SET (1) (D3D11.1 only). |
| LogicalCopy | Logical Copy (s) (D3D11.1 only). |
| LogicalCopyInverted | Logical inverted Copy (!s) (D3D11.1 only). |
| LogicalNoop | Logical No-op (d) (D3D11.1 only). |
| LogicalInvert | Logical Inverse (!d) (D3D11.1 only). |
| LogicalAnd | Logical AND (s & d) (D3D11.1 only). |
| LogicalNand | Logical NAND !(s & d). D3D11.1 only. |
| LogicalOr | Logical OR (s | d) (D3D11.1 only). |
| LogicalNor | Logical NOR !(s | d) (D3D11.1 only). |
| LogicalXor | Logical XOR (s XOR d) (D3D11.1 only). |
| LogicalEquivalence | Logical Equivalence !(s XOR d) (D3D11.1 only). |
| LogicalAndReverse | Logical reverse AND (s & !d) (D3D11.1 only). |
| LogicalAndInverted | Logical inverted AND (!s & d) (D3D11.1 only). |
| LogicalOrReverse | Logical reverse OR (s | !d) (D3D11.1 only). |
| LogicalOrInverted | Logical inverted OR (!s | d) (D3D11.1 only). |
| Multiply | Multiply (Advanced OpenGL blending). |
| Screen | Screen (Advanced OpenGL blending). |
| Overlay | Overlay (Advanced OpenGL blending). |
| Darken | Darken (Advanced OpenGL blending). |
| Lighten | Lighten (Advanced OpenGL blending). |
| ColorDodge | Color dodge (Advanced OpenGL blending). |
| ColorBurn | Color burn (Advanced OpenGL blending). |
| HardLight | Hard light (Advanced OpenGL blending). |
| SoftLight | Soft light (Advanced OpenGL blending). |
| Difference | Difference (Advanced OpenGL blending). |
| Exclusion | Exclusion (Advanced OpenGL blending). |
| HSLHue | HSL Hue (Advanced OpenGL blending). |
| HSLSaturation | HSL saturation (Advanced OpenGL blending). |
| HSLColor | HSL color (Advanced OpenGL blending). |
| HSLLuminosity | HSL luminosity (Advanced OpenGL blending). |
