<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <#if !(hasDependency('com.android.support:support-v4'))>
        <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
    </#if>
    <merge from="root/res/values/strings.xml" to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <#if includeLayout>
        <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    <instantiate from="root/src/app_package/SimpleFragment.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/SimplePresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/ISimpleView.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/I${className}View.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${className}Fragment.${ktOrJavaExt}" />
</recipe>
