import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure DistributionFunctionalPackage where
  testFunctionSpace : Type u
  topology : TopologicalSpace testFunctionSpace
  linearFunctional : testFunctionSpace → ℝ
  continuity : Prop
  actionWellDefined : Prop
  integrationAgainstTestFunction : Prop

structure DistributionFunctionalEvidence (D : DistributionFunctionalPackage) where
  continuityClosed : D.continuity
  actionWellDefinedClosed : D.actionWellDefined
  integrationAgainstTestFunctionClosed : D.integrationAgainstTestFunction

def DistributionFunctionalClosed (D : DistributionFunctionalPackage) : Prop :=
  D.continuity ∧ D.actionWellDefined ∧ D.integrationAgainstTestFunction

theorem distribution_functional_closed_from_evidence
    (D : DistributionFunctionalPackage) (E : DistributionFunctionalEvidence D) :
    DistributionFunctionalClosed D := by
  exact And.intro E.continuityClosed
    (And.intro E.actionWellDefinedClosed E.integrationAgainstTestFunctionClosed)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse