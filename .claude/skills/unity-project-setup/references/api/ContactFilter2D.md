<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactFilter2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A set of parameters for filtering contact results. Define the angle by referring to their position in world space, where 0 degrees is parallel to the positive x-axis, 90 degrees is parallel to the positive y-axis, 180 degrees is parallel to the negative x-axis, and 270 degrees is parallel to the negative y-axis.

Use a contact filter to precisely control which contact results get returned. This removes the need to filter the results later, is faster, and more convenient.

If you are using a function that requires a ContactFilter2D, but you don't want to perform any filtering, then use ContactFilter2D.noFilter.

For more information on using ContactFilter2D with casting, see: Physics2D.CircleCast, Physics2D.BoxCast, Physics2D.CapsuleCast, Physics2D.Linecast, Physics2D.Raycast, Collider2D.Raycast, Collider2D.Cast and Rigidbody2D.Cast.

For more information on using ContactFilter2D with overlapping areas, see: Physics2D.OverlapPoint, Physics2D.OverlapCircle, Physics2D.OverlapBox, Physics2D.OverlapArea, Physics2D.OverlapCapsule, Physics2D.OverlapCollider, Rigidbody2D.OverlapCollider and Collider2D.OverlapCollider.

For more information on using ContactFilter2D with contacts, see: Physics2D.GetContacts, Collider2D.GetContacts, Rigidbody2D.GetContacts, Physics2D.IsTouching, Rigidbody2D.IsTouching and Collider2D.IsTouching.

### Static Properties

| Property | Description |
| --- | --- |
| noFilter | Returns a new contact filter with a state where it will not filter any contacts. |
| NormalAngleUpperLimit | A constant of the maximum normal angle used of 359.9999f. |

### Properties

| Property | Description |
| --- | --- |
| isFiltering | Given the current state of the contact filter, determine whether it would filter anything. |
| layerMask | Sets the contact filter to filter the results that only include Collider2D on the layers defined by the layer mask. |
| maxDepth | Sets the contact filter to filter the results to only include Collider2D with a Z coordinate (depth) less than this value. |
| maxNormalAngle | Sets the contact filter to filter the results to only include contacts with collision normal angles that are less than this angle. |
| minDepth | Sets the contact filter to filter the results to only include Collider2D with a Z coordinate (depth) greater than this value. |
| minNormalAngle | Sets the contact filter to filter the results to only include contacts with collision normal angles that are greater than this angle. |
| useDepth | Sets the contact filter to filter the results by depth using minDepth and maxDepth. |
| useLayerMask | Sets the contact filter to filter results by layer mask. |
| useNormalAngle | Sets the contact filter to filter the results by the collision's normal angle using minNormalAngle and maxNormalAngle. |
| useOutsideDepth | Sets the contact filter to filter within the minDepth and maxDepth range, or outside that range. |
| useOutsideNormalAngle | Sets the contact filter to filter within the minNormalAngle and maxNormalAngle range, or outside that range. |
| useTriggers | Sets to filter contact results based on trigger collider involvement. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearDepth | Turns off depth filtering by setting useDepth to false. The associated values of minDepth and maxDepth are not changed. |
| ClearLayerMask | Turns off layer mask filtering by setting useLayerMask to false. The associated value of layerMask is not changed. |
| ClearNormalAngle | Turns off normal angle filtering by setting useNormalAngle to false. The associated values of minNormalAngle and maxNormalAngle are not changed. |
| IsFilteringDepth | Checks if the Transform for obj is within the depth range to be filtered. |
| IsFilteringLayerMask | Checks if the GameObject.layer for obj is included in the layerMask to be filtered. |
| IsFilteringNormalAngle | Checks if the angle of normal is within the normal angle range to be filtered. |
| IsFilteringTrigger | Checks if the collider is a trigger and should be filtered by the useTriggers to be filtered. |
| SetDepth | Sets the minDepth and maxDepth filter properties and turns on depth filtering by setting useDepth to true. |
| SetLayerMask | Sets the layerMask filter property using the layerMask parameter provided and also enables layer mask filtering by setting useLayerMask to true. |
| SetNormalAngle | Sets the minNormalAngle and maxNormalAngle filter properties and turns on normal angle filtering by setting useNormalAngle to true. |
