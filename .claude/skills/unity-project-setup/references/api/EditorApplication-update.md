<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-update.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate called periodically at the editor's tick rate for performing checks or updates.

`EditorApplication.update` is not tied to the update loop of your project in Play mode. Instead, this callback follows the Editor's tick rate. The Editor's tick rate is not fixed and it can vary in different situations. Under normal circumstances, the Editor tries to respect the integer `ApplicationIdleTime` stored in EditorPrefs for the interval between ticks, with a default value of 4ms. However, running in the background, running in headless mode, or performing a drag operation can affect the tick rate. Additional resources: EditorApplication.delayCall
