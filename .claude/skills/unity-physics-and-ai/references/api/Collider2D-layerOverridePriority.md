<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-layerOverridePriority.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A decision priority assigned to this Collider2D used when there is a conflicting decision on whether a contact between itself and another Collision2D should happen or not.

The Layer Collision Matrix defines which Layers can and cannot contact other Layers. Addition Layer includes and excludes can be made per Collider2D or all Collider2D attached to a specific Rigidbody2D. Any contact involves two different Collider2D instances. Unfortunately this can result in one Collider2D deciding that it should contact the other Collider2D but the other Collider2D deciding it should not. There are rules however in determining and ultimately arbitrating the final decision on whether a contact should be created or not.

The rules for a making a decision for contact between two Collider2D, referred to here as A and B, are made in the following order:

1. If both A and B make the same decision then use that decision.
2. If only A or B are using a Layer include or exclude then use the decision for A or B that has include or exclude specified.
3. If both A and B are using a Layer include or exclude then use the decision from A or B that has the higher Collider2D.layerOverridePriority.
4. If A and B have the same Collider2D.layerOverridePriority then the decision will be to not create a contact.

Additional resources: Collider2D.includeLayers, Collider2D.excludeLayers, Rigidbody2D.includeLayers & Rigidbody2D.excludeLayers.
