import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure SchwartzSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  vectorSpace : Module ℝ carrier
  rapidDecayCondition : Prop
  invarianceUnderDerivatives : Prop
  nuclearStructure : Prop
  rapidDecayConditionTerm : rapidDecayCondition
  invarianceUnderDerivativesTerm : invarianceUnderDerivatives
  nuclearStructureTerm : nuclearStructure

structure SchwartzSpaceEvidence (S : SchwartzSpace) where
  rapidDecayConditionClosed : S.rapidDecayCondition
  invarianceUnderDerivativesClosed : S.invarianceUnderDerivatives
  nuclearStructureClosed : S.nuclearStructure

def SchwartzSpaceClosed (S : SchwartzSpace) : Prop :=
  S.rapidDecayCondition ∧ S.invarianceUnderDerivatives ∧ S.nuclearStructure

theorem schwartz_space_closed_from_evidence (S : SchwartzSpace)
    (E : SchwartzSpaceEvidence S) : SchwartzSpaceClosed S := by
  exact And.intro E.rapidDecayConditionClosed
    (And.intro E.invarianceUnderDerivativesClosed E.nuclearStructureClosed)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse