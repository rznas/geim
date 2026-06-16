<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideMovement-surfaceAnchor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The direction and distance to use when detecting if a surface is nearby during a slide iteration.

During a Rigiodbody2D.Slide this vector is used to detect if a surface is nearby and will cause the slide to be anchored in that direction to the surface.

The default is Vector2.down which is a typical direction and distance used in platformers however this can be reduced in distance so that the surface anchoring is more subtle. If the surface anchor is Vector2.zero then surface anchoring will be disabled.

Additional resources: Rigidbody2D.Slide and SlideResults.
