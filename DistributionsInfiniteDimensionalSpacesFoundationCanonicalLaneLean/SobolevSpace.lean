import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure SobolevSpacePackage where
  exponent : ℝ
  differentiabilityOrder : ℕ
  normedSpace : Prop
  completeness : Prop
  embeddingTheorems : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  normedSpaceClosed : S.normedSpace
  completenessClosed : S.completeness
  embeddingTheoremsClosed : S.embeddingTheorems

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.normedSpace ∧ S.completeness ∧ S.embeddingTheorems

theorem sobolev_space_closed_from_evidence
    (S : SobolevSpacePackage) (E : SobolevSpaceEvidence S) :
    SobolevSpaceClosed S := by
  exact And.intro E.normedSpaceClosed
    (And.intro E.completenessClosed E.embeddingTheoremsClosed)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse