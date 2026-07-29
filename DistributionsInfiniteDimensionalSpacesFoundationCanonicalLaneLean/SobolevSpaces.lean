import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure SobolevSpace where
  baseSpace : Type u
  measure : MeasureTheory.Measure baseSpace
  smoothnessIndex : ℕ
  integrabilityExponent : ℝ≥1
  normDefined : Prop
  completeness : Prop
  embeddingTheorems : Prop
  normDefinedTerm : normDefined
  completenessTerm : completeness
  embeddingTheoremsTerm : embeddingTheorems

structure SobolevSpaceEvidence (S : SobolevSpace) where
  normDefinedClosed : S.normDefined
  completenessClosed : S.completeness
  embeddingTheoremsClosed : S.embeddingTheorems

def SobolevSpaceClosed (S : SobolevSpace) : Prop :=
  S.normDefined ∧ S.completeness ∧ S.embeddingTheorems

theorem sobolev_space_closed_from_evidence (S : SobolevSpace)
    (E : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro E.normDefinedClosed
    (And.intro E.completenessClosed E.embeddingTheoremsClosed)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse