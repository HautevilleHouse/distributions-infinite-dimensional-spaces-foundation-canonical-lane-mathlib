import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.TestFunctionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure NuclearSpace (T : TestFunctionSpace) where
  countableSeminormsFamily : Prop
  nuclearityCondition : Prop
  montelProperty : Prop

def NuclearSpaceEvidence {T : TestFunctionSpace} (N : NuclearSpace T) : Prop :=
  N.countableSeminormsFamily ∧ N.nuclearityCondition ∧ N.montelProperty

theorem nuclear_space_evidence_holds {T : TestFunctionSpace} (N : NuclearSpace T) : NuclearSpaceEvidence N := by
  exact And.intro N.countableSeminormsFamily (And.intro N.nuclearityCondition N.montelProperty)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
