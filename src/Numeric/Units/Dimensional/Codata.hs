-- Source: 2010 CODATA recommended values, by way of NIST http://physics.nist.gov/cuu/Constants/index.html

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
module Numeric.Units.Dimensional.Codata

where

import Prelude hiding ((*), (/), (^), pi)
import Numeric.Units.Dimensional
import Numeric.Units.Dimensional.Quantities
import Numeric.Units.Dimensional.SIUnits
import Numeric.NumType.DK.Integers (TypeInt(..),neg4,neg2,neg1,pos2)

atomicMassConstant :: (Fractional a) => Mass a
atomicMassConstant = 1.660538921e-27 *~ kilo gram

avogadroConstant :: (Fractional a) => Quantity (Recip DAmountOfSubstance) a
avogadroConstant = 6.02214129e23 *~ mole^neg1

boltzmannConstant :: (Fractional a) => Entropy a
boltzmannConstant = 1.3806488e-23 *~ (joule / kelvin)

conductanceQuantum :: (Fractional a) => ElectricConductance a
conductanceQuantum = 7.7480917346e-5 *~ siemens

-- Defined this way because it's value is exact if you use exact arithmetic.

electricConstant :: (Floating a) => Permittivity a
electricConstant = _1 / (magneticConstant * speedOfLightInVacuum^pos2)

electronMass :: (Fractional a) => Mass a
electronMass = 9.10938291e-31 *~ kilo gram

electronVolt :: (Fractional a) => Energy a
electronVolt = 1.602176565e-19 *~ joule

elementaryCharge :: (Fractional a) => ElectricCharge a
elementaryCharge = 1.602176565e-19 *~ coulomb

faradayConstant :: (Fractional a) => Quantity (DElectricCharge / DAmountOfSubstance) a
faradayConstant = 96485.3365 *~ (coulomb / mole)

fineStructureConstant :: (Fractional a) => Dimensionless a
fineStructureConstant = 7.2973525698e-3 *~ one

-- Inverse fine structure constant using its standard value?

magneticConstant :: (Floating a) => Permeability a
magneticConstant = pi * (4e-7 *~ (newton * ampere^neg2))

magneticFluxQuantum :: (Fractional a) => MagneticFlux a
magneticFluxQuantum = 2.067833758e-15 *~ weber

molarGasConstant :: (Fractional a) => MolarHeatCapacity a
molarGasConstant = 8.3144621 *~ (joule / (mole * kelvin))

-- Pretty sure this dimension doesn't have a useful name.

newtonianConstantOfGravitation :: (Fractional a) => Quantity ('Dim 'Pos3 'Neg1 'Neg2 'Zero 'Zero 'Zero 'Zero) a
newtonianConstantOfGravitation = 6.67384e-11 *~ (newton * (meter / kilo gram)^pos2)

-- Alias this dimension as DAction? Seems rarely used?

planckConstant :: (Fractional a) => Quantity ('Dim 'Pos2 'Pos1 'Neg1 'Zero 'Zero 'Zero 'Zero) a
planckConstant = 6.62606957e-34 *~ (joule * second)

-- Define reduced planck constant (planck constant over 2 pi) with its standard value?

protonMass :: (Fractional a) => Mass a
protonMass = 1.672621777e-27 *~ kilo gram

-- Define proton-electron mass ratio with its standard value?

rydbergConstant :: (Fractional a) => WaveNumber a
rydbergConstant = 10973731.568539 *~ meter^neg1

speedOfLightInVacuum :: (Fractional a) => Velocity a
speedOfLightInVacuum = 299792458 *~ (meter / second)

standardAccelerationOfGravity :: (Fractional a) => Acceleration a
standardAccelerationOfGravity = 9.80665 *~ (meter / second^pos2)

-- Pretty sure this dimension doesn't have a useful name.

stefanBoltzmannConstant :: (Fractional a) => Quantity ('Dim 'Zero 'Pos1 'Neg3 'Zero 'Neg4 'Zero 'Zero) a
stefanBoltzmannConstant = 5.670373e-8 *~ (watt * meter^neg2 * kelvin^neg4)
