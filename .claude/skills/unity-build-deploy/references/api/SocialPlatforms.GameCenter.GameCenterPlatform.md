<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SocialPlatforms.GameCenter.GameCenterPlatform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

iOS GameCenter implementation for network services.

An application bundle ID must be registered on iTunes Connect before it can access GameCenter. This ID must be properly set in the iOS player properties in Unity. When debugging you can use the GameCenter sandbox (a text displaying this is shown when logging on). You must log on in the application to get into sandbox mode, logging on in the GameCenter application will always use the production version.

When using the GameCenterPlatform class in C# you need to include the UnityEngine.SocialPlatforms.GameCenter namespace.

Some things to be aware of when using the generic API:

**Authenticate()** 
 If the user is not logged in, a standard GameKit UI is shown where they can log on or create a new user. It is recommended this is done as early as possible.

**Achievement descriptions and Leaderboards** 
 The achivements descriptions and leaderboard configurations can be configured in the iTunes Connect portal. Achievements get unique identifiers and the leaderboards use category names as identifiers.

**GameCenter Sandbox** 
 Development applications use the GameCenter Sandbox. This is a seperate GameCenter than the live one, nothing is shared between them. It is recommended that you create a seperate user for testing with the GameCenter Sandbox, you should not use your real Apple ID for this. You can only log on to the sandbox through a development application, make sure you are not logged into GameCenter using the GameCenter app before testing begins. You should see **** Sandbox **** in the login dialog, if you don't see this then you are logging on to the real one. Sometimes it happens that the OS forgets that the application is using the sandbox and you will be logged on to the real one. If the application has not been submitted to Apple already then this will probably result in an error. To fix this all that needs to be done is to delete the app and redeploy with Xcode. To make another Apple ID a friend of a sandbox user it needs to be a sandbox user as well.

If you start getting errors when accessing GameCenter stating that the application is not recognized you'll need to delete the application completely and re-deploy. Make sure you are not logged on when starting the newly installed application again.
