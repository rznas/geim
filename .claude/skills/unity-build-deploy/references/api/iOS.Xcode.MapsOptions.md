<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.MapsOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes various navigational options that your application can use to receive route data from the Maps app. The values are flags that you can combine using the bitwise OR (`|`) operator.

Use this enum with ProjectCapabilityManager.AddMaps when adding the Maps capability to an Xcode project. Pass one or more combined flags to declare the routing modes your app supports (for example, car, transit, pedestrian). This configures the project's `Info.plist` and capabilities so the app can receive directions from the Maps app for the selected modes.

### Properties

| Property | Description |
| --- | --- |
| None | No Maps routing information is necessary. |
| Airplane | Provide routing information for airplane travel. |
| Bike | Provide routing information for bicycle travel. |
| Bus | Provide routing information for bus travel. |
| Car | Provide routing information for car travel. |
| Ferry | Provide routing information for ferry travel. |
| Pedestrian | Provide routing information for pedestrian travel. |
| RideSharing | Provide routing information for ride sharing travel. |
| StreetCar | Provide routing information for street car travel. |
| Subway | Provide routing information for subway travel. |
| Taxi | Provide routing information for taxi travel. |
| Train | Provide routing information for train travel. |
| Other | Provide routing information for other types of travel. |
