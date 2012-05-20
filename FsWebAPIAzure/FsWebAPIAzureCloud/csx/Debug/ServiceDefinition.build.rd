﻿<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="FsWebAPIAzureCloud" generation="1" functional="0" release="0" Id="5020d90a-f97a-4a16-877e-dd3c55c8878f" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="FsWebAPIAzureCloudGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="FsWebAPIAzureWebApi:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/FsWebAPIAzureCloud/FsWebAPIAzureCloudGroup/LB:FsWebAPIAzureWebApi:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="FsWebAPIAzureWebApi:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/FsWebAPIAzureCloud/FsWebAPIAzureCloudGroup/MapFsWebAPIAzureWebApi:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="FsWebAPIAzureWebApiInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/FsWebAPIAzureCloud/FsWebAPIAzureCloudGroup/MapFsWebAPIAzureWebApiInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:FsWebAPIAzureWebApi:Endpoint1">
          <toPorts>
            <inPortMoniker name="/FsWebAPIAzureCloud/FsWebAPIAzureCloudGroup/FsWebAPIAzureWebApi/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapFsWebAPIAzureWebApi:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/FsWebAPIAzureCloud/FsWebAPIAzureCloudGroup/FsWebAPIAzureWebApi/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapFsWebAPIAzureWebApiInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/FsWebAPIAzureCloud/FsWebAPIAzureCloudGroup/FsWebAPIAzureWebApiInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="FsWebAPIAzureWebApi" generation="1" functional="0" release="0" software="E:\Dropbox\Dropbox\Dan\Book\Building Web, Cloud, and Mobile Solutions with FSharp\CodeExamples\FsWebAPIAzure\FsWebAPIAzureCloud\csx\Debug\roles\FsWebAPIAzureWebApi" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;FsWebAPIAzureWebApi&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;FsWebAPIAzureWebApi&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/FsWebAPIAzureCloud/FsWebAPIAzureCloudGroup/FsWebAPIAzureWebApiInstances" />
            <sCSPolicyFaultDomainMoniker name="/FsWebAPIAzureCloud/FsWebAPIAzureCloudGroup/FsWebAPIAzureWebApiFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="FsWebAPIAzureWebApiFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="FsWebAPIAzureWebApiInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="c1af101a-e9fa-4396-99cf-e13e77538617" ref="Microsoft.RedDog.Contract\ServiceContract\FsWebAPIAzureCloudContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="e34ee289-6b85-4cd8-9f6a-08c1c26ddf2f" ref="Microsoft.RedDog.Contract\Interface\FsWebAPIAzureWebApi:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/FsWebAPIAzureCloud/FsWebAPIAzureCloudGroup/FsWebAPIAzureWebApi:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>