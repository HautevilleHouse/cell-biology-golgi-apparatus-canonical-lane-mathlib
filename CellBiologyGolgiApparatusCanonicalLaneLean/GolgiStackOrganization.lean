import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GolgiStackPackage where
  cisternaePolarity : Prop
  residentEnzymes : Prop
  matrixProteins : Prop
  pHGradient : Prop

structure GolgiStackEvidence (S : GolgiStackPackage) where
  cisternaePolarityClosed : S.cisternaePolarity
  residentEnzymesClosed : S.residentEnzymes
  matrixProteinsClosed : S.matrixProteins
  pHGradientClosed : S.pHGradient

def GolgiStackClosed (S : GolgiStackPackage) : Prop :=
  S.cisternaePolarity ∧ S.residentEnzymes ∧ S.matrixProteins ∧ S.pHGradient

theorem golgi_stack_closed_from_evidence
    (S : GolgiStackPackage) (E : GolgiStackEvidence S) : GolgiStackClosed S := by
  exact And.intro E.cisternaePolarityClosed
    (And.intro E.residentEnzymesClosed
      (And.intro E.matrixProteinsClosed E.pHGradientClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse