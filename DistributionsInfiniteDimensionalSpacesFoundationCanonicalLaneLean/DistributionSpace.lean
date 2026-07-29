import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.TestFunctionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure DistributionSpace (T : TestFunctionSpace) where
  continuity : ((T.carrier → ℝ) → ℝ) → Prop
  linearity : Prop
  dualPairing : Prop

def DistributionSpaceEvidence {T : TestFunctionSpace} (D : DistributionSpace T) : Prop :=
  D.continuity ∧ D.linearity ∧ D.dualPairing

theorem distribution_space_evidence_holds {T : TestFunctionSpace} (D : DistributionSpace T) : DistributionSpaceEvidence D := by
  exact And.intro D.continuity (And.intro D.linearity D.dualPairing)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
