Value Filldown,Required,Key LocalInterface (\S+)
Value Required NeighborIndex (\d+)
Value ChassisType (.+)
Value ChassisID (.+)
Value PortIDType (.+)
Value PortID (.+)
Value PortDescription (.+)
Value SystemName (.+)
Value List SystemDescription (.+)
Value SystemCapabilitiesSupported (.+)
Value SystemCapabilitiesEnabled (.+)
Value ExpiredTime (\d+)
Value ManagementAddressType (ipv4|ipv6)
Value ManagementAddress (.+)
Value OID (.+)

Start
  ^${LocalInterface} has \d+ neighbors:
  ^Neighbor index : ${NeighborIndex}
  ^Chassis type\s+:${ChassisType}
  ^Chassis ID\s+:${ChassisID}
  ^Port ID type\s+:${PortIDType}
  ^Port ID\s+:${PortID}
  ^Port description\s+:${PortDescription}
  ^System name\s+:${SystemName}
  ^Huawei Versatile Routing Platform Software
  ^ ${SystemDescription}
  ^System capabilities supported\s*:${SystemCapabilitiesSupported}
  ^System capabilities enabled\s*:${SystemCapabilitiesEnabled}
  ^Management address type\s*:${ManagementAddressType}
  ^Management address\s*:${ManagementAddress}
  ^OID\s*:${OID}
  ^Expired time\s*:${ExpiredTime} s -> Record





