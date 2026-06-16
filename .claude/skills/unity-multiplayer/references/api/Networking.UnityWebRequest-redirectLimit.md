<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-redirectLimit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates the number of redirects that this UnityWebRequest follows before halting with a `Redirect Limit Exceeded` system error.

If you want to disable redirects altogether, set this property to zero - this `UnityWebRequest` will then refuse to follow redirects. If a redirect is encountered while redirects are disabled, the request will halt with a `Redirect Limit Exceeded` system error.

If you don't want to limit the number of redirects, you can set this property to any negative number. **Note:** **This is not recommended**. If the redirect limit is disabled and the `UnityWebRequest` encounters a redirect loop, the `UnityWebRequest` will consume processor time until Abort is called.

**Note:** On WebGL platforms, the `UnityWebRequest` API behaves differently. It only supports a redirect limit of `0` where the request fails on a redirect, and for anything above `0`, it uses the browser-default redirect limit. This applies to Unity 2021.3 and later versions.



 *Default value:* `32`.
