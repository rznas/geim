<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.SendWebRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Begin communicating with the remote server.

After calling this method, the UnityWebRequest will perform DNS resolution (if necessary), transmit an HTTP request to the remote server at the target URL and process the server’s response.

This method can only be called once on any given UnityWebRequest object.

Once this method is called, you cannot change any of the UnityWebRequest’s properties. You cannot change UnityWebRequest properties after SendWebRequest is called.

This method returns a WebRequestAsyncOperation object. Yielding the WebRequestAsyncOperation inside a coroutine will cause the coroutine to pause until the UnityWebRequest encounters a system error or finishes communicating.
