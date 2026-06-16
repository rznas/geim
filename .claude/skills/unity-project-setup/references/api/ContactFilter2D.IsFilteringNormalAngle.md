<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactFilter2D.IsFilteringNormalAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| normal | The normal used to calculate an angle. |

### Returns

**bool** Returns true when `normal` is excluded by the filter and false if otherwise.

### Description

Checks if the angle of `normal` is within the normal angle range to be filtered.

Filtering is defined as including or excluding objects based upon a specific condition. Normal angle filtering checks an angle and includes it when it is within the normal angle range and excludes it if otherwise. IsFilteringNormalAngle returns true when useNormalAngle is set to true and the angle is outside the normal angle range defined by minNormalAngle and maxNormalAngle. This indicates the angle is filtered which means it should be excluded. IsFilteringNormalAngle returns false if otherwise. **Note:**: Setting useOutsideNormalAngle to true inverts the function behavior and it returns opposite results. Additional resources: useNormalAngle, ::ref:minNormalAngle & maxNormalAngle.

### Parameters

| Parameter | Description |
| --- | --- |
| angle | The angle used for comparison in the filter. |

### Returns

**bool** Returns true when `angle` is excluded by the filter and false if otherwise.

### Description

Checks if the `angle` is within the normal angle range to be filtered.

Filtering is defined as including or excluding objects based upon a specific condition. Normal angle filtering checks an angle and includes it when it is within the normal angle range and excludes it if otherwise. IsFilteringNormalAngle returns true when useNormalAngle is set to true and the angle is outside the normal angle range defined by minNormalAngle and maxNormalAngle. This indicates the angle is filtered which means it should be excluded. IsFilteringNormalAngle returns false if otherwise. **Note:**: Setting useOutsideNormalAngle to true inverts the function behavior and it returns opposite results. Additional resources: useNormalAngle, ::ref:minNormalAngle & maxNormalAngle.
