package ${escapeKotlinIdentifiers(packageName)}

import ${superClassFqcn}
import android.os.Bundle
<#if (includeCppSupport!false) && generateLayout>
import kotlinx.android.synthetic.main.${fragmentName}.*
</#if>

class ${className}Fragment : AppBaseRefreshFragment<${className}Presenter>(),I${className}View {

override fun injectPresenter(): ${className}Presenter = ${className}Presenter(this)

    override fun bindContentRes(): Int {
        return R.layout.${fragmentName}
    }

    override fun initVariable() {

    }

    override fun initView() {
        
    }

    override fun loadData() {

    }
}