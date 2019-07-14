package ${escapeKotlinIdentifiers(packageName)}

import ${superClassFqcn}
import android.os.Bundle
<#if (includeCppSupport!false) && generateLayout>
import kotlinx.android.synthetic.main.${layoutName}.*
</#if>

class ${activityClass}Activity : AppBaseActivity<${activityClass}Presenter>(),I${activityClass}View {

override fun injectPresenter(): ${activityClass}Presenter = ${activityClass}Presenter(this)

    override fun bindContentRes(): Int {
        return R.layout.${layoutName}
    }

    override fun initVariable() {

    }

    override fun initView() {
        
    }

    override fun loadData() {

    }
}