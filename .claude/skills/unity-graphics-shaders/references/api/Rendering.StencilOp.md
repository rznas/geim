<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.StencilOp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the operation that's performed on the stencil buffer when rendering.

### Properties

| Property | Description |
| --- | --- |
| Keep | Keeps the current stencil value. |
| Zero | Sets the stencil buffer value to zero. |
| Replace | Replace the stencil buffer value with reference value (specified in the shader). |
| IncrementSaturate | Increments the current stencil buffer value. Clamps to the maximum representable unsigned value. |
| DecrementSaturate | Decrements the current stencil buffer value. Clamps to 0. |
| Invert | Bitwise inverts the current stencil buffer value. |
| IncrementWrap | Increments the current stencil buffer value. Wraps stencil buffer value to zero when incrementing the maximum representable unsigned value. |
| DecrementWrap | Decrements the current stencil buffer value. Wraps stencil buffer value to the maximum representable unsigned value when decrementing a stencil buffer value of zero. |
