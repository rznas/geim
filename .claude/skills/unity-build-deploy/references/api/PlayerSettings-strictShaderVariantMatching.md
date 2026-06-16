<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-strictShaderVariantMatching.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable strict shader variant matching in the player.

If you enable strict shader variant matching, Unity tries to find an exact match for the combination of enabled local shader keywords and global keyword overrides. If such a variant doesn't exist, Unity uses the error shader and displays an error in the Console. The error states which shader and combination of keywords caused the issue. Otherwise, Unity silently picks the variant that is closest to the requested set of keywords.
