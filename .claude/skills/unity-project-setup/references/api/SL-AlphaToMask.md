<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-AlphaToMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# AlphaToMask command in ShaderLab reference

Enables or disables [alpha-to-coverage](https://en.wikipedia.org/wiki/Alpha_to_coverage) mode on the GPU.

## Render pipeline compatibility

| **Feature name** | **Universal **Render Pipeline** (URP)** | **High Definition Render Pipeline (HDRP)** | **Custom SRP** | **Built-in Render Pipeline** |
| --- | --- | --- | --- | --- |
| **AlphaToMask** | Yes | Yes | Yes | Yes |

## Syntax

This command makes a change to the render state. Use it in a `Pass` block to set the render state for that Pass, or use it in a `SubShader` block to set the render state for all Passes in that SubShader.

| **Signature** | **Example syntax** | **Function** |
| --- | --- | --- |
| `AlphaToMask <state>` | `AlphaToMask Off` | Enables or disables alpha-to-coverage mode. |

## Parameters

| **Parameter** | **Value** | **Function** |
| --- | --- | --- |
| **state** | `On` | Enables alpha-to-coverage mode. |
|  | `Off` | Disables alpha-to-coverage mode. |

## Additional resources

- Reduce aliasing with AlphaToMask mode
