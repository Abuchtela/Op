// In EntryPoint.sol
function _executeUserOp(
    UserOperation calldata userOp,
    UserOpInfo memory opInfo
) internal {
    // Add time constraint re-validation
    uint256 validationData = opInfo.validationData;
    bool outOfTimeRange = _isValidationDataExpired(validationData);
    if (outOfTimeRange) {
        revert FailedOp(opInfo.userOpHash, "account: validation data expired during execution");
    }
    
    // Continue with normal execution
    // ...
}


 
