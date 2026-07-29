import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure VesicleFormationPackage (A : AdmissibleClass) where
  cargoCapture : Prop
  coatPolymerization : Prop
  membraneFission : Prop
  vesicleRelease : Prop

structure VesicleFormationEvidence (A : AdmissibleClass) (V : VesicleFormationPackage A) where
  cargoCaptureClosed : V.cargoCapture
  coatPolymerizationClosed : V.coatPolymerization
  membraneFissionClosed : V.membraneFission
  vesicleReleaseClosed : V.vesicleRelease

def VesicleFormationClosed (A : AdmissibleClass) (V : VesicleFormationPackage A) : Prop :=
  V.cargoCapture ∧ V.coatPolymerization ∧ V.membraneFission ∧ V.vesicleRelease

theorem vesicle_formation_closed_from_evidence (A : AdmissibleClass) (V : VesicleFormationPackage A) (E : VesicleFormationEvidence A V) :
    VesicleFormationClosed A V := by
  exact And.intro E.cargoCaptureClosed (And.intro E.coatPolymerizationClosed (And.intro E.membraneFissionClosed E.vesicleReleaseClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse