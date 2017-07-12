package ${configs.packageName}.base.activity;

import ${configs.packageName}.R;

import com.massivedisaster.activitymanager.AbstractFragmentActivity;

<#if configs.dependencies.calligraphy??>
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;
</#if>

/**
 * This activity is fullscreen.
 * The fragments opened, added or replaced will go to fit all the activity.
 */
public class ActivityFullScreen extends AbstractFragmentActivity {
    @Override
    protected int getLayoutResId() {
        return R.layout.activity_fullscreen;
    }

    @Override
    protected int getContainerViewId() {
        return R.id.frmContainer;
    }

    <#if configs.dependencies.calligraphy??>
    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
    </#if>
}
