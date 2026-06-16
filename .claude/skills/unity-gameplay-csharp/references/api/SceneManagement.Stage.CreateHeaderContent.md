<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.Stage.CreateHeaderContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**GUIContent** The header content for this Stage.

### Description

Creates the header content for this Stage. Both the Hierarchy window header and Scene view breadcrumb bar use this content.

Classes inheriting from Stage should implement this method and return a GUIContent with an appropriate icon and label for the Stage.

The icon should match the icon for the type of object you can edit in this stage. The label should match the name of the object you can edit in this stage (excluding extention) or the type of editing operation that you can do in this stage.
