<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider-excludeLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The additional layers that this Collider should exclude when deciding if the Collider can contact another Collider.

The Layer Collision Matrix defines which layers can contact other layers. Use this property to specify additional layers that this specific Collider instance should not contact.

When deciding which layers can contact each other, the Layer Collision Matrix first includes layers, then excludes layers. If a layer is set to be included and excluded, it is excluded.

**NOTE**: Layers can be included or excluded differently depending on the settings of each Collider instance. As such, there could be a conflicting decision for whether two Collider instances can come into contact with each other. To learn how Unity decides this, see Collider.layerOverridePriority.

Additional resources: Collider.includeLayers, Rigidbody.includeLayers, Rigidbody.excludeLayers, ArticulationBody.includeLayers, ArticulationBody.excludeLayers.
