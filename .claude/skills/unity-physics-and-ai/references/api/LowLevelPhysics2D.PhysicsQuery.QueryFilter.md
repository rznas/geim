<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.QueryFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A query filter is used to filter query results known as "hits". For example, you may want a ray-cast representing a projectile to hit players and the static environment but not debris.

### Static Properties

| Property | Description |
| --- | --- |
| DefaultCategories | The default categories used. |
| defaultFilter | Get the default query filter that hits everything. This uses both QueryFilter.DefaultCategories and QueryFilter.DefaultHitCategories. |
| DefaultHitCategories | The default hit categories used. |
| Everything | Get a query filter that is all categories and hit everything. |

### Properties

| Property | Description |
| --- | --- |
| categories | The categories this query is using. Usually you would only set one bit but multiple are allowed. |
| hitCategories | The categories this query will produce hits with. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsQuery.QueryFilter | Create a default filter set as QueryFilter.defaultFilter. |
