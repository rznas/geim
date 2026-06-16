<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-includeLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The additional Layers that all Collider2D attached to this Rigidbody2D should include when deciding if a contact with another Collider2D should happen or not.

The Layer Collision Matrix defines which Layers can and cannot contact other Layers. This property allows you to specify additional Layers that all Collider2D attached to this Rigidbody2D instance can contact.

**NOTE**: Because Layers can be included or excluded differently depending on the settings of each Collider2D instance, there is the potential for a conflicting decision for whether contact should happen or not when two Collider2D instances come into contact with each other. You can find the detailed rules for how Unity arbitrates this decision in the Collider2D.layerOverridePriority documentation.

Additional resources: Rigidbody2D.excludeLayers, Collider2D.includeLayers & Collider2D.excludeLayers.
