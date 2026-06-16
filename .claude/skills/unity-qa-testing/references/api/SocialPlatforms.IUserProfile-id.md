<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SocialPlatforms.IUserProfile-id.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This user's global unique identifier.

For devices running iOS version 12.4 and later, IUserProfile.id returns [GKPlayer.teamPlayerID](https://developer.apple.com/documentation/gamekit/gkplayer/3174857-teamplayerid?language=objc).

For devices running iOS version 12.3 and earlier, IUserProfile.id returns [GKPlayer.playerID](https://developer.apple.com/documentation/gamekit/gkplayer/1521127-playerid?language=objc).

Use IUserProfile.id instead of UserProfile.legacyId. Only use UserProfile.legacyId if you need to access [GKPlayer.playerID](https://developer.apple.com/documentation/gamekit/gkplayer/1521127-playerid?language=objc) to migrate player data in your existing project.
