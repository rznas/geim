<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-callbacksOnDisable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this to control whether or not the appropriate OnCollisionExit2D or OnTriggerExit2D callbacks should be called when a Collider2D is disabled.

If the Collider2D being disabled has at least a single contact with another Collider2D then with this property set to true, a callback would be produced. With the property set to false, no callback would be produced.

 Only "OnCollisionExit2D" or "OnTriggerExit2D" will be called by disabling a Collider2D.
