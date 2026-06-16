<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SocialPlatforms.ILocalUser.Authenticate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| callback | Callback that is called whenever the authentication operation is finished. The first parameter is a Boolean identifying whether the authentication operation was successful. The optional second argument contains a string identifying any errors (if available) if the operation was unsuccessful. |

### Description

Authenticate the local user to the current active Social API implementation and fetch his profile data.

This should be done before any other calls into the API. Depending on the platform, this might trigger a potentially blocking dialog for providing login details.

On certain platforms (including but not limited to iOS and tvOS), the callback is only invoked on the first call to Authenticate(). Subsequent calls to Authenticate() on such platforms results in no callback being triggered. This can occur if, for example, the user or the OS cancels the authentication operation before it has completed. Please ensure you test for this situation.

```csharp
using UnityEngine;
using UnityEngine.SocialPlatforms;
using System.Collections;public class Example : MonoBehaviour
{
    void Start()
    {
        Social.localUser.Authenticate(success => {
            if (success)
            {
                Debug.Log("Authentication successful");
                string userInfo = "Username: " + Social.localUser.userName +
                    "\nUser ID: " + Social.localUser.id +
                    "\nIsUnderage: " + Social.localUser.underage;
                Debug.Log(userInfo);
            }
            else
                Debug.Log("Authentication failed");
        });
    }
}
```
