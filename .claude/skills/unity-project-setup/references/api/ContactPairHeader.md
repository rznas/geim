<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactPairHeader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A header struct which contains colliding bodies.

This struct contains an array of ContactPairs that can be retrieved with the GetContactPair method.

### Properties

| Property | Description |
| --- | --- |
| body | The first Rigidbody or ArticulationBody in the pair. |
| bodyAngularVelocity | Angular velocity of the first Rigidbody or the ArticulationBody in the pair at the moment of collision. |
| bodyEntityId | EntityId of the first Rigidbody or the ArticualtionBody in the pair. |
| bodyLinearVelocity | Linear velocity of the first Rigidbody or the ArticulationBody in the pair at the moment of collision. |
| otherBody | The second Rigidbody or ArticulationBody in the pair. |
| otherBodyAngularVelocity | Angular velocity of the second Rigidbody or the ArticulationBody in the pair at the moment of collision. |
| otherBodyEntityId | EntityId of the second Rigidbody or the ArticulationBody in the pair. |
| otherBodyLinearVelocity | Linear velocity of the second Rigidbody or the ArticulationBody in the pair at the moment of collision. |
| pairCount | Number of ContactPairs that this header contains. |

### Public Methods

| Method | Description |
| --- | --- |
| GetContactPair | Gets the ContactPair at index of this pair header. |
