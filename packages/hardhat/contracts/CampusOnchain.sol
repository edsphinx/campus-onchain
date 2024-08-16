// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { IEAS, AttestationRequest, AttestationRequestData, RevocationRequest, RevocationRequestData } from "@ethereum-attestation-service/eas-contracts/contracts/IEAS.sol";
import { ISchemaRegistry, SchemaRecord, ISchemaResolver } from "@ethereum-attestation-service/eas-contracts/contracts/ISchemaRegistry.sol";
import { NO_EXPIRATION_TIME, EMPTY_UID } from "@ethereum-attestation-service/eas-contracts/contracts/Common.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract CampusOnchain {
  mapping(address => uint) public Participant;
  // mapping(address => uint) public Sponsors;
  // mapping(address => uint) public Organizers;
  // mapping(address => uint) public Facilitators;
  // mapping(address => uint) public Receptors;
  address public eas =  0xaEF4103A04090071165F78D45D83A0C0782c2B2a;
  address public schemaRegistry = 0x55D26f9ae0203EF95494AE4C170eD35f4Cf77797;
  bytes32 public schemaID = 0x70bf24eec37bcd05936ae0a09576601c0aab89c6fe7a8f6423e6116de038b7b4;

  error InvalidEAS();
  IEAS private immutable _eas;
  uint public _test;

  constructor(IEAS __eas) {
        if (address(__eas) == address(0)) {
            revert InvalidEAS();
        }

        // _eas = eas;
    }

  function attest(address participant, bool validate) external returns (bytes32) {
    return
        IEAS(eas).attest(
            AttestationRequest({
                schema: schemaID,
                data: AttestationRequestData({
                    recipient: address(0),
                    expirationTime: NO_EXPIRATION_TIME,
                    revocable: false,
                    refUID: EMPTY_UID,
                    data: abi.encode(participant, validate),
                    value: 0
                })
            })
        );
  }

  function testing() public view returns (uint){
    return _test;
  }
}
