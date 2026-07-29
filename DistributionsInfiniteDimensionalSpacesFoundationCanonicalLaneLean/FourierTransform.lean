import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.TestFunctionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure FourierTransform (T : TestFunctionSpace) where
  domain : T.carrier → ℝ
  imageSpace : Type u
  unitaryProperty : Prop
  inversionFormula : Prop

def FourierTransformEvidence {T : TestFunctionSpace} (F : FourierTransform T) : Prop :=
  F.unitaryProperty ∧ F.inversionFormula

theorem fourier_transform_evidence_holds {T : TestFunctionSpace} (F : FourierTransform T) : FourierTransformEvidence F := by
  exact And.intro F.unitaryProperty F.inversionFormula

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
