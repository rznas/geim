<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-useMacAppStoreValidation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable receipt validation for the Mac App Store.

When enabled, your game will only run when it has a valid receipt from the Mac App Store. Use `useMacAppStoreValidation` when submitting games to Apple for publishing on the App Store. This ensures users can only run the game on the computer it was purchased on.

**Note**: `useMacAppStoreValidation` doesn't implement any strong copy protection. Any potential crack against one Unity game might work against any other Unity content. For this reason, it's recommended to implement your own receipt validation code using plug-ins. As Apple requires plug-in validation to happen before showing the screen setup dialog, you must still enable this check, or Apple might reject your submission.
