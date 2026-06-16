<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactPoint-separation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The distance between the colliders at the contact point.

This value represents how far apart or interpenetrated the two colliders are at the time the contact was registered: • A positive separation means the colliders are close but not touching, and the contact was generated in anticipation of a possible collision (due to contact offset thresholds). • A zero separation means the colliders are just touching, with their surfaces in contact but not overlapping. • A negative separation indicates that the colliders are overlapping — the more negative the value, the deeper the penetration at that point.

 This property is useful for examining how close colliders are, measuring contact depth in overlaps, or fine-tuning collision responses. During the lifetime of a collision, the separation may fluctuate due to simulation corrections, contact offset values, or changes in relative motion.
