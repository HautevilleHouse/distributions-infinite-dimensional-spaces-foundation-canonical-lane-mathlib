import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure TestFunctionSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothnessStructure : Prop
  compactSupportProperty : Prop
  closedUnderDerivatives : Prop

structure TestFunctionSpaceEvidence (T : TestFunctionSpacePackage) where
  smoothnessStructureClosed : T.smoothnessStructure
  compactSupportPropertyClosed : T.compactSupportProperty
  closedUnderDerivativesClosed : T.closedUnderDerivatives

def TestFunctionSpaceClosed (T : TestFunctionSpacePackage) : Prop :=
  T.smoothnessStructure ∧ T.compactSupportProperty ∧ T.closedUnderDerivatives

theorem test_function_space_closed_from_evidence
    (T : TestFunctionSpacePackage) (E : TestFunctionSpaceEvidence T) :
    TestFunctionSpaceClosed T := by
  exact And.intro E.smoothnessStructureClosed
    (And.intro E.compactSupportPropertyClosed E.closedUnderDerivativesClosed)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse