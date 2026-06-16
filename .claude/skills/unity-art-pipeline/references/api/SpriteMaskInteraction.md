<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpriteMaskInteraction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enum controls the mode under which the sprite will interact with the masking system.

Sprites by default do not interact with masks SpriteMaskInteraction.None. A sprite can also be setup to be visible in presence of one or more masks SpriteMaskInteraction.VisibleInsideMask or to be visible on areas where no masks are present SpriteMaskInteraction.VisibleOutsideMask.

### Properties

| Property | Description |
| --- | --- |
| None | The sprite will not interact with the masking system. |
| VisibleInsideMask | The sprite will be visible only in areas where a mask is present. |
| VisibleOutsideMask | The sprite will be visible only in areas where no mask is present. |
