<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Device.RequestStoreReview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Value indicating whether the underlying API is available or not. False indicates that the iOS version isn't recent enough or that the StoreKit framework is not linked with the app.

### Description

Request App Store rating and review from the user.

Use this method to indicate when it makes sense within the user experience flow of your application to ask the user for a review. Don't use buttons or other controls to request feedback because the actual display of a rating request is rate-limited and the user can opt-out of receiving these prompts. Make sure the user has demonstrated an engagement with your application before asking for a review. This will display the default Apple prompt that cannot be modified.

```csharp
using System;
using UnityEngine;
using UnityEngine.iOS;public class RequestStoreReviewExample : MonoBehaviour
{
    bool reviewRequested = false;    void Start()
    {
        // Note: It is advised to request AppStore review after the user interacts with your application somehow, so doing it in Start wouldn't be ideal in real scenario.
        RequestReview();
    }    void RequestReview()
    {
        if (reviewRequested == false)
        {
            bool popupShown = Device.RequestStoreReview();
            if (popupShown)
            {
                // The review popup was presented to the user, set "reviewRequested" to "true" to reflect that
                // Note: there's no way to check if the user actually gave a review for the app or cancelled the popup.
                reviewRequested = true;
            }
            else
            {
                // The review popup wasn't presented. Log a message and reset "reviewRequested" so you can revisit this in the future.
                Debug.Log("iOS version is too low or StoreKit framework was not linked.");
                reviewRequested = false;
            }
        }
    }
}
```
