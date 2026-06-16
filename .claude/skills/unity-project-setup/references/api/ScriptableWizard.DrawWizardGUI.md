<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableWizard.DrawWizardGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if any property has been modified.

### Description

Will be called for drawing contents when the ScriptableWizard needs to update its GUI.

Derived class may override this function to provide customized behaviour for GUI drawing. The default behaviour is to draw property fields for all public properties on the wizard, arranged vertically.
