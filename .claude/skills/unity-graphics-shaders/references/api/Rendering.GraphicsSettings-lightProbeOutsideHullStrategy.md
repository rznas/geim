<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsSettings-lightProbeOutsideHullStrategy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the way Unity chooses a probe to light a Renderer that is lit by Light Probes but positioned outside the bounds of the Light Probe tetrahedral hull.

When a Renderer that is lit by Light Probes is positioned outside the bounds of a Light Probe tetrahedral hull, there are two different approaches Unity can use to light that Renderer. Unity can either search for the probe closest to that Renderer (which is a resource-intensive process) or use the Ambient Probe. Configure this enum to determine which approach Unity uses in this situation.
