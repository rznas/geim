<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlUpgradeService.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Service for applying UXML upgrades to VisualTreeAsset.

### Properties

| Property | Description |
| --- | --- |
| upgraders | Get the list of all registered upgraders. |

### Constructors

| Constructor | Description |
| --- | --- |
| UxmlUpgradeService | Creates a new instance of the UxmlUpgradeService and initializes the list of upgraders by finding all types that implement the IUxmlUpgrader interface. The upgraders are sorted by name for consistent execution order. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyUpgrades | Apply all enabled upgrades to the specified assets. |
| GetUpgraderByName | Get an upgrader by its name. |
| IsUpgraderEnabled | Check if an upgrader is enabled. |
| SetUpgraderEnabled | Enable or disable a specific upgrader. |
