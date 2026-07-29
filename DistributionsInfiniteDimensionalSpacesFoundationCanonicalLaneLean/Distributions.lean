import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure DistributionPackage {T : TopologicalVectorSpacePackage} where
  testFunctionSpace : Type u
  topology : TopologicalSpace testFunctionSpace
  linearMap : testFunctionSpace → ℝ
  continuity : Prop
  linearity : Prop

structure DistributionEvidence {T : TopologicalVectorSpacePackage}
    (D : DistributionPackage T) where
  continuityClosed : D.continuity
  linearityClosed : D.linearity

def DistributionClosed {T : TopologicalVectorSpacePackage}
    (D : DistributionPackage T) : Prop :=
  D.continuity ∧ D.linearity

theorem distribution_closed_from_evidence {T : TopologicalVectorSpacePackage}
    (D : DistributionPackage T) (E : DistributionEvidence D) : DistributionClosed D := by
  exact And.intro E.continuityClosed E.linearityClosed

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse