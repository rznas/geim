<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.ADInterstitialAd.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ADInterstitialAd is a wrapper around the ADInterstitialAd class found in the Apple iAd framework and is only available on iPad.

It provides full-screen advertisements that your iPad application can display to the user.

Please note that this class is a thin wrapper around the iOS native iAD class, so care should be taken when creating/destroying instances of it frequently. If you need to show ads frequently, instead of constantly destroying and recreating the object you should manually call ReloadAd, or create an auto-reloading ADInterstitialAd.

 iOS.ADInterstitialAd class is obsolete. Apple iAD service discontinued.
