<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrueTypeFontImporter-fontNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array of font names, to be used when includeFontData is set to false.

If you a trying to render a glyph which is not available in this font, Unity will walk through the list of font names given to find another font which has that glyph. For each name on the list, it will first search the supplied fontReferences for matching fonts in your project and then it will search fonts installed in the OS for matching fonts.

Additional resources: TrueTypeFontImporter.fontReferences.
