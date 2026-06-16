<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NetworkReachability.ReachableViaLocalAreaNetwork.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Network is reachable via WiFi or cable.

```csharp
//Attach this script to a GameObject
//This script checks the device’s ability to reach the internet and outputs it to the console windowusing UnityEngine;public class Example : MonoBehaviour
{
    string m_ReachabilityText;    void Update()
    {
//Output the network reachability to the console window
        Debug.Log("Internet : " + m_ReachabilityText);
        //Check if the device cannot reach the internet
        if (Application.internetReachability == NetworkReachability.NotReachable)
        {
            //Change the Text
            m_ReachabilityText = "Not Reachable.";
        }
        //Check if the device can reach the internet via a carrier data network
        else if (Application.internetReachability == NetworkReachability.ReachableViaCarrierDataNetwork)
        {
            m_ReachabilityText = "Reachable via carrier data network.";
        }
        //Check if the device can reach the internet via a LAN
        else if (Application.internetReachability == NetworkReachability.ReachableViaLocalAreaNetwork)
        {
            m_ReachabilityText = "Reachable via Local Area Network.";
        }
    }
}
```
