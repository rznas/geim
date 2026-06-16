<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.DeviceGeneration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

iOS device generation.

```csharp
using UnityEngine;
using UnityEngine.iOS;public class DeviceGenerationExample : MonoBehaviour
{
    string m_DeviceGeneration = "Undefined";    void Start()
    {
        // Check if the device running this is an "iPhone 14 Pro Max"
        if (Device.generation == DeviceGeneration.iPhone14ProMax)
        {
            m_DeviceGeneration = "iPhone 14 Pro Max";
        }
        
        // Check if the device running this is an 'iPad Mini (6th generation)"
        if (Device.generation == DeviceGeneration.iPadMini6Gen)
        {
            m_DeviceGeneration = "iPad Mini (6th generation)";
        }
        
        // Check if the device running this is an "iPod Touch (7th generation)"
        if (Device.generation == DeviceGeneration.iPodTouch7Gen)
        {
            m_DeviceGeneration = "iPod Touch (7th generation)";
        }        // Check if the device running this is an unknown iPhone
        if (Device.generation == DeviceGeneration.iPhoneUnknown)
        {
            m_DeviceGeneration = "Unknown iPhone";
        }
        
        // Check if the device running this is an unknown iPad
        if (Device.generation == DeviceGeneration.iPadUnknown)
        {
            m_DeviceGeneration = "Unknown iPad";
        }
        
        // Check if the device running this is an unknown iPod Touch
        if (Device.generation == DeviceGeneration.iPodTouchUnknown)
        {
            m_DeviceGeneration = "Unknown iPod Touch";
        }
        
        // Output the device generation to the console/device log
        Debug.Log("Device generation: " + m_DeviceGeneration);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| iPhone | iPhone, first generation. |
| iPhone3G | iPhone, second generation. |
| iPhone3GS | iPhone, third generation. |
| iPodTouch1Gen | iPod Touch, first generation. |
| iPodTouch2Gen | iPod Touch, second generation. |
| iPodTouch3Gen | iPod Touch, third generation. |
| iPad1Gen | iPad, first generation. |
| iPhone4 | iPhone, fourth generation. |
| iPodTouch4Gen | iPod Touch, fourth generation. |
| iPad2Gen | iPad, second generation. |
| iPhone4S | iPhone, fifth generation. |
| iPad3Gen | iPad, third generation. |
| iPhone5 | iPhone5. |
| iPodTouch5Gen | iPod Touch, fifth generation. |
| iPadMini1Gen | iPad Mini, first generation. |
| iPad4Gen | iPad, fourth generation. |
| iPhone5C | iPhone 5C. |
| iPhone5S | iPhone 5S. |
| iPadAir1 | iPad Air. |
| iPadMini2Gen | iPad Mini, second generation. |
| iPhone6 | iPhone 6. |
| iPhone6Plus | iPhone 6 plus. |
| iPadMini3Gen | iPad Mini, third generation. |
| iPadAir2 | iPad Air 2. |
| iPhone6S | iPhone 6S. |
| iPhone6SPlus | iPhone 6S Plus. |
| iPadPro1Gen | iPad Pro 12.9", first generation. |
| iPadMini4Gen | iPad Mini, fourth generation. |
| iPhoneSE1Gen | iPhone SE, first generation. |
| iPadPro10Inch1Gen | iPad Pro 9.7", first generation. |
| iPhone7 | iPhone 7. |
| iPhone7Plus | iPhone 7 Plus. |
| iPodTouch6Gen | iPod Touch, sixth generation. |
| iPad5Gen | iPad, fifth generation. |
| iPadPro2Gen | iPad Pro 12.9", second generation. |
| iPadPro10Inch2Gen | iPad Pro 10.5", second generation 10" iPad. |
| iPhone8 | iPhone 8. |
| iPhone8Plus | iPhone 8 Plus. |
| iPhoneX | iPhone X. |
| iPhoneXS | iPhone XS. |
| iPhoneXSMax | iPhone XSMax. |
| iPhoneXR | iPhone XR. |
| iPadPro11Inch | iPad Pro 11", first generation. |
| iPadPro3Gen | iPad Pro 12.9", third generation. |
| iPad6Gen | iPad, sixth generation. |
| iPadAir3Gen | iPad Air, third generation. |
| iPadMini5Gen | iPad Mini, fifth generation. |
| iPhone11 | iPhone 11. |
| iPhone11Pro | iPhone 11 Pro. |
| iPhone11ProMax | iPhone 11 Pro Max. |
| iPodTouch7Gen | iPod Touch, seventh generation. |
| iPad7Gen | iPad, seventh generation. |
| iPhoneSE2Gen | iPhone SE, second generation. |
| iPadPro11Inch2Gen | iPad Pro 11", second generation. |
| iPadPro4Gen | iPad Pro 12.9", fourth generation. |
| iPhone12Mini | iPhone 12 Mini. |
| iPhone12 | iPhone 12. |
| iPhone12Pro | iPhone 12 Pro. |
| iPhone12ProMax | iPhone 12 Pro Max. |
| iPad8Gen | iPad, eighth generation. |
| iPadAir4Gen | iPad Air, fourth generation. |
| iPad9Gen | iPad, ninth generation. |
| iPadMini6Gen | iPad Mini, sixth generation. |
| iPhone13 | iPhone 13. |
| iPhone13Mini | iPhone 13 Mini. |
| iPhone13Pro | iPhone 13 Pro. |
| iPhone13ProMax | iPhone 13 Pro Max. |
| iPadPro5Gen | iPad Pro 12.9", fifth generation. |
| iPadPro11Inch3Gen | iPad Pro 11", third generation. |
| iPhoneSE3Gen | iPhone SE, third generation. |
| iPadAir5Gen | iPad Air, fifth generation. |
| iPhone14 | iPhone 14. |
| iPhone14Plus | iPhone 14 Plus. |
| iPhone14Pro | iPhone 14 Pro. |
| iPhone14ProMax | iPhone 14 Pro Max. |
| iPadPro6Gen | iPad Pro 12.9", sixth generation. |
| iPadPro11Inch4Gen | iPad Pro 11", fourth generation. |
| iPad10Gen | iPad, tenth generation. |
| iPhone15 | iPhone 15. |
| iPhone15Plus | iPhone 15 Plus. |
| iPhone15Pro | iPhone 15 Pro. |
| iPhone15ProMax | iPhone 15 Pro Max. |
| iPhone16 | iPhone 16. |
| iPhone16Plus | iPhone 16 Plus. |
| iPhone16Pro | iPhone 16 Pro. |
| iPhone16ProMax | iPhone 16 Pro Max. |
| iPhone16e | iPhone 16e. |
| iPhone17 | iPhone 17. |
| iPhoneAir | iPhone Air. |
| iPhone17Pro | iPhone 17 Pro. |
| iPhone17ProMax | iPhone 17 Pro Max. |
| iPhone17e | iPhone 17e. |
| iPhoneUnknown | Yet unknown iPhone. |
| iPadUnknown | Yet unknown iPad. |
| iPodTouchUnknown | Yet unknown iPod Touch. |
