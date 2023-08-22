local params = {
    minimumLiquidPercentage = math.huge,
    liquidImpedance = 0,
    liquidBuoyancy = 0
}

function update()
    local base = mcontroller.baseParameters()

    params.liquidForce = base.airForce
    params.liquidFriction = base.airFriction
    params.liquidJumpProfile = base.airJumpProfile

    mcontroller.controlParameters(params)
end
