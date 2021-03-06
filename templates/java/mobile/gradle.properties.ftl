# Project-wide Gradle settings.

# IDE (e.g. Android Studio) users:
# Gradle settings configured through the IDE *will override*
# any settings specified in this file.

# For more details on how to configure your build environment visit
# http://www.gradle.org/docs/current/userguide/build_environment.html

# Specifies the JVM arguments used for the daemon process.
# The setting is particularly useful for tweaking memory settings.
org.gradle.jvmargs=-Xmx1536m

# When configured, Gradle will run in incubating parallel mode.
# This option should only be used with decoupled projects. More details, visit
# http://www.gradle.org/docs/current/userguide/multi_project_builds.html#sec:decoupled_projects
org.gradle.parallel=true
org.gradle.daemon=true
android.enableAapt2=false

### GENERAL PROPERTIES ###
APP_ID=${configs.packageName}
MIN_SDK_VERSION=${configs.minimumSdkApi}
TARGET_SDK_VERSION=${configs.targetSdkApi}
COMPILE_SDK_VERSION=${configs.targetSdkApi}
BUILD_TOOLS_VERSION=${configs.buildTools}

### DEPENDENCIES VERSIONS ###
<#if configs.dependencies.fabrickey??>
fabricCrashlyticsVersion=2.6.6@aar
</#if>
<#if configs.dependencies.onesignal??>
oneSignalVersion=3.+@aar
</#if>
<#if configs.qualityVerifier??>
verifierVersion=${configs.qualityVerifier.version}
</#if>
<#if configs.dependencies.others??>
<#list configs.dependencies.others>
<#items as dependency>
${dependency.name?lower_case?replace(" ", "")}Version=${dependency.version}
</#items>
</#list>
</#if>

### BUILD PROPERTIES ###
DEV_APP_ID_SUFFIX=.dev
DEV_VERSION_NAME_SUFFIX=-DEV
<#if configs.hasQa!true>
QA_APP_ID_SUFFIX=.qa
QA_VERSION_NAME_SUFFIX=-QA
</#if>                                