import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.TestFunctionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure Convolution (T : TestFunctionSpace) where
  bilinearMap : (T.carrier → ℝ) → (T.carrier → ℝ) → (T.carrier → ℝ)
  associativity : Prop
  commutativity : Prop
  identityElement : T.carrier → ℝ

def ConvolutionEvidence {T : TestFunctionSpace} (C : Convolution T) : Prop :=
  C.associativity ∧ C.commutativity

theorem convolution_evidence_holds {T : TestFunctionSpace} (C : Convolution T) : ConvolutionEvidence C := by
  exact And.intro C.associativity C.commutativity

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
