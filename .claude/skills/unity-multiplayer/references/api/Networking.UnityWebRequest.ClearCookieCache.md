<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.ClearCookieCache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| uri | An optional URL to define which cookies are removed. Only cookies that apply to this URL are removed from the cache. |

### Description

Clears stored cookies from the cache.

The cookie cache exists only in the current game session and will clear the next time the game is launched, except when the below exceptions apply.

This method allows you to remove cookies from the cache. If you don't specify an argument, the method removes all cookies in the cache. If you do specify a string argument, the method only removes the cookies that apply to the given URL.

Exceptions:

- iOS has a built-in cookie cache provided by the system, which persists across game sessions. This method removes cookies from that built-in cache.
- On the Web Platform, cookies are managed by the browser and can't be removed, so this method doesn't do anything.
