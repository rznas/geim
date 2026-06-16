<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactFilter2D.IsFilteringTrigger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The Collider2D used to check for a trigger. |

### Returns

**bool** Returns true when `collider` is excluded by the filter and false if otherwise.

### Description

Checks if the `collider` is a trigger and should be filtered by the useTriggers to be filtered.

Filtering is defined as including or excluding objects based upon a specific condition. Trigger filtering checks the Collider.isTrigger and includes it if triggers are being used and excludes it otherwise. IsFilteringTriggers returns true when useTriggers is set to false and Collider.isTrigger is true. This indicates the `collider` is filtered which means it should be excluded. IsFilteringTriggers returns false if otherwise.

Additional resources: useTriggers.
