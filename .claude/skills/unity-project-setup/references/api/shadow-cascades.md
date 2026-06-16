<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shadow-cascades.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to shadow cascades

Shadow cascades let you improve the visual fidelity of shadows without increasing the shadow map resolution.

For example, the following illustration shows shadow rendering with different numbers of shadow cascades. The shadow resolution is 2048 in all cases.

Shadow rendering with different cascade numbers. A: 1 (no cascades), B: 2 cascades, C: 3 cascades, D: 4 cascades.

Shadow cascades only work with directional lights.

From a technical perspective, shadow cascades mitigate a problem called perspective aliasing, where real-time shadows from directional lights appear pixelated when they are near the **camera**.

## Additional resources

- Configure shadow cascades
- Performance impact of shadow cascades
- Technical implementation details
