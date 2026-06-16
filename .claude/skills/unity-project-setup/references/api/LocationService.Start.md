<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LocationService.Start.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| desiredAccuracyInMeters | The service accuracy you want to use, in meters. This determines the accuracy of the device's last location coordinates. Higher values like 500 don't require the device to use its GPS chip and thus save battery power. Lower values like 5-10 provide the best accuracy but require the GPS chip and thus use more battery power. The default value is 10 meters. |
| updateDistanceInMeters | The minimum distance, in meters, that the device must move laterally before Unity updates Input.location. Higher values like 500 produce fewer updates and are less resource intensive to process. The default is 10 meters. |

### Description

Starts location service updates.

After you call this function, you can access the device's last location coordinates by checking lastData in Input.location.

**Note**: The location service doesn't start to send location data immediately. Therefore, check the current service status in Input.location.

 On Android, using this method in scripts automatically adds the `ACCESS_FINE_LOCATION` permission to the android manifest. If you use low accuracy values like 500 or higher, select **Low Accuracy Location** in Player Settings to add the `ACCESS_COARSE_LOCATION` permission instead.

On WebGL, this method must be invoked as a response to a user gesture (such as a mouse click) within a coroutine. **Note:** Geolocation services are available only with an HTTPS connection, except during development when you might use http://localhost. The use of `desiredAccuracyInMeters` and `updateDistanceInMeters` isn't supported since the user device determines those two values.

```csharp
using UnityEngine;
using System.Collections;public class TestLocationService : MonoBehaviour
{
    IEnumerator Start()
    {
        // Check if the user has location service enabled.
        if (!Input.location.isEnabledByUser)
            Debug.Log("Location not enabled on device or app does not have permission to access location");        // Starts the location service.
        
        float desiredAccuracyInMeters = 10f;
        float updateDistanceInMeters = 10f;        Input.location.Start(desiredAccuracyInMeters, updateDistanceInMeters);        // Waits until the location service initializes
        int maxWait = 20;
        while (Input.location.status == LocationServiceStatus.Initializing && maxWait > 0)
        {
            yield return new WaitForSeconds(1);
            maxWait--;
        }        // If the service didn't initialize in 20 seconds this cancels location service use.
        if (maxWait < 1)
        {
            Debug.Log("Timed out");
            yield break;
        }        // If the connection failed this cancels location service use.
        if (Input.location.status == LocationServiceStatus.Failed)
        {
            Debug.LogError("Unable to determine device location");
            yield break;
        }
        else
        {
            // If the connection succeeded, this retrieves the device's current location and displays it in the Console window.
            Debug.Log("Location: " + Input.location.lastData.latitude + " " + Input.location.lastData.longitude + " " + Input.location.lastData.altitude + " " + Input.location.lastData.horizontalAccuracy + " " + Input.location.lastData.timestamp);
        }        // Stops the location service if there is no need to query location updates continuously.
        Input.location.Stop();
    }
}
```
