<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Social.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generic access to the Social API.

Social.Active can be used to target a specific social platform implementation, but by default GameCenter is used on iOS. All other platforms default to the Local implementation which can be used for testing. See Social API Reference Manual for an overview.

The Social class should always be used as an entry point. It contains helper functions for accessing the current active implementation and always uses the interfaces of the other Social API classes. This way it is easier to use versions of the interfaces which have been extended beyond the generic API by the implementation.

There are various classes associated with the Social API and all of these reside in the UnityEngine.SocialPlatforms namespace. You need to import/use this namespace in order to use these classes.


 Additional resources: GameCenterPlatform.
