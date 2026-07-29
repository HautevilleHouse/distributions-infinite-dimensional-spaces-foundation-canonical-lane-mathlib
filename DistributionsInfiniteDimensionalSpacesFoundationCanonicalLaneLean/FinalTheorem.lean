import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

def ConstrainedDistributionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distributions_endgame (A : AdmissibleClass) : ConstrainedDistributionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
