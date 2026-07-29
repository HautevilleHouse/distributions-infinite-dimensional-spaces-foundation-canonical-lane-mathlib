import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure DualSpaceContinuityPackage {V : TestFunctionSpace} where
  dualSpace : Type u
  weakStarTopology : TopologicalSpace dualSpace
  continuityOfEvaluation : Prop
  boundednessOfContinuousLinearFunctionals : Prop
  completenessOfDual : Prop
  continuityOfEvaluationTerm : continuityOfEvaluation
  boundednessOfContinuousLinearFunctionalsTerm : boundednessOfContinuousLinearFunctionals
  completenessOfDualTerm : completenessOfDual

structure DualSpaceContinuityEvidence {V : TestFunctionSpace}
    (D : DualSpaceContinuityPackage V) where
  continuityOfEvaluationClosed : D.continuityOfEvaluation
  boundednessOfContinuousLinearFunctionalsClosed : D.boundednessOfContinuousLinearFunctionals
  completenessOfDualClosed : D.completenessOfDual

def DualSpaceContinuityClosed {V : TestFunctionSpace}
    (D : DualSpaceContinuityPackage V) : Prop :=
  D.continuityOfEvaluation ∧ D.boundednessOfContinuousLinearFunctionals ∧
  D.completenessOfDual

theorem dual_space_continuity_closed_from_evidence
    {V : TestFunctionSpace} (D : DualSpaceContinuityPackage V)
    (E : DualSpaceContinuityEvidence D) : DualSpaceContinuityClosed D := by
  exact And.intro E.continuityOfEvaluationClosed
    (And.intro E.boundednessOfContinuousLinearFunctionalsClosed
      E.completenessOfDualClosed)

end DistributionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse