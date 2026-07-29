import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure TemperedDistributionsPackage where
  schwartzSpace : SchwartzSpace
  dualSpace : Type u
  topology : TopologicalSpace dualSpace
  linearFunctionals : Prop
  continuityCondition : Prop
  fourierTransformDefined : Prop
  linearFunctionalsTerm : linearFunctionals
  continuityConditionTerm : continuityCondition
  fourierTransformDefinedTerm : fourierTransformDefined

structure TemperedDistributionsEvidence (T : TemperedDistributionsPackage) where
  linearFunctionalsClosed : T.linearFunctionals
  continuityConditionClosed : T.continuityCondition
  fourierTransformDefinedClosed : T.fourierTransformDefined

def TemperedDistributionsClosed (T : TemperedDistributionsPackage) : Prop :=
  T.linearFunctionals ∧ T.continuityCondition ∧ T.fourierTransformDefined

theorem tempered_distributions_closed_from_evidence
    (T : TemperedDistributionsPackage) (E : TemperedDistributionsEvidence T) :
    TemperedDistributionsClosed T := by
  exact And.intro E.linearFunctionalsClosed
    (And.intro E.continuityConditionClosed E.fourierTransformDefinedClosed)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse