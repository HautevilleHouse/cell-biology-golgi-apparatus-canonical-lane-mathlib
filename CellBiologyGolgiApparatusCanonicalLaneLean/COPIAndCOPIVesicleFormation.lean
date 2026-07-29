import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure COPIAndCOPIVesicleFormationPackage where
  coatomerComplex : Type u
  arfGTPaseRegulation : Type v
  vesicleBuddingMechanism : Prop
  cargoSelection : Prop
  directionDeterminant : Prop

structure COPIAndCOPIVesicleFormationEvidence (P : COPIAndCOPIVesicleFormationPackage) where
  vesicleBuddingMechanismClosed : P.vesicleBuddingMechanism
  cargoSelectionClosed : P.cargoSelection
  directionDeterminantClosed : P.directionDeterminant

def COPIAndCOPIVesicleFormationClosed (P : COPIAndCOPIVesicleFormationPackage) : Prop :=
  P.vesicleBuddingMechanism ∧ P.cargoSelection ∧ P.directionDeterminant

theorem copi_and_copi_vesicle_formation_closed_from_evidence
    (P : COPIAndCOPIVesicleFormationPackage) (E : COPIAndCOPIVesicleFormationEvidence P) :
    COPIAndCOPIVesicleFormationClosed P := by
  exact And.intro E.vesicleBuddingMechanismClosed
    (And.intro E.cargoSelectionClosed E.directionDeterminantClosed)

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse