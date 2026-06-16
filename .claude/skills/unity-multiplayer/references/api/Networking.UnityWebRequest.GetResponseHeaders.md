<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.GetResponseHeaders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Dictionary<string,string>** A dictionary containing all the response headers received in the latest HTTP response. If no responses have been received, returns `null`.

### Description

Retrieves a dictionary containing all the response headers received by this UnityWebRequest in the latest HTTP response.

In the case that the UnityWebRequest has received multiple responses (such as during redirects), only headers from the latest/final response will be included.

**Note:** This method allocates a new Dictionary object each time it is called. You may wish to cache the return value from this call if you are retrieving it multiple times.
