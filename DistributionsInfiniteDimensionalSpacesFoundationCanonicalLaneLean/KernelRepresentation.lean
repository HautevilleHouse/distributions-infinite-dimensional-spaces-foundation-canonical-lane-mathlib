import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure KernelRepresentationPackage where
  domain : Type u
  target : Type v
  kernel : domain → target → ℝ
  positiveDefiniteness : Prop
  reproducingProperty : Prop

structure KernelRepresentationEvidence (K : KernelRepresentationPackage) where
  positiveDefinitenessClosed : K.positiveDefiniteness
  reproducingPropertyClosed : K.reproducingProperty

def KernelRepresentationClosed (K : KernelRepresentationPackage) : Prop :=
  K.positiveDefiniteness ∧ K.reproducingProperty

theorem kernel_representation_closed_from_evidence (K : KernelRepresentationPackage)
    (E : KernelRepresentationEvidence K) : KernelRepresentationClosed K := by
  exact And.intro E.positiveDefinitenessClosed E.reproducingPropertyClosed

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse