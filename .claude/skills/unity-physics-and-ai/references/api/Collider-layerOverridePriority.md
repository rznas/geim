<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider-layerOverridePriority.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A decision priority assigned to this Collider used when there is a conflicting decision on whether a Collider can contact another Collider.

The Layer Collision Matrix defines which layers can contact other layers. Additionally, you can include and exclude layers per Collider or for all Colliders attached to a specific Rigidbody or ArticulationBody. Any contact involves two different Collider instances. Unfortunately this can result in one Collider deciding that it should contact the other Collider, but the other Collider deciding it shouldn't. There are rules to decide how these situations are handled.

The rules for making a decision between two Colliders, referred to here as A and B, are made in the following order:

1. If both A and B make the same decision then use that decision.
2. If only A or B are using a layer include or exclude override, then use the decision for A or B that has the include or exclude override specified.
3. If both A and B are using a layer include or exclude override, then use the decision from A or B that has the higher Collider.layerOverridePriority.
4. If A and B have the same Collider.layerOverridePriority, then the decision will be to not create a contact.

Additional resources: Collider.includeLayers, Collider.excludeLayers, Rigidbody.includeLayers, Rigidbody.excludeLayers, ArticulationBody.includeLayers, ArticulationBody.excludeLayers.
