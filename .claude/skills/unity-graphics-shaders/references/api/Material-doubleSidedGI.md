<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-doubleSidedGI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets and sets whether the Double Sided Global Illumination setting is enabled for this material.

When enabled, the lightmapper accounts for both sides of the geometry when calculating Global Illumination. Backfaces are not rendered or added to lightmaps, but get treated as valid when seen from other objects. When using the Progressive Lightmapper backfaces bounce light using the same emission and albedo as frontfaces. (Currently this setting is only available when baking with the Progressive Lightmapper backend.)
