{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoMonomorphismRestriction #-}

{- |
   Copyright  : Copyright (C) 2015 Douglas McClean
   License    : BSD3

   Maintainer : douglas.mcclean@gmail.com
   Stability  : Stable

= Summary

This module offers a selection of fundamental physical constants with their values as defined or measured
and published by the <http://www.codata.org/ Committee on Data for Science and Technology> of the International Council for Science.

These values are from the 2014 CODATA recommended values, by way of NIST<#note1 [1]>.

= References

1. #note1# http://physics.nist.gov/cuu/Constants/index.html

-}
module Numeric.Units.Dimensional.Codata

where

import Prelude hiding ((*), (/), (^), pi)
import Numeric.Units.Dimensional
import Numeric.Units.Dimensional.Quantities
import Numeric.Units.Dimensional.SIUnits
import Numeric.NumType.DK.Integers (TypeInt(..),neg4,neg2,neg1,pos2)

-- | One twelfth of the 'Mass' of an unbound atom of carbon-12 at rest and in its ground state.
atomicMassConstant :: (Fractional a) => Mass a
atomicMassConstant = 1.660539040e-27 *~ kilo gram

-- | The number of consitutent particles that are contained in the 'AmountOfSubstance'
-- given by one 'mole'.
avogadroConstant :: (Fractional a) => Quantity (Recip DAmountOfSubstance) a
avogadroConstant = 6.022140857e23 *~ mole^neg1

boltzmannConstant :: (Fractional a) => Entropy a
boltzmannConstant = 1.38064852e-23 *~ (joule / kelvin)

conductanceQuantum :: (Fractional a) => ElectricConductance a
conductanceQuantum = 7.7480917310e-5 *~ siemens

-- | The electric constant, also commonly called the vacuum permittivity or permittivity of free space, is an ideal physical constant,
-- which is the value of the absolute dielectric permittivity of classical vacuum. It is the capability of the vacuum to permit electric
-- field lines. This constant relates the units for electric charge to mechanical quantities such as length and force.
--
-- The value given here is exact if you use exact arithmetic.
electricConstant :: (Floating a) => Permittivity a
electricConstant = _1 / (magneticConstant * speedOfLightInVacuum^pos2)

-- | The rest 'Mass' of an electron.
electronMass :: (Fractional a) => Mass a
electronMass = 9.10938356e-31 *~ kilo gram

-- | The amount of 'Energy' gained (or lost) by the charge of a single electron moved across an electric 'PotentialDifference' of one 'volt'.
electronVolt :: (Fractional a) => Energy a
electronVolt = 1.6021766208e-19 *~ joule

-- | The 'ElectricCharge' carried by a single proton, or equivalently, the negation of the electric charge carried by a single electron
elementaryCharge :: (Fractional a) => ElectricCharge a
elementaryCharge = 1.6021766208e-19 *~ coulomb

-- | The magnitude of 'ElectricCharge' per 'mole' of electrons.
faradayConstant :: (Fractional a) => Quantity (DElectricCharge / DAmountOfSubstance) a
faradayConstant = 96485.33289 *~ (coulomb / mole)

fineStructureConstant :: (Fractional a) => Dimensionless a
fineStructureConstant = 7.2973525664e-3 *~ one

-- | The magnetic constant, also commonly called the vacuum permeability, permeability of free space, or permeability of vacuum is an ideal
-- physical constant, which is the value of magnetic permeability in a classical vacuum. Vacuum permeability is derived from production of
-- a magnetic field by an electric current or by a moving electric charge and in all other formulas for magnetic-field production in a vacuum.
-- In the reference medium of classical vacuum it has an exact exact defined value in the SI system of units.
--
-- The value given here is exact if you use exact arithmetic.
magneticConstant :: (Floating a) => Permeability a
magneticConstant = pi * (4e-7 *~ (newton * ampere^neg2))

magneticFluxQuantum :: (Fractional a) => MagneticFlux a
magneticFluxQuantum = 2.067833831e-15 *~ weber

molarGasConstant :: (Fractional a) => MolarHeatCapacity a
molarGasConstant = 8.3144598 *~ (joule / (mole * kelvin))

-- | According to the Newtonian law of universal gravitation, the attractive force between two bodies is directly proportional to the product of their
-- 'Mass'es, and inversely proportional to the square of the 'Length' of the distance between them. The empirical constant of proportionality is the
-- Newtonian constant of gravitation.
newtonianConstantOfGravitation :: (Fractional a) => Quantity ('Dim 'Pos3 'Neg1 'Neg2 'Zero 'Zero 'Zero 'Zero) a -- Pretty sure this dimension doesn't have a useful name.
newtonianConstantOfGravitation = 6.67408e-11 *~ (newton * (meter / kilo gram)^pos2)

planckConstant :: (Fractional a) => Quantity ('Dim 'Pos2 'Pos1 'Neg1 'Zero 'Zero 'Zero 'Zero) a -- Alias this dimension as DAction? Seems rarely used?
planckConstant = 6.626070040e-34 *~ (joule * second)

-- | The rest 'Mass' of an proton.
protonMass :: (Fractional a) => Mass a
protonMass = 1.672621898e-27 *~ kilo gram

rydbergConstant :: (Fractional a) => WaveNumber a
rydbergConstant = 10973731.568508 *~ meter^neg1

-- | The speed of light in a vacuum is exact because it forms the basis of the definition of the 'meter'.
speedOfLightInVacuum :: (Fractional a) => Velocity a
speedOfLightInVacuum = 299792458 *~ (meter / second)

-- | The nominal gravitational 'Acceleration' of an object in a vacuum near the surface of the Earth, as defined by standard.
-- This value was established by the 3rd General Conference on Weights and Measures in 1901.
standardAccelerationOfGravity :: (Fractional a) => Acceleration a
standardAccelerationOfGravity = 9.80665 *~ (meter / second^pos2)

stefanBoltzmannConstant :: (Fractional a) => Quantity ('Dim 'Zero 'Pos1 'Neg3 'Zero 'Neg4 'Zero 'Zero) a -- Pretty sure this dimension doesn't have a useful name.
stefanBoltzmannConstant = 5.670367e-8 *~ (watt * meter^neg2 * kelvin^neg4)
