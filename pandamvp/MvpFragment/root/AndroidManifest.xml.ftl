<#import "../../common/shared_manifest_macros.ftl" as manifestMacros>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
        <activity android:name="${packageName}.${activityClass}Activity"
            android:label="${activityTitle}"
            android:configChanges="orientation|keyboardHidden|screenSize"
        </activity>
    </application>

</manifest>
