<?xml version="1.0" encoding="utf-8"?>
<resources>

	<#if configs.dependencies.calligraphy??>
	<#if configs.dependencies.calligraphy.fontRegular??>

    <string name="fontRegular">fonts/${configs.dependencies.calligraphy.fontRegular}</string>
	</#if>
	<#if configs.dependencies.calligraphy.fontBold??>

    <string name="fontBold">fonts/${configs.dependencies.calligraphy.fontBold}</string>
	</#if>
	</#if>

</resources>