<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody-includeLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The additional layers that all Colliders attached to this ArticulationBody should include when deciding if a the Collider can come into contact with another Collider.

The Layer Collision Matrix defines which layers can contact other layers. Use this property to specify additional layers that all Colliders attached to this ArticulationBody instance can contact.

**NOTE**: Layers can be included or excluded differently depending on the settings of each Collider instance. As such, there could be a conflicting decision for whether two Collider instances can come into contact with each other. To learn how Unity decides this, see Collider.layerOverridePriority.

Additional resources: Collider.excludeLayers, ArticulationBody.excludeLayers, Rigidbody.includeLayers, Rigidbody.excludeLayers.
