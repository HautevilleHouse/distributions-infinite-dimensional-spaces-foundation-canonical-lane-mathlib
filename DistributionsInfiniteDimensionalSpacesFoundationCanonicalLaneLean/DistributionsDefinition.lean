import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure BasicVectorSpace where
  carrier : Type u
  addition : carrier → carrier → carrier
  zero : carrier
  scalarMul : ℝ → carrier → carrier

def testFunctionSpace : BasicVectorSpace := {
  carrier := ℝ → ℝ
  addition := λ f g x => f x + g x
  zero := λ _ => 0
  scalarMul := λ c f x => c * f x
}

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
