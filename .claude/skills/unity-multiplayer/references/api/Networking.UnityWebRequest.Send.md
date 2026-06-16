<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.Send.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**AsyncOperation** An AsyncOperation indicating the progress/completion state of the UnityWebRequest. Yield this object to wait until the UnityWebRequest is done.

### Description

Begin communicating with the remote server.

After calling this method, the UnityWebRequest will perform DNS resolution (if necessary), transmit an HTTP request to the remote server at the target URL and process the server’s response.

This method can only be called once on any given UnityWebRequest object. Once this method is called, you cannot change any of the UnityWebRequest’s properties.

This method returns an AsyncOperation object. Yielding the AsyncOperation inside a coroutine will cause the coroutine to pause until the UnityWebRequest encounters a system error or finishes communicating.
